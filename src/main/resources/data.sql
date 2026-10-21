-- =====================================================
-- COUNTRIES
-- =====================================================
INSERT INTO country (id, name) VALUES (1, 'India');
INSERT INTO country (id, name) VALUES (2, 'United States');
INSERT INTO country (id, name) VALUES (3, 'Germany');
INSERT INTO country (id, name) VALUES (4, 'Japan');
INSERT INTO country (id, name) VALUES (5, 'United Kingdom');
INSERT INTO country (id, name) VALUES (6, 'France');
INSERT INTO country (id, name) VALUES (7, 'Brazil');
INSERT INTO country (id, name) VALUES (8, 'Australia');
INSERT INTO country (id, name) VALUES (9, 'Canada');
INSERT INTO country (id, name) VALUES (10, 'China');

-- =====================================================
-- CITIES: India (country_id = 1)
-- =====================================================
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Mumbai', 12442373, 19.0760, 72.8777, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Delhi', 11034555, 28.7041, 77.1025, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Bengaluru', 8443675, 12.9716, 77.5946, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Hyderabad', 6809970, 17.3850, 78.4867, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Ahmedabad', 5577940, 23.0225, 72.5714, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Chennai', 4646732, 13.0827, 80.2707, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Kolkata', 4496694, 22.5726, 88.3639, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Surat', 4467797, 21.1702, 72.8311, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Pune', 3124458, 18.5204, 73.8567, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Jaipur', 3046163, 26.9124, 75.7873, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Lucknow', 2817105, 26.8467, 80.9462, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Kanpur', 2767031, 26.4499, 80.3319, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Nagpur', 2405665, 21.1458, 79.0882, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Indore', 1964086, 22.7196, 75.8577, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Thane', 1841488, 19.2183, 72.9781, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Bhopal', 1798218, 23.2599, 77.4126, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Visakhapatnam', 1728128, 17.6868, 83.2185, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Patna', 1684222, 25.5941, 85.1376, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Vadodara', 1670806, 22.3072, 73.1812, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Ludhiana', 1618879, 30.9010, 75.8573, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Agra', 1585704, 27.1767, 78.0081, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Nashik', 1486053, 19.9975, 73.7898, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Varanasi', 1198491, 25.3176, 82.9739, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Amritsar', 1132761, 31.6340, 74.8723, 1);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Ranchi', 1073440, 23.3441, 85.3096, 1);

-- =====================================================
-- CITIES: United States (country_id = 2)
-- =====================================================
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('New York', 8336817, 40.7128, -74.0060, 2);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Los Angeles', 3979576, 34.0522, -118.2437, 2);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Chicago', 2693976, 41.8781, -87.6298, 2);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Houston', 2320268, 29.7604, -95.3698, 2);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Phoenix', 1680992, 33.4484, -112.0740, 2);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Philadelphia', 1584064, 39.9526, -75.1652, 2);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('San Antonio', 1547253, 29.4241, -98.4936, 2);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('San Diego', 1423851, 32.7157, -117.1611, 2);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Dallas', 1343573, 32.7767, -96.7970, 2);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('San Jose', 1021795, 37.3382, -121.8863, 2);

-- =====================================================
-- CITIES: Germany (country_id = 3)
-- =====================================================
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Berlin', 3645000, 52.5200, 13.4050, 3);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Hamburg', 1841179, 53.5511, 9.9937, 3);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Munich', 1471508, 48.1351, 11.5820, 3);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Cologne', 1085664, 50.9375, 6.9603, 3);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Frankfurt', 753056, 50.1109, 8.6821, 3);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Stuttgart', 626275, 48.7758, 9.1829, 3);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Düsseldorf', 619294, 51.2277, 6.7735, 3);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Leipzig', 593145, 51.3397, 12.3731, 3);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Dortmund', 587010, 51.5136, 7.4653, 3);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Essen', 582760, 51.4556, 7.0116, 3);

-- =====================================================
-- CITIES: Japan (country_id = 4)
-- =====================================================
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Tokyo', 13960000, 35.6762, 139.6503, 4);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Yokohama', 3750000, 35.4437, 139.6380, 4);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Osaka', 2750000, 34.6937, 135.5023, 4);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Nagoya', 2330000, 35.1815, 136.9066, 4);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Sapporo', 1970000, 43.0618, 141.3545, 4);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Fukuoka', 1610000, 33.5902, 130.4017, 4);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Kawasaki', 1540000, 35.5308, 139.7029, 4);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Kobe', 1520000, 34.6901, 135.1955, 4);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Kyoto', 1460000, 35.0116, 135.7681, 4);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Hiroshima', 1200000, 34.3853, 132.4553, 4);

