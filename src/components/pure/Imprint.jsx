import React     from "react"
import * as URLs from "../../constants/URLs"
import i18n      from "../../i18n";

import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'

const t = (key) => i18n.t("imprint." + key)

const Imprint = () =>

  <div className="info">
    <h3>{t("contact")}</h3>
    <p>
      <FontAwesomeIcon icon="globe-africa" /> <a target="_blank" href = { URLs.APP.link } >{ URLs.APP.name }</a>
      <br />
      <FontAwesomeIcon icon={['fab', 'facebook']} /> <a target="_blank" href = { URLs.FACEBOOK.link } >{ URLs.FACEBOOK.name }</a>
      <br />
      <FontAwesomeIcon icon="envelope" /> <a target="_blank" href = { URLs.MAIL.link } >{ URLs.MAIL.name }</a>
      <br />
      <FontAwesomeIcon icon={['fab', 'github']} /> <a target="_blank" href = { URLs.REPOSITORY.link } >{ URLs.REPOSITORY.name }</a>
    </p>
    <h3>{t("imprint")}</h3>
      <h4>{t("heading1")}</h4>
        Ideen³ e.V. // Räume für Entwicklung
        <br />
        {t("representedByChair")} Helmut Wolman
        <br />
        Knipsgasse 43, 54337 Alfter
        <br />
        <a target="_blank" href = "http://ideenhochdrei.org">Ideenhochdrei.org</a>
        <br />
        <a href = "mailto:info@ideenhochdrei.org">
          info@ideenhochdrei.org
        </a>

      <h4 className="imprint-heading">{t("heading2")}</h4>
        {t("kvmTeamRepresentedBy")}
        <br />
        Helmut Wolman
        <br />
        Tel: 0049 15734448245
        <br />
        <a href = "mailto:helmut.wolman@kartevonmorgen.org">
          helmut.wolman@kartevonmorgen.org
        </a>

      <h4 className="imprint-heading">{t("heading3")}</h4>
        {t("kvmTeamRepresentedBy")}
        <br />
        Louisa Pieper
        <br />
        <a href = "mailto:Louisa@kartevonmorgen.org">
          Louisa@kartevonmorgen.org
        </a>

      <h4 className="imprint-heading">{t("heading4")}</h4>
        Anja Dannemann
        <br />
        <a href= "mailto:anja.dannemann@kartevonmorgen.org">
          anja.dannemann@kartevonmorgen.org
        </a>

      <h4 className="imprint-heading">{t("heading5")}</h4>
        Laura Leichtle & Lisa Tegtmeier
        <br />
        <a target="_blank" href = "http://www.lisategtmeier.de">
         www.lisategtmeier.de
        </a>

      <h4 className="imprint-heading">{t("heading6")}</h4>
        <a target="_blank" href="https://slowtec.de/">slowtec GmbH</a>
        <br />
        Friedrichsberg 55
        <br />
        70567 Stuttgart
        <br />
        <a href = "mailto:markus@kartevonmorgen.org">
          markus@kartevonmorgen.org
        </a>

    <h4>Haftungsausschluss</h4>
    <p>
      Sämtliche über die Website veröffentlichten Produkt- und
      Firmeninformationen oder sonstige Informationen werden von den Betreibern
      der Karte von morgen nach bestem Wissen zur Verfügung gestellt.
      All diese Informationen begründen jedoch soweit gesetzlich zulässig, weder
      eine Garantie, Zusage oder Haftung seitens der Betreiber der Karte von
      morgen, noch entbinden sie den Nutzer von der Durchführung eigener
      Untersuchungen, Tests und dem Einholen weiterer Informationen.
      Wir übernehmen keinerlei Gewähr für die Aktualität, Richtigkeit und
      Vollständigkeit der bereitgestellten Informationen auf unserer Website.
      Haftungsansprüche gegen uns, welche sich auf Schäden materieller oder
      ideeller Art beziehen, die durch die Nutzung oder Nichtnutzung der
      dargebotenen Informationen bzw. durch die Nutzung fehlerhafter und
      unvollständiger Informationen verursacht wurden, sind grundsätzlich
      ausgeschlossen, sofern unsererseits kein nachweislich vorsätzliches oder
      grob fahrlässiges Verschulden vorliegt. Alle Angebote sind freibleibend
      und unverbindlich. Wir behalten uns ausdrücklich vor, Teile der Seiten
      oder das gesamte Angebot ohne gesonderte Ankündigung zu verändern,
      zu ergänzen, zu löschen oder die Veröffentlichung zeitweise oder
      endgültig einzustellen.
    </p>
    <h4>Verweise und Links</h4>
    <p>
      Bei direkten oder indirekten Verweisen auf fremde Webseiten (“Hyperlinks”),
      die außerhalb unseres Verantwortungsbereiches liegen, würde eine
      Haftungsverpflichtung ausschließlich in dem Fall in Kraft treten, in dem
      wir von den Inhalten Kenntnis haben und es uns technisch möglich und
      zumutbar wäre, die Nutzung im Falle rechtswidriger Inhalte zu verhindern.
      Wir erklären hiermit ausdrücklich, dass zum Zeitpunkt der Linksetzung
      keine illegalen Inhalte auf den zu verlinkenden Seiten erkennbar waren.
      Auf die aktuelle und zukünftige Gestaltung, die Inhalte oder die
      Urheberschaft der verlinkten/verknüpften Seiten haben wir keinerlei
      Einfluss.
      Deshalb distanzieren wir uns hiermit ausdrücklich von allen Inhalten aller
      verlinkten/verknüpften Seiten, die nach der Linksetzung verändert wurden.
      Diese Feststellung gilt für alle innerhalb des eigenen Internetangebotes
      gesetzten Links und Verweise sowie für Fremdeinträge in von uns
      eingerichteten Gästebüchern, Diskussionsforen, Linkverzeichnissen,
      Mailinglisten und in allen anderen Formen von Datenbanken, auf deren
      Inhalt externe Schreibzugriffe möglich sind. Für illegale, fehlerhafte
      oder unvollständige Inhalte und insbesondere für Schäden, die aus der
      Nutzung oder Nichtnutzung solcherart dargebotener Informationen entstehen,
      haftet allein der Anbieter der Seite, auf welche verwiesen wurde, nicht
      derjenige, der über Links auf die jeweilige Veröffentlichung lediglich
      verweist.
      Sollten unsere Verweise zu gesetzwidrigen, jugendgefährdenden oder aus
      anderen Gründen abzulehnenden Darstellungen führen, bitten wir um
      entsprechende Benachrichtigung.
    </p>

    <h4>Urheber- und Kennzeichenrecht</h4>
    <p>
      Wir sind bestrebt, in allen Publikationen die Urheberrechte der
      verwendeten Bilder, Grafiken, Tondokumente, Videosequenzen und Texte zu
      beachten, von uns selbst erstellte Bilder, Grafiken, Tondokumente,
      Videosequenzen und Texte zu nutzen oder auf lizenzfreie Grafiken,
      Tondokumente, Videosequenzen und Texte zurückzugreifen.
      Alle innerhalb des Internetangebotes genannten und ggf. durch Dritte
      geschützten Marken- und Warenzeichen unterliegen uneingeschränkt den
      Bestimmungen des jeweils gültigen Kennzeichenrechts und den Besitzrechten
      der jeweiligen eingetragenen Eigentümer. Allein aufgrund der bloßen
      Nennung ist nicht der Schluss zu ziehen, dass Markenzeichen nicht durch
      Rechte Dritter geschützt sind! Das Copyright für veröffentlichte,
      von uns selbst erstellte Objekte bleibt allein uns vorbehalten.
      Eine Vervielfältigung oder Verwendung solcher Grafiken, Tondokumente,
      Videosequenzen und Texte in anderen elektronischen oder gedruckten
      Publikationen ist ohne unsere ausdrückliche Zustimmung nicht gestattet.
    </p>

    <h4>Hinweis für Abmahnversuche</h4>
    <p>
      Keine Abmahnung ohne vorherigen Kontakt! Sollte der Inhalt oder die
      Aufmachung dieser Seiten fremde Rechte Dritter oder gesetzliche
      Bestimmungen verletzen, so bitten wir um eine entsprechende Nachricht ohne
      Kostennote.
      Die Beseitigung einer möglicherweise von diesen Seiten ausgehenden
      Schutzrechts-Verletzung durch Schutzrecht-Inhaber/innen selbst darf nicht
      ohne unsere Zustimmung stattfinden. Wir garantieren, dass die zu Recht
      beanstandeten Passagen unverzüglich entfernt werden, ohne dass von Ihrer
      Seite die Einschaltung eines Rechtsbeistandes erforderlich ist.
      Dennoch von Ihnen ohne vorherige Kontaktaufnahme ausgelöste Kosten werden
      wir vollumfänglich zurückweisen und gegebenenfalls Gegenklage wegen
      Verletzung vorgenannter Bestimmungen einreichen. Wir bitten hierfür um Ihr
      Verständnis. 
    </p>
    <h4>Datenschutz</h4>
    <p>
      Disclaimer: Diese Zusammenfassung ist nicht Bestandteil der
      Datenschutzrichtlinie und ist kein rechtsgültiges Dokument.
      Sie stellt lediglich eine praktische Hilfe zum Verständnis des Volltextes
      der Datenschutzrichtlinie dar.
      Betrachte sie als ein benutzerfreundlicher Zugang zu unserer
      Datenschutzrichtlinie.
    </p>
    <p>
      Da wir der Ansicht sind, dass du nicht verpflichtet sein solltest,
      personenbezogene Daten bereitzustellen, um am freien Wissensaustausch
      teilzunehmen, kannst du alle Einträge der Karte von morgen ohne Einrichtung
      eines Benutzerkontos lesen, bearbeiten und nutzen;
    </p>
    <p>
      Da wir verstehen wollen, wie die Seite der Karte von morgen genutzt wird,
      damit wir sie besser an deine Bedürfnisse anpassen können, erfassen wir
      einige Daten, wenn du:
      <ul>
        <li>
          öffentliche Beiträge tätigst;
        </li>
        <li>
          ein Benutzerkonto einrichtest oder deine Benutzerseite aktualisierst;
        </li>
        <li>
          die Seite der Karte von morgen nutzt;
        </li>
        <li>
          uns E-Mails sendest oder an einer Umfrage teilnimmst oder Feedback
          gibst.
        </li>
      </ul>
    </p>
    <p>
      Wir verpflichten uns:
      <ul>
        <li>
          in dieser Datenschutzrichtlinie zu beschreiben, wie deine Daten
          verwendet oder weitergegeben werden können;
        </li>
        <li>
          angemessene Maßnahmen zu ergreifen, um deine Daten sicher
          aufzubewahren;
        </li>
        <li>
          deine Daten niemals zu verkaufen oder sie zu Marketingzwecken an
          Dritte weiterzugeben;
        </li>
        <li>
          deine Daten nur unter einigen wenigen Umständen weiterzugeben, zum
          Beispiel, um die Seite der Karte von morgen zu verbessern,
          gesetzlichen Bestimmungen zu genügen oder um dich und andere zu
          schützen;
        </li>
        <li>
          deine Daten nur für den kürzestmöglichen Zeitraum zu speichern, der zu
          Zwecken der Wartung, des Verständnisses und der Verbesserung der Karte
          von morgen sowie zur Einhaltung unserer gesetzlichen Pflichten
          erforderlich ist.
        </li>
      </ul>
    </p>
    <p>
      Bitte beachte:
      <ul>
        <li>
          Inhalte, die du der Karte von morgen hinzufügst oder Änderungen, die du
          vornimmst, sind öffentlich und dauerhaft verfügbar.
        </li>
        <li>
          Wenn du Inhalte hinzufügst oder Änderungen an den Eintragungen der Karte
          von morgen vornimmst, ohne dich anzumelden, werden die entsprechenden
          Inhalte bzw. Änderungen öffentlich und dauerhaft der zur Änderungszeit
          benutzten IP-Adresse – und nicht einem Benutzernamen – zugeordnet.
        </li>
        <li>
          Unsere aus freiwilligen Bearbeitenden und Beitragenden bestehende
          Benutzergemeinschaft ist ein sich selbst überwachendes Organ.
          Bestimmte Benutzer der Karte von morgen mit administrativen Rechten,
          die von der Community ausgewählt werden, nutzen Werkzeuge, die ihnen
          beschränkten Zugang zu nichtöffentlichen Informationen über kürzlich
          getätigte Beiträge gewähren, damit sie die Karte von morgen schützen
          und Richtlinien durchsetzen können.
        </li>
      </ul>
    </p>
    <p>
      Zum Schutz der Karte von morgen und anderer Benutzer darfst du die Karte
      von morgen Webseiten nicht benutzen, wenn du dieser Datenschutzrichtlinie
      nicht zustimmst.
    </p>
    <p>
      Datenschutzrichtlinie
      <br/>
      Sofern innerhalb des Internetangebotes die Möglichkeit zur Eingabe
      persönlicher oder geschäftlicher Daten (Emailadressen, Namen, Anschriften)
      besteht, so erfolgt die Preisgabe dieser Daten seitens des Nutzers auf
      ausdrücklich freiwilliger Basis.
      Die Inanspruchnahme und Bezahlung aller angebotenen Dienste ist – soweit
      technisch möglich und zumutbar – auch ohne Angabe solcher Daten bzw. unter
      Angabe anonymisierter Daten oder eines Pseudonyms gestattet. Die Nutzung
      der im Rahmen des Impressums oder vergleichbarer Angaben veröffentlichten
      Kontaktdaten wie Postanschriften, Telefon- und Faxnummern sowie
      Emailadressen durch Dritte zur Übersendung von nicht ausdrücklich
      angeforderten Informationen ist nicht gestattet. Rechtliche Schritte gegen
      die Versender von sogenannten Spam-Mails bei Verstößen gegen dieses Verbot
      sind ausdrücklich vorbehalten.
    </p>
    <p>
      Quellen u.a.:
      <br />
      Haftungsausschluss von Haftungsausschluss-Vorlage.de und
      Datenschutzgesetz.de
    </p>
  </div>

export default Imprint
