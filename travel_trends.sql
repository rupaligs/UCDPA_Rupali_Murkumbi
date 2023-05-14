select * from travel_ireland

SELECT COUNT(*)
FROM travel_ireland;

SELECT * 
FROM travel_ireland
  WHERE VALUE IS NULL OR VALUE = '';
  

DELETE FROM travel_ireland
WHERE
  (VALUE IS NULL OR VALUE = '')
  

SELECT COUNT(*)
FROM travel_ireland;

SELECT Statistic_Label,Reason_Journey,Quarter
FROM travel_ireland
WHERE Reason_Journey IS 'Holiday'
GROUP BY Quarter;

/* testing comment */

SELECT Domestic,Reason_Journey,Quarter,ROUND(SUM(VALUE)/24) AS Days_Traveled
FROM travel_ireland
WHERE substr(Quarter,1,4) in ('2021','2022')
GROUP BY Domestic,Reason_Journey,Quarter;


SELECT Statistic_Label,Domestic,Quarter,ROUND(SUM(VALUE)) AS Expenditure_in_million
FROM travel_ireland
WHERE Statistic_Label='Estimated Expenditure by Irish Residents'
GROUP BY Quarter,Domestic,Statistic_Label;

