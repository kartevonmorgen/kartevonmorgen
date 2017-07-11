import React    from "react"
import Actions  from "../Actions"

const SubscribeToMapView = () => {
  return ( 
    <div className= "subscribe-to-map-view">
      <h3>Kartenausschnitt abonnieren</h3>
      <p>Navigiere zu dem Kartenausschnitt der dich interessiert und 
      klicke dann auf "Kartenausschnitt abonnieren".</p>
      <p>Du wirst dann per Email über neue Einträge und Änderungen in diesem
      Kartenbereich informiert. Dieses Abonnement kannst du jederzeit wieder 
      abbestellen.</p>
      <br/>
      <br/>
      <div className="err">DIESES FEATURE IST GERADE NOCH IN DER ENTWICKLUNG...</div>
    </div>)
}

module.exports = SubscribeToMapView