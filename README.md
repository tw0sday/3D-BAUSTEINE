# DAS PROJEKT 3D-Bausteine

## Implementierung eines einfachen 3d-CAD programms

## Auszug aus dem Projekttagebuch
 zum Projekt „3D-Bausteine&quot;

„Wie man die Weihnachtsferien 2000 und 2001 vor dem Computer verbringen kann&quot;

### „Eine Idee wird geboren&quot;

22.12.2000

Im Zusammenhang mit der Schulpraxis für GZ (3Klasse HSA), und im Hinblick auf eine mögliche Projektarbeit oder als Diplomarbeitsthema entsteht die Idee, ein Programm zur Visualisierung dreidimensionaler Szenarien zu schaffen. Es soll den Schüler das Modellieren einfacher virtueller 3D-Welten mit geometrischen Grundkörpern ermöglichen, welche dann mittels Raytracing- Programm (siehe unten) zu fotorealistischen Ausgaben am Bildschirm oder Drucker führt. Diese Szenarien sollen in der ersten Version aus einfachen dreidimensionalen Grundkörpern zusammengesetzt werden können. Kugeln, Kegel, Quader und Zylinder in beliebiger Größe , Farbe und Lage sollten die virtuelle Welt als erstes bevölkern.

Die Benutzeroberfläche sollte möglichst einfach und intuitiv zu bedienen sein. Die Eingaben in der graphischen Benutzeroberfläche sollten so weit wie möglich interaktiv erfolgen, wobei das Aussehen der Ansichten möglichst ähnlich zu den Konventionen im GZ- Unterricht sein sollte (zugeordnete Normalrisse, gewohntes ebenes und räumliches Koordinatensystem) , um für die Schüler einen leichten Übergang zu schaffen.

Weiters sollte die Gestaltung der Benutzerschnittstelle mit heute üblichen Steuerungselementen (grafische Oberfläche mit Maussteuerung, Menüs, grafischen Werkzeugleisten, Standarddialogen, eingeblendeten Kurzhilfen, übersichtlichen Tabulatorblättern,..) erfolgen, um den Schülern eine einfache Einarbeitung in das Programm zu ermöglichen. Da die Schüler in der Regel bereits im Umgang mit der Windows- Oberfläche geübt sind, sollten die Bedienungselemente möglichst die gewohnte Bedeutung besitzen. Das Programm sollte aber auch über Möglichkeiten für den Lehrer (oder Administrator) verfügen, gewisse Einstellungen (Standardpfade, Bildeinstellungen,...) vorzunehmen und zu sperren, um den administrativen Aufwand der Wartung, bei aller Flexibilität für die Schüler, in Grenzen zu halten.

Als erste Entwicklungsstufe ist an einen Prototypen mit drei Ansichten – zugeordneten Normalrissen (Grund-, Auf-, und Kreuzriss) gedacht, wobei die Lage der Koordinatenachsen jener im Fach GZ entsprechen sollte (aber eventuell auch änderbar sein sollte.).

Die Entwicklungsplattform ist Visual Basic 5.0 (Professional) unter MS- Windows 98 bzw. Windows NT4.0, da dieses System sowohl im Informatikunterricht an der PÄDAK Klagenfurt benutzt wird, als auch in der HSA (Hauptschule der Akademie) zur Verfügung steht.

Um möglichst „plastische&quot; Ausgaben zu ermöglichen, soll das Programm einen Datenexport in das gängige Raytracingprogramm POV 2.2 (persistence of vision) schon möglichst von Anfang an , d.h. bereits in der Prototypenphase ermöglichen. Die Ausgaben dieses Shareware Raytracingprogramms (siehe Kapitel Raytracing mit POV) kommen dem menschlichen Sehen dieser virtuellen Objekte sehr nahe, und lassen bei entsprechend ausgestalteten Szenendateien kaum Wünsche offen. Auch komplexe Darstellungen wie Schatten, Lichtbrechung, Reflexion, Spiegelung, Nebel und mehrere verschiedene Lichtquellen sind möglich, um dem Betrachter eine beeindruckende Darstellung der Objekte zu geben.

