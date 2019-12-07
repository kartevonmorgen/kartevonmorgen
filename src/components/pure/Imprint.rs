// TODO: import React  from "react"
// TODO: import URLs   from "../../constants/URLs"
// TODO: import i18n   from "../../i18n";
// TODO: 
// TODO: import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
// TODO: 
// TODO: const t = (key) => i18n.t("imprint." + key)
// TODO: 
// TODO: const Imprint = () =>
// TODO: 
// TODO:   <div className="info">
// TODO:     <h3>{t("contact")}</h3>
// TODO:     <p>
// TODO:       <FontAwesomeIcon icon="globe-africa" /> <a target="_blank" href = { URLs.PROTOTYPE.link } >{ URLs.PROTOTYPE.name }</a>
// TODO:       <br />
// TODO:       <FontAwesomeIcon icon={['fab', 'facebook']} /> <a target="_blank" href = { URLs.FACEBOOK.link } >{ URLs.FACEBOOK.name }</a>
// TODO:       <br />
// TODO:       <FontAwesomeIcon icon="envelope" /> <a target="_blank" href = { URLs.MAIL.link } >{ URLs.MAIL.name }</a>
// TODO:       <br />
// TODO:       <FontAwesomeIcon icon={['fab', 'github']} /> <a target="_blank" href = { URLs.REPOSITORY.link } >{ URLs.REPOSITORY.name }</a>
// TODO:     </p>
// TODO:     <h3>{t("imprint")}</h3>
// TODO:       <h4>{t("heading1")}</h4>
// TODO:         Ideen³ e.V. // Räume für Entwicklung
// TODO:         <br />
// TODO:         {t("representedByChair")} Helmut Wolman
// TODO:         <br />
// TODO:         Görreshof 180, 53347 Alfter
// TODO:         <br />
// TODO:         <a target="_blank" href = "http://ideenhochdrei.org">Ideenhochdrei.org</a>
// TODO:         <br />
// TODO:         <a href = "mailto:info@ideenhochdrei.org">
// TODO:           info@ideenhochdrei.org
// TODO:         </a>
// TODO: 
// TODO:       <h4 className="imprint-heading">{t("heading2")}</h4>
// TODO:         {t("kvmTeamRepresentedBy")}
// TODO:         <br />
// TODO:         Helmut Wolman
// TODO:         <br />
// TODO:         Turley-Platz 9
// TODO:         <br />
// TODO:         68167 Mannheim
// TODO:         <br />
// TODO:         <a href = "mailto:helmut.wolman@kartevonmorgen.org">
// TODO:           helmut.wolman@kartevonmorgen.org
// TODO:         </a>
// TODO: 
// TODO:       <h4 className="imprint-heading">{t("heading3")}</h4>
// TODO:         {t("kvmTeamRepresentedBy")}
// TODO:         <br />
// TODO:         T. Thao Tran
// TODO:         <br />
// TODO:         <a href = "mailto:thao.tran@kartevonmorgen.org">
// TODO:           thao.tran@kartevonmorgen.org
// TODO:         </a>
// TODO: 
// TODO:       <h4 className="imprint-heading">{t("heading4")}</h4>
// TODO:         Anja Dannemann
// TODO:         <br />
// TODO:         <a href= "mailto:anja.dannemann@kartevonmorgen.org">
// TODO:           anja.dannemann@kartevonmorgen.org
// TODO:         </a>
// TODO: 
// TODO:       <h4 className="imprint-heading">{t("heading5")}</h4>
// TODO:         Lisa Tegtmeier
// TODO:         <br />
// TODO:         <a target="_blank" href = "http://www.lisategtmeier.de">
// TODO:          www.lisategtmeier.de
// TODO:         </a>
// TODO: 
// TODO:       <h4 className="imprint-heading">{t("heading6")}</h4>
// TODO:         <a target="_blank" href="https://slowtec.de/">slowtec GmbH</a>
// TODO:         <br />
// TODO:         Friedrichsberg 55
// TODO:         <br />
// TODO:         70567 Stuttgart
// TODO:         <br />
// TODO:         <a href = "mailto:markus@kartevonmorgen.org">
// TODO:           markus@kartevonmorgen.org
// TODO:         </a>
// TODO: 
// TODO:     <h4>Haftungsausschluss</h4>
// TODO:     <p>
// TODO:       Sämtliche über die Website veröffentlichten Produkt- und
// TODO:       Firmeninformationen oder sonstige Informationen werden von den Betreibern
// TODO:       der Karte von morgen nach bestem Wissen zur Verfügung gestellt.
// TODO:       All diese Informationen begründen jedoch soweit gesetzlich zulässig, weder
// TODO:       eine Garantie, Zusage oder Haftung seitens der Betreiber der Karte von
// TODO:       morgen, noch entbinden sie den Nutzer von der Durchführung eigener
// TODO:       Untersuchungen, Tests und dem Einholen weiterer Informationen.
// TODO:       Wir übernehmen keinerlei Gewähr für die Aktualität, Richtigkeit und
// TODO:       Vollständigkeit der bereitgestellten Informationen auf unserer Website.
// TODO:       Haftungsansprüche gegen uns, welche sich auf Schäden materieller oder
// TODO:       ideeller Art beziehen, die durch die Nutzung oder Nichtnutzung der
// TODO:       dargebotenen Informationen bzw. durch die Nutzung fehlerhafter und
// TODO:       unvollständiger Informationen verursacht wurden, sind grundsätzlich
// TODO:       ausgeschlossen, sofern unsererseits kein nachweislich vorsätzliches oder
// TODO:       grob fahrlässiges Verschulden vorliegt. Alle Angebote sind freibleibend
// TODO:       und unverbindlich. Wir behalten uns ausdrücklich vor, Teile der Seiten
// TODO:       oder das gesamte Angebot ohne gesonderte Ankündigung zu verändern,
// TODO:       zu ergänzen, zu löschen oder die Veröffentlichung zeitweise oder
// TODO:       endgültig einzustellen.
// TODO:     </p>
// TODO:     <h4>Verweise und Links</h4>
// TODO:     <p>
// TODO:       Bei direkten oder indirekten Verweisen auf fremde Webseiten (“Hyperlinks”),
// TODO:       die außerhalb unseres Verantwortungsbereiches liegen, würde eine
// TODO:       Haftungsverpflichtung ausschließlich in dem Fall in Kraft treten, in dem
// TODO:       wir von den Inhalten Kenntnis haben und es uns technisch möglich und
// TODO:       zumutbar wäre, die Nutzung im Falle rechtswidriger Inhalte zu verhindern.
// TODO:       Wir erklären hiermit ausdrücklich, dass zum Zeitpunkt der Linksetzung
// TODO:       keine illegalen Inhalte auf den zu verlinkenden Seiten erkennbar waren.
// TODO:       Auf die aktuelle und zukünftige Gestaltung, die Inhalte oder die
// TODO:       Urheberschaft der verlinkten/verknüpften Seiten haben wir keinerlei
// TODO:       Einfluss.
// TODO:       Deshalb distanzieren wir uns hiermit ausdrücklich von allen Inhalten aller
// TODO:       verlinkten/verknüpften Seiten, die nach der Linksetzung verändert wurden.
// TODO:       Diese Feststellung gilt für alle innerhalb des eigenen Internetangebotes
// TODO:       gesetzten Links und Verweise sowie für Fremdeinträge in von uns
// TODO:       eingerichteten Gästebüchern, Diskussionsforen, Linkverzeichnissen,
// TODO:       Mailinglisten und in allen anderen Formen von Datenbanken, auf deren
// TODO:       Inhalt externe Schreibzugriffe möglich sind. Für illegale, fehlerhafte
// TODO:       oder unvollständige Inhalte und insbesondere für Schäden, die aus der
// TODO:       Nutzung oder Nichtnutzung solcherart dargebotener Informationen entstehen,
// TODO:       haftet allein der Anbieter der Seite, auf welche verwiesen wurde, nicht
// TODO:       derjenige, der über Links auf die jeweilige Veröffentlichung lediglich
// TODO:       verweist.
// TODO:       Sollten unsere Verweise zu gesetzwidrigen, jugendgefährdenden oder aus
// TODO:       anderen Gründen abzulehnenden Darstellungen führen, bitten wir um
// TODO:       entsprechende Benachrichtigung.
// TODO:     </p>
// TODO: 
// TODO:     <h4>Urheber- und Kennzeichenrecht</h4>
// TODO:     <p>
// TODO:       Wir sind bestrebt, in allen Publikationen die Urheberrechte der
// TODO:       verwendeten Bilder, Grafiken, Tondokumente, Videosequenzen und Texte zu
// TODO:       beachten, von uns selbst erstellte Bilder, Grafiken, Tondokumente,
// TODO:       Videosequenzen und Texte zu nutzen oder auf lizenzfreie Grafiken,
// TODO:       Tondokumente, Videosequenzen und Texte zurückzugreifen.
// TODO:       Alle innerhalb des Internetangebotes genannten und ggf. durch Dritte
// TODO:       geschützten Marken- und Warenzeichen unterliegen uneingeschränkt den
// TODO:       Bestimmungen des jeweils gültigen Kennzeichenrechts und den Besitzrechten
// TODO:       der jeweiligen eingetragenen Eigentümer. Allein aufgrund der bloßen
// TODO:       Nennung ist nicht der Schluss zu ziehen, dass Markenzeichen nicht durch
// TODO:       Rechte Dritter geschützt sind! Das Copyright für veröffentlichte,
// TODO:       von uns selbst erstellte Objekte bleibt allein uns vorbehalten.
// TODO:       Eine Vervielfältigung oder Verwendung solcher Grafiken, Tondokumente,
// TODO:       Videosequenzen und Texte in anderen elektronischen oder gedruckten
// TODO:       Publikationen ist ohne unsere ausdrückliche Zustimmung nicht gestattet.
// TODO:     </p>
// TODO: 
// TODO:     <h4>Hinweis für Abmahnversuche</h4>
// TODO:     <p>
// TODO:       Keine Abmahnung ohne vorherigen Kontakt! Sollte der Inhalt oder die
// TODO:       Aufmachung dieser Seiten fremde Rechte Dritter oder gesetzliche
// TODO:       Bestimmungen verletzen, so bitten wir um eine entsprechende Nachricht ohne
// TODO:       Kostennote.
// TODO:       Die Beseitigung einer möglicherweise von diesen Seiten ausgehenden
// TODO:       Schutzrechts-Verletzung durch Schutzrecht-Inhaber/innen selbst darf nicht
// TODO:       ohne unsere Zustimmung stattfinden. Wir garantieren, dass die zu Recht
// TODO:       beanstandeten Passagen unverzüglich entfernt werden, ohne dass von Ihrer
// TODO:       Seite die Einschaltung eines Rechtsbeistandes erforderlich ist.
// TODO:       Dennoch von Ihnen ohne vorherige Kontaktaufnahme ausgelöste Kosten werden
// TODO:       wir vollumfänglich zurückweisen und gegebenenfalls Gegenklage wegen
// TODO:       Verletzung vorgenannter Bestimmungen einreichen. Wir bitten hierfür um Ihr
// TODO:       Verständnis. 
// TODO:     </p>
// TODO:     <h4>Datenschutz</h4>
// TODO:     <p>
// TODO:       Disclaimer: Diese Zusammenfassung ist nicht Bestandteil der
// TODO:       Datenschutzrichtlinie und ist kein rechtsgültiges Dokument.
// TODO:       Sie stellt lediglich eine praktische Hilfe zum Verständnis des Volltextes
// TODO:       der Datenschutzrichtlinie dar.
// TODO:       Betrachte sie als ein benutzerfreundlicher Zugang zu unserer
// TODO:       Datenschutzrichtlinie.
// TODO:     </p>
// TODO:     <p>
// TODO:       Da wir der Ansicht sind, dass du nicht verpflichtet sein solltest,
// TODO:       personenbezogene Daten bereitzustellen, um am freien Wissensaustausch
// TODO:       teilzunehmen, kannst du alle Einträge der Karte von morgen ohne Einrichtung
// TODO:       eines Benutzerkontos lesen, bearbeiten und nutzen;
// TODO:     </p>
// TODO:     <p>
// TODO:       Da wir verstehen wollen, wie die Seite der Karte von morgen genutzt wird,
// TODO:       damit wir sie besser an deine Bedürfnisse anpassen können, erfassen wir
// TODO:       einige Daten, wenn du:
// TODO:       <ul>
// TODO:         <li>
// TODO:           öffentliche Beiträge tätigst;
// TODO:         </li>
// TODO:         <li>
// TODO:           ein Benutzerkonto einrichtest oder deine Benutzerseite aktualisierst;
// TODO:         </li>
// TODO:         <li>
// TODO:           die Seite der Karte von morgen nutzt;
// TODO:         </li>
// TODO:         <li>
// TODO:           uns E-Mails sendest oder an einer Umfrage teilnimmst oder Feedback
// TODO:           gibst.
// TODO:         </li>
// TODO:       </ul>
// TODO:     </p>
// TODO:     <p>
// TODO:       Wir verpflichten uns:
// TODO:       <ul>
// TODO:         <li>
// TODO:           in dieser Datenschutzrichtlinie zu beschreiben, wie deine Daten
// TODO:           verwendet oder weitergegeben werden können;
// TODO:         </li>
// TODO:         <li>
// TODO:           angemessene Maßnahmen zu ergreifen, um deine Daten sicher
// TODO:           aufzubewahren;
// TODO:         </li>
// TODO:         <li>
// TODO:           deine Daten niemals zu verkaufen oder sie zu Marketingzwecken an
// TODO:           Dritte weiterzugeben;
// TODO:         </li>
// TODO:         <li>
// TODO:           deine Daten nur unter einigen wenigen Umständen weiterzugeben, zum
// TODO:           Beispiel, um die Seite der Karte von morgen zu verbessern,
// TODO:           gesetzlichen Bestimmungen zu genügen oder um dich und andere zu
// TODO:           schützen;
// TODO:         </li>
// TODO:         <li>
// TODO:           deine Daten nur für den kürzestmöglichen Zeitraum zu speichern, der zu
// TODO:           Zwecken der Wartung, des Verständnisses und der Verbesserung der Karte
// TODO:           von morgen sowie zur Einhaltung unserer gesetzlichen Pflichten
// TODO:           erforderlich ist.
// TODO:         </li>
// TODO:       </ul>
// TODO:     </p>
// TODO:     <p>
// TODO:       Bitte beachte:
// TODO:       <ul>
// TODO:         <li>
// TODO:           Inhalte, die du der Karte von morgen hinzufügst oder Änderungen, die du
// TODO:           vornimmst, sind öffentlich und dauerhaft verfügbar.
// TODO:         </li>
// TODO:         <li>
// TODO:           Wenn du Inhalte hinzufügst oder Änderungen an den Eintragungen der Karte
// TODO:           von morgen vornimmst, ohne dich anzumelden, werden die entsprechenden
// TODO:           Inhalte bzw. Änderungen öffentlich und dauerhaft der zur Änderungszeit
// TODO:           benutzten IP-Adresse – und nicht einem Benutzernamen – zugeordnet.
// TODO:         </li>
// TODO:         <li>
// TODO:           Unsere aus freiwilligen Bearbeitenden und Beitragenden bestehende
// TODO:           Benutzergemeinschaft ist ein sich selbst überwachendes Organ.
// TODO:           Bestimmte Benutzer der Karte von morgen mit administrativen Rechten,
// TODO:           die von der Community ausgewählt werden, nutzen Werkzeuge, die ihnen
// TODO:           beschränkten Zugang zu nichtöffentlichen Informationen über kürzlich
// TODO:           getätigte Beiträge gewähren, damit sie die Karte von morgen schützen
// TODO:           und Richtlinien durchsetzen können.
// TODO:         </li>
// TODO:       </ul>
// TODO:     </p>
// TODO:     <p>
// TODO:       Zum Schutz der Karte von morgen und anderer Benutzer darfst du die Karte
// TODO:       von morgen Webseiten nicht benutzen, wenn du dieser Datenschutzrichtlinie
// TODO:       nicht zustimmst.
// TODO:     </p>
// TODO:     <p>
// TODO:       Datenschutzrichtlinie
// TODO:       <br/>
// TODO:       Sofern innerhalb des Internetangebotes die Möglichkeit zur Eingabe
// TODO:       persönlicher oder geschäftlicher Daten (Emailadressen, Namen, Anschriften)
// TODO:       besteht, so erfolgt die Preisgabe dieser Daten seitens des Nutzers auf
// TODO:       ausdrücklich freiwilliger Basis.
// TODO:       Die Inanspruchnahme und Bezahlung aller angebotenen Dienste ist – soweit
// TODO:       technisch möglich und zumutbar – auch ohne Angabe solcher Daten bzw. unter
// TODO:       Angabe anonymisierter Daten oder eines Pseudonyms gestattet. Die Nutzung
// TODO:       der im Rahmen des Impressums oder vergleichbarer Angaben veröffentlichten
// TODO:       Kontaktdaten wie Postanschriften, Telefon- und Faxnummern sowie
// TODO:       Emailadressen durch Dritte zur Übersendung von nicht ausdrücklich
// TODO:       angeforderten Informationen ist nicht gestattet. Rechtliche Schritte gegen
// TODO:       die Versender von sogenannten Spam-Mails bei Verstößen gegen dieses Verbot
// TODO:       sind ausdrücklich vorbehalten.
// TODO:     </p>
// TODO:     <p>
// TODO:       Quellen u.a.:
// TODO:       <br />
// TODO:       Haftungsausschluss von Haftungsausschluss-Vorlage.de und
// TODO:       Datenschutzgesetz.de
// TODO:     </p>
// TODO:   </div>
// TODO: 
// TODO: module.exports = Imprint
