# Copyright (c) 2015 - 2016 Markus Kohlhase <mail@markus-kohlhase.de>

React = require "react"
Pure  = require "react-pure-render/mixin"
URLs  = require "../constants/URLs"

{ div, p, a,  h3, h4, br, button, i, ul, li }  = React.DOM

module.exports = React.createClass

  displayName: "Imprint"

  mixins: [Pure]

  render: ->
    div className: "info",

      h3 null, "Kontakt"
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

      h3 null, "Impressum"

      h4 null, "Verantwortlich für den Inhalt nach § 55 Abs. 2 RStV:"

      p null,
        "T. Thao Tran"
        br null
        "Gleimstraße 27"
        br null
        "10437 Berlin"
        br null
        a {href:"mailto:thao.tran@kartevonmorgen.org" },
          "thao.tran@kartevonmorgen.org"

      h4 null, "Konzept"
        "T. Thao Tran"
        br null
        "Gleimstraße 27"
        br null
        "10437 Berlin"
        br null
        a {href:"mailto:thao.tran@kartevonmorgen.org" },
          "thao.tran@kartevonmorgen.org"

      h4 null, "Design"
        "Anja Dannemann"
        br null
        a {href:"mailto:anja.dannemann@kartevonmorgen.org" },
          "anja.dannemann@kartevonmorgen.org"

      h4 null, "Illustrationen"
        "Lisa Tegtmeier"
        br null
        "www.lisategtmeier.de"

      h4 null, "Umsetzung & Programmierung"

      p null,
        "Markus Kohlhase"
        br null
        "Julius-Hölder-Str. 48"
        br null
        "70597 Stuttgart"
        br null
        a {href:"mailto:markus@kartevonmorgen.org"}, "markus@kartevonmorgen.org"



      h4 null, "Haftungsausschluss"

      p null,
        """
        Sämtliche über die Website veröffentlichten Produkt- und Firmeninformationen oder sonstige Informationen werden von den Betreibern der Karte von morgen nach bestem Wissen zur Verfügung gestellt. All diese Informationen begründen jedoch soweit gesetzlich zulässig, weder eine Garantie, Zusage oder Haftung seitens der Betreiber der Karte von morgen, noch entbinden sie den Nutzer von der Durchführung eigener Untersuchungen, Tests und dem Einholen weiterer Informationen.
       Wir übernehmen keinerlei Gewähr für die Aktualität, Richtigkeit und Vollständigkeit der bereitgestellten Informationen auf unserer Website. Haftungsansprüche gegen uns, welche sich auf Schäden materieller oder ideeller Art beziehen, die durch die Nutzung oder Nichtnutzung der dargebotenen Informationen bzw. durch die Nutzung fehlerhafter und unvollständiger Informationen verursacht wurden, sind grundsätzlich ausgeschlossen, sofern unsererseits kein nachweislich vorsätzliches oder grob fahrlässiges Verschulden vorliegt. Alle Angebote sind freibleibend und unverbindlich. Wir behalten uns ausdrücklich vor, Teile der Seiten oder das gesamte Angebot ohne gesonderte Ankündigung zu verändern, zu ergänzen, zu löschen oder die Veröffentlichung zeitweise oder endgültig einzustellen.
       """

      h4 null, "Verweise und Links"

      p null,
        """
        Bei direkten oder indirekten Verweisen auf fremde Webseiten (“Hyperlinks”), die außerhalb unseres Verantwortungsbereiches liegen, würde eine Haftungsverpflichtung ausschließlich in dem Fall in Kraft treten, in dem wir von den Inhalten Kenntnis haben und es uns technisch möglich und zumutbar wäre, die Nutzung im Falle rechtswidriger Inhalte zu verhindern. Wir erklären hiermit ausdrücklich, dass zum Zeitpunkt der Linksetzung keine illegalen Inhalte auf den zu verlinkenden Seiten erkennbar waren. Auf die aktuelle und zukünftige Gestaltung, die Inhalte oder die Urheberschaft der verlinkten/verknüpften Seiten haben wir keinerlei Einfluss. Deshalb distanzieren wir uns hiermit ausdrücklich von allen Inhalten aller verlinkten/verknüpften Seiten, die nach der Linksetzung verändert wurden. Diese Feststellung gilt für alle innerhalb des eigenen Internetangebotes gesetzten Links und Verweise sowie für Fremdeinträge in von uns eingerichteten Gästebüchern, Diskussionsforen, Linkverzeichnissen, Mailinglisten und in allen anderen Formen von Datenbanken, auf deren Inhalt externe Schreibzugriffe möglich sind. Für illegale, fehlerhafte oder unvollständige Inhalte und insbesondere für Schäden, die aus der Nutzung oder Nichtnutzung solcherart dargebotener Informationen entstehen, haftet allein der Anbieter der Seite, auf welche verwiesen wurde, nicht derjenige, der über Links auf die jeweilige Veröffentlichung lediglich verweist. Sollten unsere Verweise zu gesetzwidrigen, jugendgefährdenden oder aus anderen Gründen abzulehnenden Darstellungen führen, bitten wir um entsprechende Benachrichtigung.
       """

      h4 null, "Urheber- und Kennzeichenrecht"

      p null,
        """
        Wir sind bestrebt, in allen Publikationen die Urheberrechte der verwendeten Bilder, Grafiken, Tondokumente, Videosequenzen und Texte zu beachten, von uns selbst erstellte Bilder, Grafiken, Tondokumente, Videosequenzen und Texte zu nutzen oder auf lizenzfreie Grafiken, Tondokumente, Videosequenzen und Texte zurückzugreifen. Alle innerhalb des Internetangebotes genannten und ggf. durch Dritte geschützten Marken- und Warenzeichen unterliegen uneingeschränkt den Bestimmungen des jeweils gültigen Kennzeichenrechts und den Besitzrechten der jeweiligen eingetragenen Eigentümer. Allein aufgrund der bloßen Nennung ist nicht der Schluss zu ziehen, dass Markenzeichen nicht durch Rechte Dritter geschützt sind! Das Copyright für veröffentlichte, von uns selbst erstellte Objekte bleibt allein uns vorbehalten. Eine Vervielfältigung oder Verwendung solcher Grafiken, Tondokumente, Videosequenzen und Texte in anderen elektronischen oder gedruckten Publikationen ist ohne unsere ausdrückliche Zustimmung nicht gestattet.
       """

      h4 null, "Hinweis für Abmahnversuche"
      p null,
        """
        Keine Abmahnung ohne vorherigen Kontakt! Sollte der Inhalt oder die Aufmachung dieser Seiten fremde Rechte Dritter oder gesetzliche Bestimmungen verletzen, so bitten wir um eine entsprechende Nachricht ohne Kostennote. Die Beseitigung einer möglicherweise von diesen Seiten ausgehenden Schutzrechts-Verletzung durch Schutzrecht-Inhaber/innen selbst darf nicht ohne unsere Zustimmung stattfinden. Wir garantieren, dass die zu Recht beanstandeten Passagen unverzüglich entfernt werden, ohne dass von Ihrer Seite die Einschaltung eines Rechtsbeistandes erforderlich ist. Dennoch von Ihnen ohne vorherige Kontaktaufnahme ausgelöste Kosten werden wir vollumfänglich zurückweisen und gegebenenfalls Gegenklage wegen Verletzung vorgenannter Bestimmungen einreichen. Wir bitten hierfür um Ihr Verständnis. 
        """

      h4 null, "Datenschutz"
      p null,
        """
        Disclaimer:Diese Zusammenfassung ist nicht Bestandteil der Datenschutzrichtlinie und ist kein rechtsgültiges Dokument. Sie stellt lediglich eine praktische Hilfe zum Verständnis des Volltextes der Datenschutzrichtlinie dar. Betrachte sie als ein benutzerfreundlicher Zugang zu unserer Datenschutzrichtlinie.
        """

      p null,
       """
       Da wir der Ansicht sind, dass du nicht verpflichtet sein solltest, personenbezogene Daten bereitzustellen, um am freien Wissensaustausch teilzunehmen, kannst du:
       """
      ul null,
        li null,
          "alle Seiten der Karte von morgen ohne Einrichtung eines Benutzerkontos lesen, bearbeiten oder nutzen;"
        li null,
          "ein Benutzerkonto ohne Angabe deiner E-Mail-Adresse oder deines echten Namens erstellen."

      p null,
        """
        Da wir verstehen wollen, wie die Seite der Karte von morgen genutzt wird, damit wir sie besser an deine Bedürfnisse anpassen können, erfassen wir einige Daten, wenn du:
        """
      ul null,
        li null, "öffentliche Beiträge tätigst;"
        li null, "ein Benutzerkonto einrichtest oder deine Benutzerseite aktualisierst;"
        li null, "die Seite der Karte von morgen nutzt;"
        li null, "uns E-Mails sendest oder an einer Umfrage teilnimmst oder Feedback gibst."

      p null,
        "Wir verpflichten uns:"
      ul null,
        li null,
          "in dieser Datenschutzrichtlinie zu beschreiben, wie deine Daten verwendet oder weitergegeben werden können;"
        li null,
          "angemessene Maßnahmen zu ergreifen, um deine Daten sicher aufzubewahren;"
        li null,
          "deine Daten niemals zu verkaufen oder sie zu Marketingzwecken an Dritte weiterzugeben;"
        li null,
          "deine Daten nur unter einigen wenigen Umständen weiterzugeben, zum Beispiel, um die Seite der Karte von morgen zu verbessern, gesetzlichen Bestimmungen zu genügen oder um dich und andere zu schützen;"
        li null,
          "deine Daten nur für den kürzestmöglichen Zeitraum zu speichern, der zu Zwecken der Wartung, des Verständnisses und der Verbesserung der Karte von morgen sowie zur Einhaltung unserer gesetzlichen Pflichten erforderlich ist."

      p null,
        "Bitte beachte:"

      ul null,
        li null,
          "Inhalte, die du der Karte von morgen hinzufügst oder Änderungen, die du vornimmst, sind öffentlich und dauerhaft verfügbar."
        li null,
          "Wenn du Inhalte hinzufügst oder Änderungen an den Eintragungen der Karte von morgen vornimmst, ohne dich anzumelden, werden die entsprechenden Inhalte bzw. Änderungen öffentlich und dauerhaft der zur Änderungszeit benutzten IP-Adresse – und nicht einem Benutzernamen – zugeordnet."
        li null,
          "Unsere aus freiwilligen Bearbeitenden und Beitragenden bestehende Benutzergemeinschaft ist ein sich selbst überwachendes Organ. Bestimmte Benutzer der Karte von morgen mit administrativen Rechten, die von der Community ausgewählt werden, nutzen Werkzeuge, die ihnen beschränkten Zugang zu nichtöffentlichen Informationen über kürzlich getätigte Beiträge gewähren, damit sie die Karte von morgen schützen und Richtlinien durchsetzen können."

      p null,
        "Zum Schutz der Karte von morgen und anderer Benutzer darfst du die Karte von morgen Webseiten nicht benutzen, wenn du dieser Datenschutzrichtlinie nicht zustimmst."

      p null,
       "Datenschutzrichtlinie"
       br null
       """
       Sofern innerhalb des Internetangebotes die Möglichkeit zur Eingabe persönlicher oder geschäftlicher Daten (Emailadressen, Namen, Anschriften) besteht, so erfolgt die Preisgabe dieser Daten seitens des Nutzers auf ausdrücklich freiwilliger Basis. Die Inanspruchnahme und Bezahlung aller angebotenen Dienste ist – soweit technisch möglich und zumutbar – auch ohne Angabe solcher Daten bzw. unter Angabe anonymisierter Daten oder eines Pseudonyms gestattet. Die Nutzung der im Rahmen des Impressums oder vergleichbarer Angaben veröffentlichten Kontaktdaten wie Postanschriften, Telefon- und Faxnummern sowie Emailadressen durch Dritte zur Übersendung von nicht ausdrücklich angeforderten Informationen ist nicht gestattet. Rechtliche Schritte gegen die Versender von sogenannten Spam-Mails bei Verstößen gegen dieses Verbot sind ausdrücklich vorbehalten.
       """

      p null,
       "Quellen u.a.:"
       br null
       "Haftungsausschluss von Haftungsausschluss-Vorlage.de und Datenschutzgesetz.de"