Weiters ist eine Ausgabe des erzeugten Bildes in eine Grafikdatei mit fast beliebiger Auflösung möglich, was eine Weiterbearbeitung in einem Graphikprogramm sowie das Ausdrucken des errechneten Bildes auf einem Farbdrucker als bleibende Darstellung ermöglicht.

#### „Was dann geschah &quot;

### Version 1.0

ca. 80 Arbeitsstunden Stand 7.1.2001

Inzwischen ist mehr als ein Jahr vergangen, anfangs wurden einige kommerzielle Konkurenzprodukte studiert, um sich über den grundsätzlichen Aufbau einer geeigneten Benutzerschnittstelle und die Machbarkeit verschiedener Ansätze klar zu werden. Die Eindrücke schwankten von „das kann ich auch&quot; (Genesis 3D , US-Version 1.0 – ein Programm zum Entwurf von Spieloberflächen) bis zu „etwas zu aufwendig&quot; (Maxon Cinema 4D – Anschaffungspreis ca. 2000 €).

- Das angestrebte Programm musste also dazwischen liegen. Trotzdem war das Studium ähnlicher Programme sehr hilfreich in puncto Erstellung einer Benutzerschnittstelle, da sich gewisse Ansätze der Oberflächengestaltung in allen Programmen wieder fanden, andere Details wieder sehr unterschiedlich gelöst wurden.

Der nächste Schritt bestand in der Konstruktion eines Prototyps (Oberfläche), was in Visual Basic 5 recht einfach war. In der Version 1.0 bestand die Benutzeroberfläche aus einem Hauptfenster (Form1) und einer beweglichen Leiste für die Körper. Die Oberflächengeometrie wurde starr für eine Bildschirmauflösung von 800 x 600 Punkte konstruiert, da dies ein sinnvolles Mindestmass darstellt.

Nun ging es an die Programmierung der dahinter stehenden Datenstrukturen für die Bildschirm- verwaltung, die POV- Objekte sowie die Repräsentation der geometrischen Körper, um daraus jederzeit die Projektion in die einzelnen Risse (Grund-, Auf-, Kreuz-, und Schrägriss) bilden zu können. Die dazu notwendigen Datenstrukturen und Strukturvariablen gestalteten sich durchaus komplex, da ja nötig ist , die Geometrie jedes beliebigen Körpers in der Datenstruktur abzubilden.

Jeder Körper kann sich durch unterschiedliche charakteristische Werte (z.B. Kugelmittelpunkt und Radius), Position, Größe, Verdrehung, Farbe, etc. von anderen Körpern unterscheiden, wozu die Datenstruktur flexibel genug designed sein muss.

Es ergeben sich mit den Mitteln der Programmiersprache Basic fast zwangsläufig mehrdimensionale dynamische Arrays – dynamische Anzahl der Körper mal dynamische Anzahl der Punkte und Kanten, - Punkte bestehen ihrerseits wieder aus den Komponenten eines (Ort-)Vektors und Kanten aus Indizes auf solche Punkte, zudem müssen für jeden Körper seine POV- Repräsentation sowie die Transformationsmatrix gespeichert werden. Letztere, um nicht für jeden Körperpunkt – das können bis zu 32768 Punkte pro Körper sein – mittels aufwendiger Matrizenrechnung neu berechnet werden zu müssen. Die Datenstrukturen wurden auch so definiert, dass eine spätere Ergänzung beispielsweise für die Berechnung unsichtbarer Kanten problemlos möglich ist. (Definitionen siehe MODUL1.bas).

Das diese flexiblen Datenstrukturen oft komplexe Zugriffsprozeduren (mehrfache Referenzierungen ) erfordern, um an ihre Komponenten zu kommen, versteht sich von selbst.

Daraus leitet sich konsequenterweise eine starke Modularisierung des Programms ab, um jede Teilaufgabe die oft ausgeführt wird in kurze Prozeduren zu fassen. Einige dieser Prozeduren werden z.B. beim Zoomen der Darstellung bis zu einigen tausend Mal aufgerufen.

Um die Performance des Programms auch bei rechenintensiven Aktionen , wie sie vor allem bei der dreidimensionalen Darstellung von Körpern häufig vorkommen, zu gewährleisten, wurde ein Teil des Programms – die 3D Darstellung – als eigenständige C-DLL (dynamic linked library) implementiert.

