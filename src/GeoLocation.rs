// TODO: module.exports = {
// TODO: 
// TODO:   // get location (default timeout 15 seconds)
// TODO:   // with fallback to high accuracy in case that low accuracy is turned off
// TODO:   // (this is necessary for android with google location services turned off)
// TODO:   // callback will be called with NULL if position cannot be determined,
// TODO:   // or with object { coords: { latitude: 1.234, longitude: 5.678 } }
// TODO:   // ATTENTION: may never call the callback - in case the user does neither
// TODO:   // confirm nor deny the confirmation dialog that the browser usually displays
// TODO:   getLocation: (callback, pTimeout) => {
// TODO: 
// TODO:     if (pTimeout == null) {
// TODO:       pTimeout = 15000;
// TODO:     }
// TODO: 
// TODO:     var ref;
// TODO: 
// TODO:     if (!(
// TODO:         typeof navigator !== "undefined" && navigator !== null ? (ref = navigator.geolocation) != null ? ref.getCurrentPosition : void 0 : void 0
// TODO:       )) {
// TODO:       callback(null);
// TODO:     } else {
// TODO: 
// TODO:       const successCallback = (position) => {
// TODO: 
// TODO:         if (position != null && position.coords != null) {
// TODO:           callback(position);
// TODO:         } else {
// TODO:           callback(null);
// TODO:         }
// TODO:       };
// TODO: 
// TODO:       const errorCallback = (positionError) => {
// TODO:         if ((positionError != null ? positionError.code : void 0) === 2) {
// TODO:           // POSITION_UNAVAILABLE - retry with gps
// TODO:           window.setTimeout((() => {
// TODO:             navigator
// TODO:               .geolocation
// TODO:               .getCurrentPosition(
// TODO:                 successCallback,
// TODO:                 (positionError2) => {
// TODO:                   callback(null);
// TODO:                 }, {
// TODO:                   enableHighAccuracy: true,
// TODO:                   timeout: pTimeout,
// TODO:                   maximumAge: 2e308
// TODO:                 });
// TODO: 
// TODO:           }), 11);
// TODO:         } else {
// TODO:           callback(null);
// TODO:         }
// TODO:       };
// TODO: 
// TODO:       navigator
// TODO:         .geolocation
// TODO:         .getCurrentPosition(successCallback, errorCallback, {
// TODO:           enableHighAccuracy: false,
// TODO:           timeout: pTimeout,
// TODO:           maximumAge: 24 * 3600000 // 1 day
// TODO:         });
// TODO:     }
// TODO:   }
// TODO: };
