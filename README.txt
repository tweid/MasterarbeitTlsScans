Die Ergebnisse der Scans sind in dem Zip-Ordner "ScanResults" enthalten.
Darin befindet sich eine Text-Datei "ScanLog", die Eingaben für ZGrab2 und die Log-Daten ausgegeben von ZGrab2 sind dort dokumentiert.
Im Ordner "Usefull" befindet sich für jeden VPN-Standort die Ergebnis-Datei mit den meisten erfolgreichen TLS-Handshakes.
Im Ordner "CompleteButNotUsefull" befinden sich alle Scans, die ohne Verbindungsunterbrechung durchgeführt wurden, aber nicht die höchste Anzahl an erfolgreichen TLS-Handshakes für den jeweiligen VPN-Standort beinhalten.
Der entpackte Ordner "ScanResults" benötigt 260,3 GB Speicherplatz

Die Daten wurden mittels der SQL-Anweisung in der Datei "jsonToSql.sql" in eine psql-Datenbank überführt.

Die Analyse dieser Daten befindet sich in der Datei "DataAnalysis.xlsx". Dort wird in jedem Arbeitsblatt ein anderer Aspekt der Daten analysiert. Die zugehörigen SQL-Anweisungen, die genutzt wurden, um die Daten aus der Datenbank zu lesen sind jeweils in den Arbeitsblättern (meist rechts) enthalten.