Die Verbindung dieser DLL zur Basic-Oberfläche ist nur über eine wohldefinierte Schnittstelle und mit C-verträglichen Datentypen möglich.

Der nächste Schritt war die Implementierung der Ablaufsteuerung.

Was geschieht beim Einfügen eines neuen Körpers, beim Drücken einer Zoom-Schaltfläche, beim Ausgeben der POV- Kommandos in ein Textfeld,...

Hier werden oft sehr lange Prozedurketten in Gang gesetzt, die bei der Fehlersuche auch mit den relativ guten Möglichkeiten der Programmierumgebung von VB5 durchaus schwer nachvollziehbar sind. Auch stellt die große Anzahl globaler Variablen ein ernsthaftes Problem bei der Fehlersuche dar. Nun warteten schon die Körper (Kugel, Kegel, Zylinder, Würfel,...) auf ihren großen Auftritt.

Ein Körper nach dem anderen wurde implementiert. In der Prototypenphase V1.0 wurde für jeden Körpertyp eine eigene Prozeduren geschrieben, jeweils für die 2D-, 3D- und POV- Ausgabe. Diese „Standardkörper&quot; sind also hart in den Programmtext kodiert (Änderung ab Version 1.2).

War das Programm somit lauffähig?

Das Programm wurde in der Programmversion V1.0 von (an) Schülern der HSA am ersten Schultag nach den Weihnachtsferien (7.1.2001) „erprobt&quot;.

Das CAD-Programm funktionierte tadellos , aber der Aufruf des auf MS- DOS basierenden Raytracers POV 2.2, der unter Windows 95/98 problemlos funktionierte, stürzte unter Windows NT erbarmungslos ab.

Als Notlösung wurde die Ausgabedatei (.pov) auf Diskette gespeichert, und auf dem glücklicherweise vorhandenen „letzten PC der Pädak mit Windows 98 &quot;, der eigentlich nur noch ein „Schaustück zum Zerlegen&quot; war, gezeigt. („ein Katastrophentag&quot;)

### Version 1.1

ca. 20 Arbeitsstunden Stand 14.1.2001

Da man ja aus Fehlern lernen sollte, wurde noch am gleichen Tag mit der Überarbeitung zur Version 1.1 begonnen.

Da das Problem mit der DOS-Unverträglichkeit von Windows NT 4.0 nicht aus der Welt zu schaffen war - ohne Windows NT 4.0 aus der Welt zu schaffen, und dieses (nicht) Betriebssystem nun einmal im Informatikraum der HSA installiert war, wurde nach Auswegen gesucht.

Da eine POV- Variante für Windows zu diesem Zeitpunkt nicht Verfügbar war, wurde als kurzfristige Notlösung die „Diashow&quot; im Programm implementiert, um den Schülern zumindest die Möglichkeit zu geben, einige fertige Ausgabedateien zu betrachten.

Weiters wurde eine Einschränkung der Darstellung auf den ersten Oktanten (nur positive x,y,z –Koordinaten) des dreidimensionalen Raumes vorgenommen, um die Komplexizität des Programms für die Schüler herab zu setzen. Zusätzlich wurde das Registerblatt „Einstellungen&quot; erstellt, das eine leichtere Einstellbarkeit des Programms an die Umgebung zu ermöglichen.

Da mit der Dos-Version von POV keine weitere Verbesserung in der NT-Umgebung zu erreichen war, wurde nach einigen Unterrichtseinheiten mit Schülern die Programm-entwicklung vorerst nicht mehr voran getrieben.

### Version 1.2

ca. 100 Arbeitsstunden Stand 29.1.2002

Anfang Dezember 2001 wurde mit der Weiterentwicklung des Programms zur Version 1.2 begonnen.

Nachdem mir eine Windows-Version von POV (3.1) zugänglich war, und sich als sehr brauchbar heraus gestellt hat, wurde umgehend mit der Weiterentwicklung des Projektes begonnen.

Zuerst wurde die Benutzeroberfläche redesigned.

Ab nun sollte die Oberfläche flexibler sein, und sich wenn möglich auch noch an die Gegebenheiten des Zielsystems ideal anpassen (z.B. Bildschirmauflösung).

