import { AxiosPromise } from 'axios';
import { IEntry, ISearchResult, IUserProfile } from './interfaces';
import Http from './services/Http';

export default class GoodmapCore {
  /**
   * Get compact entries separated by visibility for bbox
   * @param bbox
   * @param tags
   */
  public static getCompactEntriesForBbox(
    bbox: number[][],
    tags?: string[],
  ): AxiosPromise<ISearchResult> {
    const params: string[] = [];
    params.push(`bbox=${bbox[0][0]},${bbox[0][1]},${bbox[1][0]},${bbox[1][1]}`);
    if (tags) params.push(`tags=${tags.join(',')}`);
    return Http.get(`/search?${params.join('&')}`);
  }

  /**
   * Create entry
   * @param entry
   */
  public static createEntry(entry: IEntry): AxiosPromise<IEntry> {
    return Http.post('/entries/', entry);
  }

  /**
   * Get entries by specific ids
   * @param ids
   */
  public static getEntriesByIds(ids: string[]): AxiosPromise<IEntry[]> {
    const idsParams = ids.join(',');
    return Http.get(`/entries/${idsParams}`);
  }

  /**
   * Get user profile
   * @param username
   */
  public static getUser(username: string): AxiosPromise<IUserProfile> {
    return Http.get(`/users/${username}`);
  }

  /**
   * Login user
   * @param username
   * @param password
   */
  public static loginUser(username: string, password: string): AxiosPromise<null> {
    return Http.post('/login', { username, password });
  }

  /**
   * Logout
   */
  public static logoutUser(): AxiosPromise<null> {
    return Http.post('/logout', null);
  }

  /**
   * Update entry
   * @param id
   * @param entry
   */
  public static updateEntry(id: string, entry: IEntry): AxiosPromise<IEntry> {
    return Http.put(`/entries/${id}`, entry);
  }
}
