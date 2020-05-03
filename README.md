# YelpDataset2Neo4j
Yelp Dataset is imported into Neo4j Graph Database.

## Raw Data

+ Yelp Dataset: https://www.yelp.com/dataset
  + yelp_academic_dataset_business.json: 145.8 MB
  + yelp_academic_dataset_checkin.json: 428.8 MB => **ignored**.
  + yelp_academic_dataset_review.json: 5.8 GB
  + yelp_academic_dataset_tip.json: 251.2 MB => **ignored**.
  + yelp_academic_dataset_user.json: 3 GB

Note: the 3 files should be put into `.\data` folder of the Jupyter Notebook.

## Intention

Inspired by the book *Graph Algorithms - Practical Examples in Apache Spark & Neo4J (05-2019, Mark Needham, Amy E. Hodler)*, Chapter 7 - *Graph Algorithms in Practice*.

The code of transforming raw data into necessary files, then importing into Neo4j is completely written by me.

After the data ends up as a graph in Neo4j, some Graph Algorithms will be tried out.

## Graph Schema

From Neo4j's Browser, with command `CALL db.schema()`.

![Graph_Schema](expected_schema.jpg)

## Development Environment

+ Windows 8.1 x64.
+ Anaconda3-2020.02 x64.
+ Neo4j v3.5.17.
+ Yelp Dataset (03.05.2020). MD5: `7610af013edf610706021697190dab15`.
+ On Windows, users need sufficient privileges to start/stop Services. A UAC dialog may appear, asking for permission.
+ Additional 3rd party Python libraries: `neo4j-driver`, `py2neo`, `regex`, `reverse_geocoder`.

## License

MIT License
