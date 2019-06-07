import EntryStore from './EntryStore';
import {getType, cast, Instance} from 'mobx-state-tree';

it('creates with default snapshot', () => {
  const store = EntryStore.create();
  expect(store.entries).toHaveLength(0);
});

it('can add entry', () => {
  const store = EntryStore.create();

  store.addEntry({
    id: '0asedf',
    title: 'Ingos Schlemmertempel',
  });

  expect(store.entries).toHaveLength(1);
});

it('can add extended entry', () => {
  const store = EntryStore.create();

  store.addEntry({
    id: '0asedf',
    title: 'Bennes Schokoladenfabrik',
    entryTypes: {
      extended: {
        extendedKey: 'pizza',
      },
    },
  });

  expect(store.entries).toHaveLength(1);
  expect(store.entries[0].entryTypes!.extended).toBeTruthy();
});

it('can shape entryTypes to Models', () => {
  const store = EntryStore.create();

  store.addEntry({
    id: '0asedf',
    title: 'Bennes Schokoladenfabrik',
    entryTypes: {
      extended: {
        extendedKey: 'pizza',
        // @ts-ignore
        someOtherKey: 'banana',
      },
    },
  });

  expect(getType(store.entries[0].entryTypes!.extended).name).toBe('EntryExtendedModel');
});
