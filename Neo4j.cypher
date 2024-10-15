// Creating shared nodes for IndustryType.
CREATE 
// Industry Types
(medicalIndustry:IndustryType {name: "Medical"}),
(entertainmentIndustry:IndustryType {name: "Entertainment"}),
(waterIndustry:IndustryType {name: "Water"}),
(governmentIndustry:IndustryType {name: "Government"}),
(energyIndustry:IndustryType {name: "Energy"}),
(militaryIndustry:IndustryType {name: "Military"}),
(communicationIndustry:IndustryType {name: "Communication"}),
(publicIndustry:IndustryType {name: "Public"}),

//Creating a status for the databreach True or False Statement as yes or no.
// Data Breach Statuses
(dataBreachYes:DataBreach {status: "Yes"}),
(dataBreachNo:DataBreach {status: "No"}),

// Creating 3 different types for CyberCrimeType.
(ransomwareAttack:CyberCrimeType {name: "Ransomware Attack"}),
(dataBreachAttack:CyberCrimeType {name: "Data Breach"}),
(cyberAttack:CyberCrimeType {name: "Cyber Attack"}),

// Creating 20 reports along with their Relationships to each node.
// Report 1.
(abcNews:NewsMedia {name: "ABC News"})-[:REPORTED]->(report1:Report {title: "Medical Research Group Harry Perkins Institute Investigates Major Cyber Security Breach"}),
(report1)-[:HAS_CYBERCRIME_TYPE]->(ransomwareAttack),
(report1)-[:BELONGS_TO_INDUSTRY]->(medicalIndustry),
(report1)-[:HAS_DATA_BREACH_STATUS]->(dataBreachYes),

// Report 2.
(abcNews)-[:REPORTED]->(report2:Report {title: "Ticketek Australia Reports Potential Data Breach"}),
(report2)-[:HAS_CYBERCRIME_TYPE]->(dataBreachAttack),
(report2)-[:BELONGS_TO_INDUSTRY]->(entertainmentIndustry),
(report2)-[:HAS_DATA_BREACH_STATUS]->(dataBreachYes),

// Report 3.
(abcNews)-[:REPORTED]->(report3:Report {title: "Queensland water supplier Sunwater targeted by hackers in months-long undetected cyber security breach"}),
(report3)-[:HAS_CYBERCRIME_TYPE]->(ransomwareAttack),
(report3)-[:BELONGS_TO_INDUSTRY]->(waterIndustry),
(report3)-[:HAS_DATA_BREACH_STATUS]->(dataBreachNo),

// Report 4.
(abcNews)-[:REPORTED]->(report4:Report {title: "Service NSW Confirms 180,000 Customers' details were Exposed in a cyber security breach"}),
(report4)-[:HAS_CYBERCRIME_TYPE]->(dataBreachAttack),
(report4)-[:BELONGS_TO_INDUSTRY]->(governmentIndustry),
(report4)-[:HAS_DATA_BREACH_STATUS]->(dataBreachYes),

// Report 5.
(abcNews)-[:REPORTED]->(report5:Report {title: "China link possible in cyber attack on Australian Parliament computer system, ABC understands"}),
(report5)-[:HAS_CYBERCRIME_TYPE]->(cyberAttack),
(report5)-[:BELONGS_TO_INDUSTRY]->(governmentIndustry),
(report5)-[:HAS_DATA_BREACH_STATUS]->(dataBreachNo),

// Report 6.
(abcNews)-[:REPORTED]->(report6:Report {title: "Defence Shipbuilder Austal hit by Cyber security breach and Extortion Attempt"}),
(report6)-[:HAS_CYBERCRIME_TYPE]->(dataBreachAttack),
(report6)-[:BELONGS_TO_INDUSTRY]->(governmentIndustry),
(report6)-[:HAS_DATA_BREACH_STATUS]->(dataBreachYes),

// Report 7.
(abcNews)-[:REPORTED]->(report7:Report {title: "Cyber attack shuts down US fuel pipeline operator Colonial, raising fears of price hike"}),
(report7)-[:HAS_CYBERCRIME_TYPE]->(ransomwareAttack),
(report7)-[:BELONGS_TO_INDUSTRY]->(energyIndustry),
(report7)-[:HAS_DATA_BREACH_STATUS]->(dataBreachYes),

// Report 8.
(abcNews)-[:REPORTED]->(report8:Report {title: "Cyber security chief says MediSecure data breach is an 'isolated' attack but warns health data a prime target for cybercrime."}),
(report8)-[:HAS_CYBERCRIME_TYPE]->(ransomwareAttack),
(report8)-[:BELONGS_TO_INDUSTRY]->(medicalIndustry),
(report8)-[:HAS_DATA_BREACH_STATUS]->(dataBreachYes),

// Report 9.
(abcNews)-[:REPORTED]->(report9:Report {title: "WA government insurance claim data potentially stolen by ransomware gang AlphV in law firm hack"}),
(report9)-[:HAS_CYBERCRIME_TYPE]->(ransomwareAttack),
(report9)-[:BELONGS_TO_INDUSTRY]->(medicalIndustry),
(report9)-[:HAS_DATA_BREACH_STATUS]->(dataBreachYes),