Die Benutzeroberfläche stellt sich nun beim Start automatisch auf die Bildschirmauflösung des Computers ein! Der Schüler kann sodann auch noch manuelle Veränderungen an der Oberfläche vornehmen, diese gelten allerdings nur für die aktuelle Sitzung.

Weiters wurden intern (für den Benutzer nicht sichtbar) einige Veränderungen vorgenommen. Um künftig eine Erweiterung über die „Standardkörper&quot; hinaus vornehmen zu können, wurden sowohl die interne Datenstrukturen, als auch die Ablaufsteuerung abgeändert.

Es soll in späteren Versionen auch möglich sein, dem System vorher nicht bekannte Körper z.B. in einer Library-Datei zu definieren und einzulesen, eventuell sogar interaktiv zu definieren.

Die Ablaufsteuerung und Körperrepräsentation wurde erweitert, aber auch gestrafft, sodass sie flexibler, trotzdem aber auch kleiner und schneller geworden ist !

(eben kein Microsoft-Produkt)

### Version 1.3

ca. 50 Arbeitsstunden Stand 24.2.2002

Noch während der Arbeit an dieser Diplomarbeit wurde am Projekt 3D-Bausteine weiter gearbeitet, und neue Funktionalität implementiert. Es lag mir am Herzen, den Mechanismus der CSG (Constructive Solid Geometry) sowie die Möglichkeit der Definition neuer Körper zu Implementieren. Dies hat weitreichende positive Folgen für die Verwendbarkeit des Programms, denn dadurch ist es möglich, aus den vorhandenen Grundkörpern immer mehr neue und komplexere Körper zu schaffen, sowie mehrfach z.B. auf einer anderen Position in der Szene einzubauen.

Wenn es dann noch möglich ist, die neu geschaffenen Körper zu Speichern und wieder Einzulesen, steht der Bildung von Objektbibliotheken nichts mehr im Wege (Version 1.4).

Weiters wurde in der Version 1.3 noch die Auswahl und das Belegen der Körper mit Standardtexturen (siehe texture.inc) implementiert, was die Erstellung fotorealistischer Bilder wesentlich vereinfacht.

### Zukünftige Versionen

viele Arbeitsstunden Stand 20XX

- Als nächste Erweiterung ist sicher die Definition weiterer Körper und auch das Laden von neuen Körpertypen aus Library-Dateien vordringlich.
- Die Erweiterung der Menüführung und die Möglichkeit Szenendateien zu Speichern und zu laden steht natürlich auch ganz oben auf der Wunschliste der Neuerungen.
- Weiters ist dringend an der Interaktivität mit dem Benutzer zu arbeiten. Viele Interaktionsschritte mit dem Anwender erfolgen z.Z. durch Eingabe von Koordinaten und Faktoren in Textfelder, obwohl manche Schritte auch mit Maussteuerung denkbar wären.
- Es ist allerdings nicht so einfach, ein effektives Manipulationssystem für dreidimensionale Körper in einem dreidimensionalen Raum zu schaffen, wenn man nur eine zwei-dimensional agierende Maus auf einer zweidimensionalen Bildschirmoberfläche zur Verfügung hat!

## Schulpraktischer Bezug

Wie aus den obigen Ausführungen entnommen werden kann, ist das Programm 3D-Bausteine eigens für den Einsatz in der Schule, konkret für die Visualisierung geometrischer Sachverhalte im Mathematik- und GZ-Unterricht der 3. oder 4. Klasse
 (7./ 8. Schulstufe), entwickelt worden. Der schulpraktische Bezug ist damit unmittelbar gegeben. Als Voraussetzung für einen sinnvollen Einsatz sehe ich ein Grundverständnis der Geometrie der verwendeten Körper, sowie der zugeordneten Normalrisse (zumindest Grund- und Aufriss) an. Auch ein Verständnis für das kartesische Koordinatensystem ist für den sinnvollen Umgang mit dem Programm notwendig.

