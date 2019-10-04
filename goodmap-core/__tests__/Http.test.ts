import axios from 'axios';
import Http from '../src/services/Http';

import sampleEntry from './data/sampleEntry';

jest.mock('axios');
const mockedAxios = axios as jest.Mocked<typeof axios>;

describe('static http service', () => {
  beforeEach(() => {
    mockedAxios.get.mockReset();
    mockedAxios.post.mockReset();
    mockedAxios.put.mockReset();
  });

  it('should have request methods', () => {
    expect(typeof Http.get).toEqual('function');
    expect(typeof Http.post).toEqual('function');
    expect(typeof Http.put).toEqual('function');
  });

  it('should have helper methods', () => {
    expect(typeof Http.getFullApiUrl).toEqual('function');
  });

  it('should resolve the GET request properly', async () => {
    const method = 'get';
    const url = '/foo';
    const data = [
      sampleEntry,
    ];
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
    const response = await Http.get(url);
    expect(mockedAxios[method]).toHaveBeenCalledTimes(1);
    expect(mockedAxios[method]).toHaveBeenCalledWith(Http.getFullApiUrl(url));
    expect(response.data).toEqual([sampleEntry]);
    expect(response.data[0].title).toEqual(sampleEntry.title);
    expect(response.config.method).toEqual(method);
    expect(response.config.url).toEqual(url);
  });

  it('should resolve the POST request properly', async () => {
    const method = 'post';
    const url = '/foo';
    const data = sampleEntry;
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
    const response = await Http.post(url, data);
    expect(mockedAxios[method]).toHaveBeenCalledTimes(1);
    expect(mockedAxios[method]).toHaveBeenCalledWith(Http.getFullApiUrl(url), data);
    expect(response.data).toEqual(data);
    expect(response.data.title).toEqual(data.title);
    expect(response.config.method).toEqual(method);
    expect(response.config.url).toEqual(url);
  });

  it('should resolve the PUT request properly', async () => {
    const method = 'put';
    const url = '/foo';
    const data = sampleEntry;
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
    const response = await Http.put(url, data);
    expect(mockedAxios[method]).toHaveBeenCalledTimes(1);
    expect(mockedAxios[method]).toHaveBeenCalledWith(Http.getFullApiUrl(url), data);
    expect(response.data).toEqual(data);
    expect(response.data.title).toEqual(data.title);
    expect(response.config.method).toEqual(method);
    expect(response.config.url).toEqual(url);
  });
});
