import { AxiosPromise } from 'axios';
import IEntry from './interfaces/IEntry';
import ISearchResult from './interfaces/ISearchResult';
import IUserProfile from './interfaces/IUserProfile';
import Http from './services/Http';

export default class GoodmapCore {
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
   * Get entry ids separated by visibility for bbox
   * @param bbox
   */
  public static getEntryIdsForBbox(
    bbox: Array<number[]>,
  ): AxiosPromise<ISearchResult> {
    const bboxParams = `${bbox[0][0]},${bbox[0][1]},${bbox[1][0]},${bbox[1][1]}`;
    return Http.get(`/search?bbox=${bboxParams}`);
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
