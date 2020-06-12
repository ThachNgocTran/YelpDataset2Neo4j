UNWIND ['Hotels', 'Hostels'] as cat_name
MATCH (c:Category {category_id: cat_name})<-[:IN_CATEGORY]-(:Business)<-[:REVIEWS]-(:Review)<-[:WROTE]-(u:User)
WITH c, u
WITH c.category_id AS category_id, apoc.coll.sortNodes(COLLECT(DISTINCT u), "pageRank20")[..10] AS userWithPageRank20, apoc.coll.sortNodes(COLLECT(DISTINCT u), "pageRank30")[..10] AS userWithPageRank30, apoc.coll.sortNodes(COLLECT(DISTINCT u), "pageRank40")[..10] AS userWithPageRank40, range(0, 9, 1) AS indexes
UNWIND indexes AS index
RETURN category_id, userWithPageRank20[index].name AS name20, userWithPageRank20[index].pageRank20 AS pageRank20, userWithPageRank30[index].name AS name30, userWithPageRank30[index].pageRank30 AS pageRank30, userWithPageRank40[index].name AS name40, userWithPageRank40[index].pageRank40 AS pageRank40