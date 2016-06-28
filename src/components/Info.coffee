# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>

React = require "react"
Pure  = require "react-pure-render/mixin"
T     = React.PropTypes
URLs  = require "../constants/URLs"
pkg           = require "json!../../package.json"
{ div, p, a, h2, h3, h4, br, button, i}  = React.DOM

module.exports = React.createClass

  displayName: "Info"

  mixins: [Pure]

  render: ->
    div className: "info",
      h2 null, "Das Projekt"
      p null,
        """
        Unsere interaktive Karte zeigt dir Orte in deiner Umgebung,
        an denen man sich schon heute für eine Welt von morgen einsetzt.
        """
      p null,
        """
        Du hast eine Initiative, für die du Mitstreiter suchst?
        Du kennst ein Unternehmen, das nachhaltig wirtschaftet?
        """
      p null,
        """
        Auf unserer Website kannst du andere darauf
        aufmerksam machen – und dich so für eine Sache
        einsetzen, die dir persönlich am Herzen liegt.
        """
      p null,
        """
        Wir sind auf der Suche nach vielfältigen Projekten, Initiativen und
        Unternehmen, die den aktuellen sozialen, ökologischen und ökonomischen
        Umbrüchen alternativ entgegen wirken.
        Ihnen möchten wir einen gemeinsamen Online-Auftritt und damit eine
        erhöhte Aufmerksamkeit ermöglichen.
        """

      p null,
        """
        Nach dem Wiki-Prinzip können alle Nutzer, Initiativen und Unternehmen
        sich und andere auf der Karte eintragen und so ihre Mitmenschen
        erreichen.
        Doch von morgen ist mehr als eine Onlineplattform: Regionalpiloten
        sichern vor Ort die Qualität der Karteneinträge und haben neben einer
        redaktionellen Funktion die Aufgabe durch Bildungsveranstaltungen und
        Aktionen den regionalen Austausch zwischen Bürgern, Initiativen und
        Unternehmen zu stärken.
        """

      p null,
        """
        von morgen fragt nach Werten, die unsere Gesellschaft fundieren und
        bewegen.
        Wir zeigen Menschen, die Guten tun, wo es Gutes gibt.
        """
      p null,
        i className: "fa fa-globe"
        " "
        a href: URLs.PROTOTYPE.link, URLs.PROTOTYPE.name
        br null
        i className: "fa fa-facebook"
        " "
        a href: URLs.FACEBOOK.link, URLs.FACEBOOK.name,
        br null
        i className: "fa fa-envelope-o"
        " "
        a href: URLs.MAIL.link, URLs.MAIL.name
        br null
        i className: "fa fa-github"
        " "
        a href: URLs.REPOSITORY.link, URLs.REPOSITORY.name
      br null
      br null
      h2 null, "Wir lieben Open Source!"
      p null,
        "Wir wollen mit gutem Beispiel vorangehen und entwickeln daher"
        "die Software transparent und offen."
        "Den Quellcode des Gemeinschaftsprojekts findest du unter:"
      p null, a href: URLs.REPOSITORY.link, URLs.REPOSITORY.name

      p className: "version",
        "Version dieses Clients: v#{pkg.version}"
      if (sv = @props.server?.version)?
        p className: "version",
          "Version des Servers: v#{sv}"
