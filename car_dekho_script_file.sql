								#(Car Dekho) SQL Assignment Project 1
							#Second Hand Car Dealer Database Questions And Answers 

											-- PROBLEM  STATEMENTS
#	Manager's Query to Employee: How many cars are expected to be available in the year 2023?
SELECT COUNT(*) FROM car_dekho WHERE year=2023; #6 

#	Manager's Query to Employee: Could you provide the number of cars available in the years 2020, 2021, and 2022?
SELECT year,COUNT(*) FROM car_dekho WHERE year IN(2020,2021,2022) GROUP BY year;

#	Client's Request to Employee: Please share the total count of cars, categorized by year.
SELECT year,COUNT(*) FROM car_dekho GROUP BY year;

#	Client's Inquiry to Car Dealer: How many diesel cars were available in the year 2020, and can you provide this information?
SELECT COUNT(*) FROM car_dekho WHERE fuel='diesel' AND year=2020;  # 20 

#	Client's Query to Car Dealer: How many petrol cars were available in the year 2020, and can you share this data?
SELECT COUNT(*) FROM car_dekho WHERE fuel='Petrol' AND year=2020;  #51
 
#	Manager's Request to Employee: Could you break down the total car count by fuel type and year?
SELECT fuel,year,COUNT(*) FROM car_dekho GROUP BY fuel,year;

#	Manager's Inquiry : Are there any years where the number of available cars exceeded 100?
SELECT year,COUNT(*) FROM car_dekho GROUP BY year  HAVING COUNT(*)>100;

#	Manager's Query to Employee: Provide the total car count and car details for the years between 2015 and 2023?
SELECT COUNT(*)  FROM car_dekho WHERE year BETWEEN 2015 AND 2023; #4124
SELECT * FROM car_dekho WHERE year BETWEEN 2015 AND 2023;

#	Client's Query to Car Dealer: A client is interested in knowing the average mileage of cars for each fuel type?
SELECT fuel,AVG(mileage) AS average_mileage FROM car_dekho GROUP BY fuel; 

#	Manager's Task to Employee: Show the minimum, maximum, and average selling prices for each year.
SELECT year,MIN(selling_price),MAX(selling_price),AVG(selling_price) FROM car_dekho GROUP BY YEAR;

#	Manager's Query to Employee: Can you provide a list of the top 10 most listed car models?
SELECT name, COUNT(*) AS top_count FROM car_dekho GROUP BY name ORDER BY top_count DESC LIMIT 10;

#	Client's Request to Car Dealer: The top 10 cars with the lowest selling price in 2023.
SELECT name,selling_price FROM car_dekho WHERE year=2023 ORDER BY selling_price DESC LIMIT 10;

#	Manager's Query to Employee: Breakdown of car transmissions and their respective counts.
	SELECT transmission,COUNT(*) FROM car_dekho GROUP BY transmission;

#	Client's Query to Car Dealer: Please provide the count of cars for each number of seats in 2022.
SELECT seats,COUNT(*) AS car_count FROM car_dekho WHERE year=2022 GROUP BY seats;

#	Manager's Query to Employee: Can you provide a list of cars with over 100 bhp?
SELECT name,COUNT(*) AS car_count FROM car_dekho WHERE max_power>100 GROUP BY name;

#	Manager's Query to Employee: Retrieve all the details of a car named "Maruti Alto 800 VXI" listed in the year 2022.
SELECT * FROM car_dekho WHERE name="Maruti Alto 800 VXI" AND year=2020;

