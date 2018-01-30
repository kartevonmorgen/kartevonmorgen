import React    from "react"
import Actions  from "../Actions"
import i18n     from "../i18n"

const t = (key) => {
  return i18n.t("subscribeToBbox." + key);
}

const subscribeToBbox = ({subscriptionExists}) => {
  if(subscriptionExists){
    return ( 
      <div className= "subscribe-to-bbox">
        <h3>{t("changeSubscription.heading")}</h3>
        <p>{t("changeSubscription.text1")}</p>
        <p>{t("changeSubscription.text2")}</p>
      </div>)
  } else {
    return ( 
      <div className= "subscribe-to-bbox">
        <h3>{t("newSubscription.heading")}</h3>
        <p>{t("newSubscription.text1")}</p>
        <p>{t("newSubscription.text2")}</p>
      </div>)
  }
}

module.exports = subscribeToBbox