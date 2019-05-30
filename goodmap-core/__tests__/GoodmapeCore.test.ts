import axios from 'axios';

import { getEntriesByIds, getCompactEntriesForBbox } from '../dist';
import GoodmapCore from '../src/GoodmapCore';
import Http from '../src/services/Http';

import sampleCompactEntry from './data/sampleCompactEntry';
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
    expect(typeof GoodmapCore.getCompactEntriesForBbox).toEqual('function');
    expect(typeof GoodmapCore.getUser).toEqual('function');
    expect(typeof GoodmapCore.loginUser).toEqual('function');
    expect(typeof GoodmapCore.logoutUser).toEqual('function');
    expect(typeof GoodmapCore.updateEntry).toEqual('function');
  });

  it('should get compact entries for bbox', async () => {
    const bbox = [
      [48.041824159411995, 11.474876403808596], [48.25005488691924, 11.691169738769533],
    ];
    const bboxParams = `${bbox[0][0]},${bbox[0][1]},${bbox[1][0]},${bbox[1][1]}`;
    const method = 'get';
    const url = `/search?bbox=${bboxParams}`;
    const data = {
      invisible: [],
      visible: [sampleCompactEntry],
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
    const response = await getCompactEntriesForBbox(bbox);
    expect(mockedAxios[method]).toHaveBeenCalledTimes(1);
    expect(mockedAxios[method]).toHaveBeenCalledWith(Http.getFullApiUrl(url));
    expect(response.data).toEqual(data);
    expect(response.data.invisible).toHaveLength(0);
    expect(response.data.visible).toHaveLength(1);
    expect(response.data.visible[0].id).toEqual(sampleCompactEntry.id);
    expect(response.config.method).toEqual(method);
    expect(response.config.url).toEqual(url);
  });

  it('should get entries for ids', async () => {
    const ids = ['cd1ac0d81679479fb85acdf59ce69a01'];
    const idsParams = ids.join(',');
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
    const response = await getEntriesByIds(ids);
    expect(mockedAxios[method]).toHaveBeenCalledTimes(1);
    expect(mockedAxios[method]).toHaveBeenCalledWith(Http.getFullApiUrl(url));
    expect(response.data).toEqual(data);
    expect(response.data).toHaveLength(1);
    expect(response.data[0].id).toEqual(ids[0]);
    expect(response.config.method).toEqual(method);
    expect(response.config.url).toEqual(url);
  });
});