// Report 10.
(abcNews)-[:REPORTED]->(report10:Report {title: "Australian Defence Department caught up in ransomware attack"}),
(report10)-[:HAS_CYBERCRIME_TYPE]->(ransomwareAttack),
(report10)-[:BELONGS_TO_INDUSTRY]->(militaryIndustry),
(report10)-[:HAS_DATA_BREACH_STATUS]->(dataBreachYes),

// Report 11.
(reutersNews:NewsMedia {name: "Reuters"})-[:REPORTED]->(report11:Report {title: "Exclusive: Hacker uses Telegram chatbots to leak data of top Indian insurer Star Health."}),
(report11)-[:HAS_CYBERCRIME_TYPE]->(dataBreachAttack),
(report11)-[:BELONGS_TO_INDUSTRY]->(medicalIndustry),
(report11)-[:HAS_DATA_BREACH_STATUS]->(dataBreachYes),

// Report 12.
(cbaNews:NewsMedia {name: "CBA News"})-[:REPORTED]->(report12:Report {title: "Hamilton spent $5.7 million recovering from February ransomware attack: report"}),
(report12)-[:HAS_CYBERCRIME_TYPE]->(ransomwareAttack),
(report12)-[:BELONGS_TO_INDUSTRY]->(governmentIndustry),
(report12)-[:HAS_DATA_BREACH_STATUS]->(dataBreachNo),

// Report 13.
(cbcNews:NewsMedia {name: "CBC News"})-[:REPORTED]->(report13:Report {title: "Newfoundland television station hit by ransomware attack, data breach"}),
(report13)-[:HAS_CYBERCRIME_TYPE]->(ransomwareAttack),
(report13)-[:BELONGS_TO_INDUSTRY]->(communicationIndustry),
(report13)-[:HAS_DATA_BREACH_STATUS]->(dataBreachYes),

// Report 14.
(cbcNews)-[:REPORTED]->(report14:Report {title: "London Drugs Confirms it Was the Victim of a Ransomware Attack"}),
(report14)-[:HAS_CYBERCRIME_TYPE]->(ransomwareAttack),
(report14)-[:BELONGS_TO_INDUSTRY]->(medicalIndustry),
(report14)-[:HAS_DATA_BREACH_STATUS]->(dataBreachYes),

// Report 15.
(cbcNews)-[:REPORTED]->(report15:Report {title: "Ransomware attack on England's health system highlights the life-threatening impact of cybercrime"}),
(report15)-[:HAS_CYBERCRIME_TYPE]->(ransomwareAttack),
(report15)-[:BELONGS_TO_INDUSTRY]->(medicalIndustry),
(report15)-[:HAS_DATA_BREACH_STATUS]->(dataBreachYes),

// Report 16.
(reutersNews)-[:REPORTED]->(report16:Report {title: "Ukraine's top mobile operator hit by biggest cyberattack of war."}),
(report16)-[:HAS_CYBERCRIME_TYPE]->(cyberAttack),
(report16)-[:BELONGS_TO_INDUSTRY]->(communicationIndustry),
(report16)-[:HAS_DATA_BREACH_STATUS]->(dataBreachNo),

// Report 17.
(abcNews)-[:REPORTED]->(report17:Report {title: "Crypto-ransomware attack targets Australians via fake Australia Post emails"}),
(report17)-[:HAS_CYBERCRIME_TYPE]->(ransomwareAttack),
(report17)-[:BELONGS_TO_INDUSTRY]->(publicIndustry),
(report17)-[:HAS_DATA_BREACH_STATUS]->(dataBreachNo),

// Report 18.
(abcNews)-[:REPORTED]->(report18:Report {title: "Cyber attacks: Pharmacies, patient records targeted 'ransomware' attacks"}),
(report18)-[:HAS_CYBERCRIME_TYPE]->(ransomwareAttack),
(report18)-[:BELONGS_TO_INDUSTRY]->(medicalIndustry),
(report18)-[:HAS_DATA_BREACH_STATUS]->(dataBreachYes),

// Report 19.
(abcNews)-[:REPORTED]->(report19:Report {title: "UnitingCare cyber attack claimed by notorious ransom gang REvil/Sodin"}),
(report19)-[:HAS_CYBERCRIME_TYPE]->(ransomwareAttack),
(report19)-[:BELONGS_TO_INDUSTRY]->(medicalIndustry),
(report19)-[:HAS_DATA_BREACH_STATUS]->(dataBreachNo),

// Report 20.
(abcNews)-[:REPORTED]->(report20:Report {title: "Petya cyber attack: Cadbury chocolate factory in Tasmania hit by ransomware"}),
(report20)-[:HAS_CYBERCRIME_TYPE]->(ransomwareAttack),
(report20)-[:BELONGS_TO_INDUSTRY]->(medicalIndustry),
(report20)-[:HAS_DATA_BREACH_STATUS]->(dataBreachYes);





