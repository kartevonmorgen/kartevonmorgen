module.exports = {
  DEFAULT_ZOOM: 13,
  DEFAULT_CENTER: {
    lat: 48.7784,
    lng: 9.1801
  },
  // DEFAULT_BBOX: {
  //   getNorthEast: () => ({
  //     lat: 48.82099347817258,
  //     lng: 9.299583435058596
  //   }),
  //   getSouthWest: () => ({
  //     lat: 48.73547433443503,
  //     lng: 9.116249084472658
  //   })
  // }
  DEFAULT_BBOX: {
    _northEast: {
      lat: 48.82099347817258,
      lng: 9.299583435058596
    },
    _southWest: {
      lat: 48.73547433443503,
      lng: 9.116249084472658
    }
  }
};