import { types } from 'mobx-state-tree';

const ViewStore = types.model('ViewStore', {
  page: types.string,
});

export default ViewStore;
