SELECT * FROM Country;

SELECT * FROM Region;

SELECT * FROM City;

SELECT * FROM Address;

SELECT * FROM Producer;

SELECT P.name AS producer, Co.name AS country,
R.name AS region, 
Ci.name AS city, A.street AS street
FROM Producer P
JOIN Address A ON P.id_address = A.id
JOIN City Ci ON A.id_city = Ci.id
JOIN Region R ON Ci.id_region = R.id
JOIN Country Co ON R.id_country = Co.id
; 