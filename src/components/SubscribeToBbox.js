import React    from "react"
import Actions  from "../Actions"

const subscribeToBbox = ({subscriptionExists}) => {
  if(subscriptionExists){
    return ( 
      <div className= "subscribe-to-bbox">
        <h3>Dein Abonnement</h3>
        <p>Du hast einen Kartenausschnitt abonniert und wirst bei neuen Einträgen und 
        Änderungen in diesem Bereich per Email benachrichtigt.</p>

        <p>Wenn du den abonnierten Kartenausschnitt ändern möchtest navigiere 
        zu dem Kartenausschnitt der dich interessiert und klicke dann auf "ändern".</p>
      </div>)
  } else {
    return ( 
      <div className= "subscribe-to-bbox">
        <h3>Kartenausschnitt abonnieren</h3>
        <p>Navigiere zu dem Kartenausschnitt der dich interessiert und klicke auf 
        "abonnieren". Dann wirst du per Email über neue Einträge und Änderungen
        an Einträgen in dieser Region auf dem Laufenden gehalten.</p>

        <p>Du kannst das Abonnement jederzeit wieder hier abbestellen oder ändern.</p>
      </div>)
  }
}

module.exports = subscribeToBbox