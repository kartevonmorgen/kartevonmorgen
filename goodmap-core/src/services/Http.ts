import axios, { AxiosPromise } from 'axios';
import { API_URL, API_VERSION } from '../constants/api';
import IEntry from '../interfaces/IEntry';
import IUserCredentials from '../interfaces/IUserCredentials';

export default class Http {
  /**
   * Get full API url
   * @param url
   */
  public static getFullApiUrl(url: string): string {
    return `${API_URL}${API_VERSION}${url}`;
  }

  /**
   * GET request
   * @param url
   */
  public static get(url: string): AxiosPromise {
    return axios.get(this.getFullApiUrl(url));
  }

  /**
   * POST request
   * @param url
   * @param data
   */
  public static post(
    url: string,
    data: IEntry | IUserCredentials | null,
  ): AxiosPromise {
    return axios.post(this.getFullApiUrl(url), data);
  }

  /**
   * PUT request
   * @param url
   * @param data
   */
  public static put(url: string, data: IEntry): AxiosPromise {
    return axios.put(this.getFullApiUrl(url), data);
  }
}