-- =====================================================
-- CITIES: United Kingdom (country_id = 5)
-- =====================================================
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('London', 8982000, 51.5074, -0.1278, 5);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Birmingham', 1144900, 52.4862, -1.8904, 5);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Leeds', 793139, 53.8008, -1.5491, 5);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Glasgow', 635640, 55.8642, -4.2518, 5);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Sheffield', 584853, 53.3811, -1.4701, 5);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Manchester', 553230, 53.4808, -2.2426, 5);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Edinburgh', 527620, 55.9533, -3.1883, 5);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Liverpool', 498042, 53.4084, -2.9916, 5);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Bristol', 467099, 51.4545, -2.5879, 5);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Cardiff', 362756, 51.4816, -3.1791, 5);

-- =====================================================
-- CITIES: France (country_id = 6)
-- =====================================================
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Paris', 2161000, 48.8566, 2.3522, 6);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Marseille', 861635, 43.2965, 5.3698, 6);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Lyon', 513275, 45.7640, 4.8357, 6);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Toulouse', 479553, 43.6047, 1.4442, 6);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Nice', 342669, 43.7102, 7.2620, 6);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Nantes', 309346, 47.2184, -1.5536, 6);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Montpellier', 285121, 43.6108, 3.8767, 6);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Strasbourg', 280966, 48.5734, 7.7521, 6);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Bordeaux', 254436, 44.8378, -0.5792, 6);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Lille', 232787, 50.6292, 3.0573, 6);

-- =====================================================
-- CITIES: Brazil (country_id = 7)
-- =====================================================
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('São Paulo', 12325232, -23.5505, -46.6333, 7);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Rio de Janeiro', 6747815, -22.9068, -43.1729, 7);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Brasília', 3055149, -15.7939, -47.8828, 7);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Salvador', 2886698, -12.9777, -38.5016, 7);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Fortaleza', 2686612, -3.7319, -38.5267, 7);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Belo Horizonte', 2521564, -19.9167, -43.9345, 7);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Manaus', 2219580, -3.1190, -60.0217, 7);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Curitiba', 1948626, -25.4284, -49.2733, 7);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Recife', 1653461, -8.0476, -34.8770, 7);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Porto Alegre', 1488252, -30.0346, -51.2177, 7);

-- =====================================================
-- CITIES: Australia (country_id = 8)
-- =====================================================
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Sydney', 5312163, -33.8688, 151.2093, 8);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Melbourne', 5078193, -37.8136, 144.9631, 8);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Brisbane', 2514184, -27.4698, 153.0251, 8);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Perth', 2085973, -31.9505, 115.8605, 8);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Adelaide', 1376601, -34.9285, 138.6007, 8);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Gold Coast', 679127, -28.0167, 153.4000, 8);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Canberra', 453558, -35.2809, 149.1300, 8);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Newcastle', 322278, -32.9283, 151.7817, 8);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Hobart', 240342, -42.8821, 147.3272, 8);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Darwin', 139902, -12.4634, 130.8456, 8);

-- =====================================================
-- CITIES: Canada (country_id = 9)
-- =====================================================
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Toronto', 2794356, 43.6532, -79.3832, 9);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Montreal', 1762949, 45.5017, -73.5673, 9);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Calgary', 1306784, 51.0447, -114.0719, 9);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Ottawa', 1017449, 45.4215, -75.6972, 9);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Edmonton', 1010899, 53.5461, -113.4938, 9);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Winnipeg', 749607, 49.8951, -97.1384, 9);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Vancouver', 662248, 49.2827, -123.1207, 9);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Hamilton', 569353, 43.2557, -79.8711, 9);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Quebec City', 549459, 46.8139, -71.2080, 9);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Halifax', 439819, 44.6488, -63.5752, 9);

-- =====================================================
-- CITIES: China (country_id = 10)
-- =====================================================
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Chongqing', 32054159, 29.4316, 106.9123, 10);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Shanghai', 24870895, 31.2304, 121.4737, 10);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Beijing', 21893095, 39.9042, 116.4074, 10);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Chengdu', 20937757, 30.5728, 104.0668, 10);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Guangzhou', 18676605, 23.1291, 113.2644, 10);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Shenzhen', 17494398, 22.5431, 114.0579, 10);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Tianjin', 13866009, 39.3434, 117.3616, 10);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Xi''an', 12952907, 34.3416, 108.9398, 10);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Wuhan', 12326518, 30.5928, 114.3055, 10);
INSERT INTO city (name, population, latitude, longitude, country_id) VALUES ('Hangzhou', 11936010, 30.2741, 120.1551, 10);