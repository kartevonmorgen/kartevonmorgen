export default {

  // get location (default timeout 15 seconds)
  // with fallback to high accuracy in case that low accuracy is turned off
  // (this is necessary for android with google location services turned off)
  // callback will be called with NULL if position cannot be determined,
  // or with object { coords: { latitude: 1.234, longitude: 5.678 } }
  // ATTENTION: may never call the callback - in case the user does neither
  // confirm nor deny the confirmation dialog that the browser usually displays
  getLocation: (callback, pTimeout) => {

    if (pTimeout == null) {
      pTimeout = 15000;
    }

    var ref;

    if (!(
        typeof navigator !== "undefined" && navigator !== null ? (ref = navigator.geolocation) != null ? ref.getCurrentPosition : void 0 : void 0
      )) {
      callback(null);
    } else {

      const successCallback = (position) => {

        if (position != null && position.coords != null) {
          callback(position);
        } else {
          callback(null);
        }
      };

      const errorCallback = (positionError) => {
        if ((positionError != null ? positionError.code : void 0) === 2) {
          // POSITION_UNAVAILABLE - retry with gps
          window.setTimeout((() => {
            navigator
              .geolocation
              .getCurrentPosition(
                successCallback,
                (positionError2) => {
                  callback(null);
                }, {
                  enableHighAccuracy: true,
                  timeout: pTimeout,
                  maximumAge: 2e308
                });

          }), 11);
        } else {
          callback(null);
        }
      };

      navigator
        .geolocation
        .getCurrentPosition(successCallback, errorCallback, {
          enableHighAccuracy: false,
          timeout: pTimeout,
          maximumAge: 24 * 3600000 // 1 day
        });
    }
  }
};