Aus softwareergonomischer Sicht sehe ich kaum Probleme der Schüler im Umgang mit dem Programm, da Schüler erfahrungsgemäß den Umgang mit graphischen Benutzer- oberflächen unter Microsoft-Windows XX beherrschen. Es ist nur die richtige Eingabe von Koordinaten und Skalierungsgrößen entweder mit der Maus oder durch explizite Eingabe von Werten zu besprechen. Drehwinkel um die Raumachsen können bis zur Version 1.3 nur explizit eingegeben werden – eine interaktive Form der Eingabe ist hier noch nicht möglich. Für die Einarbeitung in die Benutzeroberfläche möchte ich auf das nächste Kapitel „Kurzbeschreibung der Benutzeroberfläche&quot; verweisen, vorher aber noch ein Verweis auf eine Unterrichtsplanung mit Situationsanalyse, die ich aus Übersichtlichkeitsgründen im Anhang platziert habe.

## Kurzbeschreibung der Benutzeroberfläche
 von 3D-Bausteine-CAD:
![image](https://user-images.githubusercontent.com/100231011/157618126-db876031-8fae-4944-8839-2743f8b00c20.png)


###


_Abb.: 3D-Bausteine Benutzeroberfläche_

### Allgemeines:

Das Programm wurde ab der Version 1.2 bezüglich der Benutzeroberfläche sehr flexibel gestaltet (Darstellungen können daher auch leicht vom aktuellen Programm abweichen)

Die Oberfläche besteht aus 4 Teilen (Forms), die voneinander unabhängig auf der Bildschirmfläche bewegt, und nach eigenen Vorstellungen positioniert werden können.

Um eine möglichst einfache Programminstallation zu ermöglichen, stellt sich das Programm beim Start automatisch auf die Bildschirmauflösung ein!

(Mindestauflösung 800x600 Punkte)

Man erkennt den zentralen Zeichenbereich mit vier Rissen (Grund-, Auf-, Kreuz-, und Schrägriss), rechts davon Registerblätter, auf denen die Manipulation der Objekte und andere Einstellungen durchgeführt werden. Darüber ist die Koordinatenanzeige sowie die Zoomanzeige und Zoomsteuerung (getrennt für 2D- und 3D- Bereich).

Unter den Registerblättern ist hier gerade der Farbdialog (Standarddialog) zu sehen , der nur bei der Farbänderung eines Objekts erscheint.

An der linken Seite ist die Körperauswahl mit ein paar Standardkörpern zu sehen, und oberhalb in der Mitte die Funktionsleiste. Der Grossteil der Oberflächenelemente ist frei verschiebbar, und kann nach eigenen Wünschen angeordnet werden. Die Körperleiste (links) und die Koordinatenanzeige bleiben auch an der Oberfläche, wenn man sie auf andere Bildteile (Forms) verschiebt, oder ein anderes Programm aufruft, ohne 3D-BAU zu beenden!

### Die Darstellung der vier Risse
 (Grund-, Auf-, Kreuz-, und Schrägriss)

![image](https://user-images.githubusercontent.com/100231011/157618307-25c8f5b6-50a3-4631-8fc2-b25b0cb8ed26.png)

er zentrale Bereich besteht aus vier Ansichten der dargestellten geometrischen Szene.

Der hier invers dargestellte zentrale Bereich der Benutzeroberfläche stellt die zugeordneten Normalrisse –

Grund-, Auf-, und Kreuzriss dar.

Links unten befindet sich die 3D-Darstellung der geometrischen Szene.

Die Darstellung wurde an das im GZ- Unterricht verwendete Rechtskoordinaten-system angeglichen, um bei einer Verwendung in der Schule möglichst im gewohnten System zu arbeiten.

_Abb.: Zugeordnete Normalrisse_

Allerdings entspricht dieses Koordinatensystem nicht dem POV- Koordinatensystem, sodass hier vom Programm eine automatische Umrechnung erfolgen muss. Dies war auch ein Grund für die Entwicklung von „3D-Bausteine&quot;, da es wohl kaum denkbar wäre, im Unterricht zwei komplett verschiedene Koordinatensysteme zu lehren.

![image](https://user-images.githubusercontent.com/100231011/157618528-85f58cba-3ba4-4371-8b22-b24a3c7682f6.png)

Abb.: Die Koordinatenanzeige mit Statusanzeige_

Unter den 4 Ansichten der Objekte befindet sich standardmäßig ein kleines Steuerelement, dass zu Anzeige der aktuellen Cursorkoordinaten (Maus) im jeweiligen Riss, sowie des aktuellen Zoomfaktors dient. Seit der Version 1.3 ist diese Anzeige um eine Statusanzeige erweitert worden, die dem Benutzer Hilfestellungen gibt.

Wichtig: Es werden bei Cursorbewegungen durch die zugeordneten Normalrisse immer nur zwei Koordinaten dargestellt und synchron zur Bewegung verändert, da man sich ja auf einer zweidimensionalen Bildschirmoberfläche bewegt.

Bei genauer Betrachtung der Anzeige bemerkt man auch, dass sich die Werte schlagartig in der Mitte zweier Rasterpunkte ändern, um die Positionierung von Körpern leichter durchzuführen (snap to grid – Funktion ).

Weiters wird als Hilfestellung auch die Bezeichnung des Risses, in dem man sich gerade befindet, und der aktuelle Zoomfaktor angezeigt.

### Zoomanzeige und Zoomsteuerung

Mit den rechts unten angeordneten Tasten kann man die drei zugeordneten Normalrisse (2D) oder den Schrägriss (3D) unabhängig voneinander in sinnvollen Bereichen zoomen (50% - 500%). Der Zoombereich wurde absichtlich eingeschränkt, da es sich bei der Verwendung des Programms im Unterricht herausgestellt hat, dass die Zoomfunktion auf die Schüler einen besonderen Reiz ausübt, und von anderen Tätigkeiten sehr ablenkt.
 Es ist noch zu erwähnen, das die Maustasten im 3D-Fenster (Schrägriss) andere Funktionen hat. Die linke Maustaste zoomt in die Szene, die rechte heraus, und die mittlere Maustaste schaltet zwischen 3D-Ansicht über 4 Felder oder nur ein Feld um.

### Die Steuerzentrale mit Registerblättern

![image](https://user-images.githubusercontent.com/100231011/157618649-b539f17c-cfa9-4caa-b710-c6f5f6550564.png)

Das mit „Eingaben&quot; betitelte Form stellt quasi die Steuerzentrale des Programms dar.

Beim Start der Applikation ist standardmäßig das Registerblatt „Köper&quot; obenauf. Die mit Objekte bezeichnete Liste ist vorerst leer, bzw. enthält nur das mit der Nr. 0 bezeichnete Raster, womit das Achsenkreuz und das Punkt- bzw. Linienrasten gemeint ist. Dieses ist vom Benutzer nicht veränderbar.

Es gibt nun mehrere Möglichkeiten, einen neuen Körper in die Szene einzufügen.

_Abb.: Registerblatt Objekteingabe_

#### Einfügen/Löschen/Ändern von Objekten (Körper)

Möglichkeit 1:

1. Man wählt die Bezeichnung des Körpers aus dem Kombinationslistenfeld unter Geometriedaten oder tippt die Bezeichnung dort ein.
2. Gibt dann die Koordinaten der charakteristischen Punkte des Körpers ein
 (z.B. Mittelpunkt der Kugel und deren Radius)
3. Das System gibt für ihm bekannte Körpertypen Hilfestellung für die Angaben
4. Und fügt den neuen Körper dann mit der Schaltfläche „Einfügen&quot; ein.
5. Sollte der Körpertyp dem System nicht bekannt sein, so wird kein Körper eingefügt.

f) Dies dürfte die etwas mühsamere Methode gewesen sein.

![image](https://user-images.githubusercontent.com/100231011/157618735-ca536a02-ad14-4513-b0c3-0261c7a84fcf.png)

Möglichkeit 2:_

_Abb.: Körperauswahl / Objekteingabe_

![image](https://user-images.githubusercontent.com/100231011/157618797-7c7b62ba-fd41-4b60-a081-67e3efe0d4d1.png)

) Man wählt in der Körperleiste (links oben dargestellt)
 einen Körpertyp aus.

1. Man wählt in den Normalrissen die Positions-punkte mit der Maus an (linke Maustaste).

c) Tipp: Zur Kontrolle sollte man die Koordinatenanzeige
 und die Statusanzeige immer im Auge behalten.

d) Nach den Positionskoordinaten können ab der Version
 1.3 auch die Skalierungsmaße (z.B. Kantenlängen)
 indirekt mit der Mausangewählt werden, indem man z.B.
 den gegenüberliegenden Eckpunkt des umhüllenden
 Quaders als zweiten Eckpunkt anwählt.

Auch hier wird eine Hilfestellung durch die Statusanzeige
 sowie verschiedenfarbige Hilfsmarkierungen (kleine
 Kreuze) gegeben.

d) Ergänzt oder ändert die angezeigten Werte im Bereich
 „Geometriedaten&quot; z.B. die Drehwinkel um die Raum-
 achsen.

1. fügt den Körper mit Schaltfläche „Einfügen&quot; ein.

Ist das Ergebnis der Eingabe nicht das Gewünschte, so kann der Körper mit „Löschen&quot; wieder entfernt werden.

Tipp: stimmt der eingegeben Körper nur in einem Wert nicht, so ist es sinnvoll, den fast richtigen Körper in der Objekte - Liste (object browser) anzuwählen, worauf dessen Werte angegeben werden. Nun ändert man den falschen Wert und drückt auf die „Ändern&quot;-Taste (in der abgebildeten Version noch nicht dargestellt)

![image](https://user-images.githubusercontent.com/100231011/157618929-dd755aec-b751-4f66-b17a-67e7e10d73de.png)

#### Farbänderung / Textur:

Wird ein Körper in der Objekt-Liste angewählt, so erscheint dessen Farbe als Hintergrundfarbe der Taste „Farbe&quot; im Form „Farben/Texturen&quot;.

_Abb.: Farbänderung_

Wird die Schaltfläche „Farbe&quot; , oder die Schaltfläche mit den Farbtuben in der Werkzeugleiste betätigt, so erscheint der Standarddialog für Farbwechsel.

Hier kann nun die gewünschte Farbe ausgewählt werden. Mit OK oder Abbrechen kommt man wieder aus dem links abgebildeten Standarddialog.

![image](https://user-images.githubusercontent.com/100231011/157619014-51e50788-2042-4d38-a5b0-7fdcc7b58fd7.png)

An der aktuellen Version 1.3 ist auch bereits die Möglichkeit gegeben, die Körper mit ca. 40 Standardtexturen (verschiedenste Metall-,Holz-,Glas- und Steintexturen) zu belegen. Hierzu wird eine Textur aus dem Kombinationslistenfeld ausgewählt, und automatisch dem aktuellen Körper zugeordnet. Im 3D-Bausteine CAD-Programm hat die Wahl einer Textur natürlich keine direkte Auswirkung auf die Darstellung, aber mittels Raytracer erreicht man sehr ansprechende Ausgaben!

_Abb.: Texturauswahl_

Zu beachten ist, dass Körper nur entweder eine Farbe, oder eine Textur besitzen können. Wird im Auswahlfeld eine Textur ausgewählt, so wird diese der Farbe vorgezogen. Möchte man dann dem Körper wieder eine Farbe zuordnen, so muss die Texturauswahl auf „Keine&quot; gestellt werden.

#### CSG – Constructive Solid Geometry

Das Programm &quot;3D-Bausteine&quot; ist ab der Version 1.3 auch in der Lage, sog. CSG- Befehlsstrukturen aufzubauen. D.h.: Mann kann Grundkörper (Quader, Zylinder,...) mittels logischer Operationen miteinander Verbinden oder auch voneinander abziehen.

Es stehen die logischen Operationen Vereinigung, Differenz, Durchschnitt und Summe zur Verfügung (abgeschlossen werden sie jeweils mit CSG-Ende).

_Abb.: CSG-Beispiel_

![image](https://user-images.githubusercontent.com/100231011/157619116-341e7f38-327c-43e6-9dc2-9ff6aae2dbe1.png)

Bsp.: Man möchte ein Werkstück aus Metall darstellen, dass aus einem quaderförmigen Teil durch Herausbohren bzw. –fräsen eines zylindrischen Lochs gefertigt werden soll.

![image](https://user-images.githubusercontent.com/100231011/157619222-e1e53b6d-a924-4481-850b-a7c9de06d251.png)

ichts leichter als das – Man bildet die CSG-Differenz (Auswahl aus der Kombinationsliste unter „Geometriedaten&quot;) aus dem Quader und einem Zylinder mit dem Durchmesser des Bohrers. Der Zylinder sollte beim Einfügen auf beiden Seiten des Quaders etwas überstehen, um sicherzustellen, dass das Loch auch wirklich durch den Quader durchgeht.

_Abb.: CSG-Definition_

#### Neudefinition von Körpern

Wenn man den neuen (CSG-)Körper in der Darstellung mehrmals benötigt ist es vorteilhaft, ihn mittels der Auswahl #Neu – Neu Ende logisch zu umschließen, da er dann einen eigenen Namen bekommt, und dem System aber auch dem Raytracer ab dann als völlig neuer Körper wie ein Grundkörper zur Verfügung steht und z.B. an einer anderen Stelle als Kopie wieder eingefügt werden kann. Weiters kann einfach dem gesamten Objekt eine einheitliche Textur zugeordnet
 werden.

#### Export einer POV-Datei

Ein wichtiges Ziel des Progamms liegt in der automatischen Generierung einer Exportdatei im POV –Format (Persistance of Vision )

![image](https://user-images.githubusercontent.com/100231011/157619320-351dfc5e-a60e-44d6-8119-c0cc6de0031e.png)

Diese Exportdatei (Ausgabe.pov) wird vom Programm automatisch erzeugt, und dient als Eingabedatei für den oben genannten Public Domain Raytracer POV.

_Abb.: Ausgabedatei_

Die manuelle Erstellung einer solchen Datei mittels Texteditor dürfte vor allem für ungeübte (Schüler) sonst wohl eher ein Problem darstellen, da der Code in einer sehr C-ähnlichen Notation wohl sehr fehlerträchtig ist.

Ohne nun auf die genaue POV- Syntax eingehen zu wollen sei hier nur so viel gesagt:

- Jedem Körper in der Bildschirmszene ist auch ein Objekt in der POV- Datei zugeordnet.
- Darüber hinaus werden für die POV- Szene noch einige Include- Dateien benötigt,
 in denen Farben und Texturen definiert wurden.
- Das Bild der Szene wird gedanklich von einer virtuellen Kamera „aufgenommen&quot;, wobei jeder Bildschirmpunkt (Pixel) als Ergebnis eines gedachten Sehstrahls in die graphische Szene betrachtet wird.
- Neben der Kamera muss für die Berechnung in der Szene noch mindestens eine virtuelle Beleuchtung definiert werden.
- Jeder Körper kann noch verschiedenen Transformationen (Skalierung, Rotation, Translation ) unterworfen werden. Auch die Farbgebung / Textur jedes Körpers wird der Exportdatei mitgeteilt.

Die Fähigkeiten des Raytracers POV gehen natürlich noch weit über das Gesagte hinaus, z.B. können auch Rotationskörper modelliert werden, oder Körperoberflächen verspiegelt oder mit Mustern oder Bildern „tapeziert&quot; werden.

Es lohnt sich, einen Blick in die POV- Referenz oder in die Online-Dokumentation des Raytracers zu werfen!

#### Werkzeugleiste und Menüleiste

![image](https://user-images.githubusercontent.com/100231011/157619411-f88d9691-c412-4377-b4ee-129c8153e8cb.png)

Bleibt noch die Werkzeugleiste zu beschreiben. Mit den einzelnen Tasten der Werkzeugleiste können wichtige Abläufe des Systems gestartet werden, ohne sich mühsam durch Menüs hantieren zu müssen. Die Funktionen sind aber auch in den Menüs vorhanden. Für die am häufigsten verwendeten Funktionen des Systems reichen allerdings die Tasten der Werkzeugleiste, und es ist nicht notwendig, die Menüs zu durchsuchen, was die Bedienung wesentlich erleichtert und beschleunigt.

_Abb.: Werkzeugleiste_

Die Funktionen von links nach rechts:

1. Positionierung 5. Aufruf des Raytracers
2. Aufruf der Körperleiste 6. 3D-Ansicht aufzoomen
3. Bearbeitung , z.Z. keine 7. Speichern der POV- Datei

1. Farbänderung 8. Programm beenden

9. Diashow

Beim Verweilen mit der Maus auf einer Schaltfläche erscheint ein Hinweis.
