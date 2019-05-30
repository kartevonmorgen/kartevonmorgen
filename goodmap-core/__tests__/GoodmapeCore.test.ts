import axios from 'axios';

import { getEntriesByIds, getEntryIdsForBbox } from '../dist';
import GoodmapCore from '../src/GoodmapCore';
import Http from '../src/services/Http';

import sampleBboxIds from './data/sampleBboxIds';
import sampleEntry from './data/sampleEntry';

jest.mock('axios');
const mockedAxios = axios as jest.Mocked<typeof axios>;

describe('static goodmap core', () => {
  beforeEach(() => {
    mockedAxios.get.mockReset();
    mockedAxios.post.mockReset();
    mockedAxios.put.mockReset();
  });

  it('should have required core methods', () => {
    expect(typeof GoodmapCore.createEntry).toEqual('function');
    expect(typeof GoodmapCore.getEntriesByIds).toEqual('function');
    expect(typeof GoodmapCore.getEntryIdsForBbox).toEqual('function');
    expect(typeof GoodmapCore.getUser).toEqual('function');
    expect(typeof GoodmapCore.loginUser).toEqual('function');
    expect(typeof GoodmapCore.logoutUser).toEqual('function');
    expect(typeof GoodmapCore.updateEntry).toEqual('function');
  });

  it('should get entry ids for a given bbox', async () => {
    const bbox = [
      [48.041824159411995, 11.474876403808596], [48.25005488691924, 11.691169738769533],
    ];
    const bboxParams = `${bbox[0][0]},${bbox[0][1]},${bbox[1][0]},${bbox[1][1]}`;
    const method = 'get';
    const url = `/search?bbox=${bboxParams}`;
    const data = {
      invisible: [],
      visible: sampleBboxIds,
    };
    mockedAxios[method].mockRejectedValue('Network error: Something went wrong');
    mockedAxios[method].mockResolvedValue({
      status: 200,
      statusText: '',
      headers: {},
      config: {
        method,
        url,
      },
      data,
    });
    const response = await getEntryIdsForBbox(bbox);
    expect(mockedAxios[method]).toHaveBeenCalledTimes(1);
    expect(mockedAxios[method]).toHaveBeenCalledWith(Http.getFullApiUrl(url));
    expect(response.data).toEqual(data);
    expect(response.data.visible[0]).toEqual(sampleBboxIds[0]);
    expect(response.config.method).toEqual(method);
    expect(response.config.url).toEqual(url);
  });

  it('should get an array of entries for a given bbox', async () => {
    const idsParams = sampleBboxIds.join(',');
    const method = 'get';
    const url = `/entries/${idsParams}`;
    const data = [sampleEntry];
    mockedAxios[method].mockRejectedValue('Network error: Something went wrong');
    mockedAxios[method].mockResolvedValue({
      status: 200,
      statusText: '',
      headers: {},
      config: {
        method,
        url,
      },
      data,
    });
    const response = await getEntriesByIds(sampleBboxIds);
    expect(mockedAxios[method]).toHaveBeenCalledTimes(1);
    expect(mockedAxios[method]).toHaveBeenCalledWith(Http.getFullApiUrl(url));
    expect(response.data).toEqual(data);
    expect(response.data[0].title).toEqual(sampleEntry.title);
    expect(response.config.method).toEqual(method);
    expect(response.config.url).toEqual(url);
  });
});