// Show all nodes and relationships in a graphical format.
MATCH (n)
RETURN n


// Delete all existing nodes and relationships for testing.
MATCH (n)
DETACH DELETE n;


// Query 1.
// Query to display the shortest path between two reports.
MATCH p = shortestPath((report1:Report {title: "Medical Research Group Harry Perkins Institute Investigates Major Cyber Security Breach"})-[*]-(report2:Report {title: "Ransomware attack on England's health system highlights the life-threatening impact of cybercrime"}))
RETURN p;


// Query 2
// query to find two reports that are not connected to each other.
MATCH (report1:Report), (report2:Report)
WHERE NOT EXISTS {MATCH (report1)-[]-(report2)}
AND report1 <> report2
WITH report1, report2
LIMIT 1
RETURN report1, report2;


// Query 3
// Query to count the most frequent cybercrime types by industry and display them in decending order.
MATCH (r:Report)-[:HAS_CYBERCRIME_TYPE]->(ct:CyberCrimeType), (r)-[:BELONGS_TO_INDUSTRY]->(ind:IndustryType)
RETURN ind.name AS Industry, ct.name AS CyberCrimeType, COUNT(r) AS ReportCount
ORDER BY ReportCount DESC;



// query to display the relationships between industry type and the types of cyber crime that have been reported.
MATCH (r:Report)-[:HAS_CYBERCRIME_TYPE]->(ct:CyberCrimeType),  (r)-[:BELONGS_TO_INDUSTRY]->(ind:IndustryType)
RETURN r, ct, ind;



// Query to determine how many reports indicated there was a data breach Data which is yes or no for each cyber crime type displayed in descending order.
MATCH (r:Report)-[:HAS_CYBERCRIME_TYPE]->(ct:CyberCrimeType),  (r)-[:HAS_DATA_BREACH_STATUS]->(db:DataBreach)
RETURN ct.name AS CyberCrimeType, db.status AS DataBreachStatus, 
COUNT(r) AS Occurrences
ORDER BY Occurrences DESC;



// query to find the relationships between cybercrime types and data breach statuses either yes or no as a graphical representaion.
MATCH (r:Report)-[:HAS_CYBERCRIME_TYPE]->(ct:CyberCrimeType), (r)-[:HAS_DATA_BREACH_STATUS]->(db:DataBreach)
RETURN ct, db, r;


// Queries for hypotheses.

// My first hypothesis is that the industry that is most affected by cyber crime attacks is the government.

// Query to count the amount of cyber crime types for each industry by industry
MATCH (r:Report)-[:BELONGS_TO_INDUSTRY]->(ind:IndustryType)
RETURN ind.name AS Industry, COUNT(r) AS ReportCount
ORDER BY ReportCount DESC;

// Graph Query for Government Reports by Cybercrime Type
MATCH (r:Report)-[:HAS_CYBERCRIME_TYPE]->(ct:CyberCrimeType), (r)-[:BELONGS_TO_INDUSTRY]->(ind:IndustryType {name: "Government"})
RETURN ct.name AS CyberCrimeType, COUNT(r) AS ReportCount
ORDER BY ReportCount DESC;

// Detailed report analysis of cybercrime types and industries
MATCH (r:Report)-[:HAS_CYBERCRIME_TYPE]->(ct:CyberCrimeType),  (r)-[:BELONGS_TO_INDUSTRY]->(ind:IndustryType)
RETURN r, ct, ind;

// My second hypothesis is that the medical industry experiences more Data Breaches compared to Ransomware Attacks.

// Count occurrences of each cybercrime type within the medical industry
MATCH (r:Report)-[:HAS_CYBERCRIME_TYPE]->(ct:CyberCrimeType), (r)-[:BELONGS_TO_INDUSTRY]->(ind:IndustryType {name: "Medical"})
RETURN ct.name AS CyberCrimeType, COUNT(r) AS ReportCount
ORDER BY ReportCount DESC;

// Graph Query to Compare Data Breach and Ransomware Incidents in the Medical Industry
MATCH (r:Report)-[:HAS_CYBERCRIME_TYPE]->(ct:CyberCrimeType), (r)-[:HAS_DATA_BREACH_STATUS]->(db:DataBreach), (r)-[:BELONGS_TO_INDUSTRY]->(ind:IndustryType {name: "Medical"})
RETURN db.name AS DataBreachStatus, ct.name AS CyberCrimeType, COUNT(r) AS ReportCount
ORDER BY ReportCount DESC;

// Query to check data breach status to ensure that the data was actually breached and not just reported.
MATCH (r:Report)-[:HAS_DATA_BREACH_STATUS]->(db:DataBreach), (r)-[:BELONGS_TO_INDUSTRY]->(ind:IndustryType {name: "Medical"})
RETURN db.name AS DataBreachStatus, COUNT(r) AS ReportCount
ORDER BY ReportCount DESC;
