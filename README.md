# MongoDB-and-Neo4j-Code

This project was created for my Data Modelling unit at university. It involved analyzing data from 20 news reports related to cyber crimes. The analysis includes creating two databases: a MongoDB database for storing and querying data, and a Neo4j database for visualizing relationships between entities involved in cyber crimes.

## Technologies Used
- **MongoDB**: Version 8.0  
  MongoDB is used to store structured data from the cyber crime reports and perform queries to extract meaningful insights.
  
- **Neo4j**: Enterprise Version 5.25.1  
  Neo4j is used to create a graphical representation of the relationships between different entities involved in cyber crimes, such as perpetrators, victims, and crime types.


## Steps for Running the Project

### MongoDB
1. **Install MongoDB**: Ensure MongoDB version 8.0 is installed on your system.
2. **Populate the MongoDB Database**:  
   Open the `MongoDbCode.js` script to create and populate the MongoDB database with the analyzed data.
3. **Run Queries**:  
   Open the `queries.js` script to run the queries I created to complete the assessment. These queries analyze the data stored in the MongoDB database.

### Neo4j
1. **Install Neo4j**: Install Neo4j Enterprise version 5.25.1 or use a Neo4j Cloud instance.
2. **Create the Graph**:  
   Open the `Neo4j.cypher` script and run the relevant parts to create the Neo4j graph database. This will generate nodes and relationships based on the cyber crime data.
3. **Visualize Relationships**:  
   Open the `visualization.cypher` script to run the queries required for visualizing relationships between entities like perpetrators, victims, and crime types.

## Conclusion
This project demonstrates my knowledge of MongoDB and Neo4j and how they can be utilized for storing, querying, and visualizing data related to cyber crimes. By analyzing the data from 20 news reports, the project provides insights into various crime patterns and the relationships between different entities involved in cyber crimes.

