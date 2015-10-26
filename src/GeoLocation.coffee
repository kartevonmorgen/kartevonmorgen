module.exports =

  # get location (default timeout 15 seconds)
  # with fallback to high accuracy in case that low accuracy is turned off
  # (this is necessary for android with google location services turned off)
  # callback will be called with NULL if position cannot be determined,
  # or with object { coords: { latitude: 1.234, longitude: 5.678 } }
  # ATTENTION: may never call the callback - in case the user does neither
  # confirm nor deny the confirmation dialog that the browser usually displays
  getLocation: (callback, pTimeout=15000) ->
    unless navigator?.geolocation?.getCurrentPosition
      callback null
    else
      successCallback = (position) ->
        if position?.coords?.latitude and position?.coords?.longitude
          callback position
        else
          callback null

      errorCallback = (positionError) ->
        if positionError?.code == 2 # POSITION_UNAVAILABLE - retry with gps
          window.setTimeout ( () ->
            navigator.geolocation.getCurrentPosition successCallback,
              (positionError2) -> callback null,
              {
                enableHighAccuracy: true
                timeout: pTimeout
                maximumAge: Infinity
              }
            ),
            11
        else
          callback null

      navigator.geolocation.getCurrentPosition successCallback,
        errorCallback,
        {
          enableHighAccuracy: false
          timeout: pTimeout
          maximumAge: 24 * 3600000 # 1 day
        }