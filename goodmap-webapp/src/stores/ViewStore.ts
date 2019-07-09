import { types } from 'mobx-state-tree';
import MapPositionModel from '../models/MapPositionModel';
import AreaModel from '../models/AreaModel';

const ViewStore = types
  .model('ViewStore', {
    selectedArea: types.maybe(types.reference(AreaModel)),
    mapPosition: types.maybe(MapPositionModel),
  })
  .actions(self => {
    /* eslint-disable no-param-reassign */

    // TODO: better solution for any?
    const setArea = (areaId: any) => {
      self.selectedArea = areaId;
      self.mapPosition = {
        lat: 0,
        lng: 0,
      };
    };

    return {
      setArea,
    };
  });

export default ViewStore;
