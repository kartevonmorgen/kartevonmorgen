import GoodmapCore from './GoodmapCore';

export * from './interfaces';

export const {
  createEntry,
  getEntriesByIds,
  getCompactEntriesForBbox,
  getUser,
  loginUser,
  logoutUser,
  updateEntry,
} = GoodmapCore;
