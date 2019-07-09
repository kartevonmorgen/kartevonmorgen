import { types } from 'mobx-state-tree';

const MapPositionModel = types.model('MapPositionModel', {
  lat: types.number,
  lng: types.number,
});

export default MapPositionModel;
