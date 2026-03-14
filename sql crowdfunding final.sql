SHOW VARIABLES LIKE 'local_infile';
LOAD DATA LOCAL INFILE 'C:/Users/Ashutosh/Documents/crowdfunding_clean.csv'
INTO TABLE projects
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


USE crowdfunding;

LOAD DATA LOCAL INFILE 'C:/Users/ashut/OneDrive/Documents/crowdfunding_clean.csv'
INTO TABLE projects
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
USE crowdfunding;



CREATE TABLE projects (
   id BIGINT,
   state VARCHAR(50),
   name TEXT,
   country VARCHAR(10),
   creator_id BIGINT,
   location_id BIGINT,
   category_id INT,
   created_date DATETIME,
   deadline_date DATETIME,
   updated_date DATETIME,
   state_changed_date DATETIME,
   successful_date DATETIME,
   launched_date DATETIME,
   goal DECIMAL(15,2),
   pledged DECIMAL(15,2),
   currency VARCHAR(10),
   currency_symbol VARCHAR(5),
   usd_pledged DECIMAL(15,2),
   static_usd_rate DECIMAL(10,4),
   backers_count INT,
   spotlight VARCHAR(10),
   staff_pick VARCHAR(10),
   blurb TEXT,
   currency_trailing_code VARCHAR(10),
   disable_communication VARCHAR(10),
   `Year` INT,
   `month No` INT,
   monthfullname VARCHAR(20),
   Quarter VARCHAR(10),
   Yearmonth VARCHAR(20),
   weekdayno INT,
   weekdayname VARCHAR(20),
   `Financial month` VARCHAR(20),
   `Financial Quarter` VARCHAR(20),
   `Goal amount` DECIMAL(15,2),
   `Goal _ usd` DECIMAL(15,2),
   Goal_Range VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
LOAD DATA LOCAL INFILE 'C:/Users/ashut/OneDrive/Documents/crowdfunding_clean_utf8.csv'
INTO TABLE projects
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
SELECT COUNT(*) FROM projects;
SELECT 
    state,
    COUNT(id) AS total_projects
FROM projects
GROUP BY state
ORDER BY total_projects DESC;
SELECT 
    country,
    COUNT(id) AS total_projects
FROM projects
GROUP BY country
ORDER BY total_projects DESC;
SELECT 
    category_id,
    COUNT(id) AS total_projects
FROM projects
GROUP BY category_id
ORDER BY total_projects DESC;
SELECT 
    `Year`,
    COUNT(id) AS total_projects
FROM projects
GROUP BY `Year`
ORDER BY `Year`;
SELECT 
    `Year`,
    Quarter,
    COUNT(id) AS total_projects
FROM projects
GROUP BY `Year`, Quarter
ORDER BY `Year`, Quarter;
SELECT 
    `Year`,
    `month No`,
    monthfullname,
    COUNT(id) AS total_projects
FROM projects
GROUP BY `Year`, `month No`, monthfullname
ORDER BY `Year`, `month No`;
SELECT 
    SUM(pledged) AS total_amount_raised
FROM projects
WHERE state = 'successful';
SELECT 
    SUM(backers_count) AS total_backers
FROM projects
WHERE state = 'successful';
SELECT state, COUNT(*) 
FROM projects
GROUP BY state;

LOAD DATA LOCAL INFILE 
'C:/Users/ashut/OneDrive/Documents/crowdfunding_clean_utf8.csv'
INTO TABLE projects
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@id, @state, @name, @country, @creator_id, @location_id, @category_id,
 @created_date, @deadline_date, @updated_date, @state_changed_at,
 @successful_date, @launched_date, @goal, @pledged, @currency,
 @currency_symbol, @usd_pledged, @static_usd_rate, @backers_count,
 @spotlight, @staff_pick)
SET
created_date   = STR_TO_DATE(@created_date, '%d-%m-%Y %H:%i'),
deadline_date  = STR_TO_DATE(@deadline_date, '%d-%m-%Y %H:%i'),
launched_date  = STR_TO_DATE(@launched_date, '%d-%m-%Y %H:%i'),
successful_date= STR_TO_DATE(@successful_date, '%d-%m-%Y %H:%i');
SELECT COUNT(*) FROM projects;
SELECT 
SUM(pledged) AS total_amount_raised
FROM projects
WHERE state = 'successful';
SELECT 
SUM(backers_count) AS total_backers
FROM projects
WHERE state = 'successful';
SELECT 
AVG(DATEDIFF(deadline_date, launched_date)) 
AS avg_project_duration_days
FROM projects
WHERE state = 'successful';
SELECT deadline_date, launched_date
FROM projects
WHERE state='successful'
LIMIT 10;

CREATE TABLE projects (
id BIGINT,
state VARCHAR(50),
name TEXT,
country VARCHAR(10),
creator_id BIGINT,
location_id BIGINT,
category_id INT,
created_date VARCHAR(50),
deadline_date VARCHAR(50),
updated_date VARCHAR(50),
state_changed_at VARCHAR(50),
successful_date VARCHAR(50),
launched_date VARCHAR(50),
goal DOUBLE,
pledged DOUBLE,
currency VARCHAR(10),
currency_symbol VARCHAR(10),
usd_pledged DOUBLE,
static_usd_rate DOUBLE,
backers_count INT,
spotlight VARCHAR(10),
staff_pick VARCHAR(10)
);
LOAD DATA LOCAL INFILE 
'C:/Users/ashut/OneDrive/Documents/crowdfunding_clean_utf8.csv'
INTO TABLE projects
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
SET SQL_SAFE_UPDATES = 0;
DROP TABLE projects;
CREATE TABLE projects (
id BIGINT,
state VARCHAR(50),
name TEXT,
country VARCHAR(10),
creator_id BIGINT,
location_id BIGINT,
category_id INT,
created_date VARCHAR(50),
deadline_date VARCHAR(50),
updated_date VARCHAR(50),
state_changed_at VARCHAR(50),
successful_date VARCHAR(50),
launched_date VARCHAR(50),
goal DOUBLE,
pledged DOUBLE,
currency VARCHAR(10),
currency_symbol VARCHAR(10),
usd_pledged DOUBLE,
static_usd_rate DOUBLE,
backers_count INT,
spotlight VARCHAR(10),
staff_pick VARCHAR(10)
);
LOAD DATA LOCAL INFILE 
'C:/Users/ashut/OneDrive/Documents/crowdfunding_clean_utf8.csv'
INTO TABLE projects
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
SELECT created_date
FROM projects
WHERE created_date IS NOT NULL
LIMIT 20;
SET SQL_SAFE_UPDATES = 0;

UPDATE projects
SET created_date = STR_TO_DATE(created_date, '%d-%m-%Y %H:%i')
WHERE created_date LIKE '__-__-____ __:__';
SELECT created_date
FROM projects
LIMIT 5;
UPDATE projects
SET deadline_date = STR_TO_DATE(deadline_date, '%d-%m-%Y %H:%i')
WHERE deadline_date LIKE '__-__-____ __:__';

UPDATE projects
SET launched_date = STR_TO_DATE(launched_date, '%d-%m-%Y %H:%i')
WHERE launched_date LIKE '__-__-____ __:__';

UPDATE projects
SET successful_date = STR_TO_DATE(successful_date, '%d-%m-%Y %H:%i')
WHERE successful_date LIKE '__-__-____ __:__';
UPDATE projects
SET deadline_date = STR_TO_DATE(deadline_date, '%d-%m-%Y %H:%i')
WHERE deadline_date IS NOT NULL
AND deadline_date REGEXP '^[0-9]{2}-[0-9]{2}-[0-9]{4}';
UPDATE projects
SET launched_date = STR_TO_DATE(launched_date, '%d-%m-%Y %H:%i')
WHERE launched_date IS NOT NULL
AND launched_date REGEXP '^[0-9]{2}-[0-9]{2}-[0-9]{4}';
SELECT deadline_date
FROM projects
WHERE deadline_date LIKE '%-%-%'
LIMIT 10;
SELECT successful_date
FROM projects
WHERE successful_date IS NOT NULL
AND successful_date NOT REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}'
LIMIT 20;
UPDATE projects
SET successful_date = NULL
WHERE successful_date IS NOT NULL
AND successful_date NOT REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}';
UPDATE projects
SET created_date = STR_TO_DATE(CONCAT(created_date, '-01'), '%Y-%m-%d')
WHERE created_date REGEXP '^[0-9]{4}-[0-9]{2}$';
SELECT created_date
FROM projects
WHERE created_date NOT REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}'
AND created_date IS NOT NULL
LIMIT 20;
DROP TABLE projects;
CREATE TABLE projects (
    id BIGINT,
    name TEXT,
    category VARCHAR(100),
    main_category VARCHAR(100),
    currency VARCHAR(10),
    deadline VARCHAR(50),
    goal DOUBLE,
    launched VARCHAR(50),
    pledged DOUBLE,
    state VARCHAR(50),
    backers INT,
    country VARCHAR(10),
    usd_pledged DOUBLE
);
LOAD DATA LOCAL INFILE 
'C:/Users/ashut/OneDrive/Documents/crowdfunding_clean_utf8.csv'
INTO TABLE projects
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
SELECT * FROM projects LIMIT 5;
SELECT COUNT(*) FROM projects;
SELECT * FROM projects LIMIT 1;

CREATE TABLE projects (
    id BIGINT,
    state VARCHAR(50),
    name TEXT,
    country VARCHAR(10),
    creator_id BIGINT,
    location_id BIGINT,
    category_id BIGINT,
    created_date VARCHAR(50),
    deadline_date VARCHAR(50),
    updated_date VARCHAR(50),
    state_changed_date VARCHAR(50),
    successful_date VARCHAR(50),
    launched_date VARCHAR(50),
    goal DOUBLE,
    pledged DOUBLE,
    currency VARCHAR(10),
    currency_symbol VARCHAR(10),
    usd_pledged DOUBLE,
    static_usd_rate DOUBLE,
    backers_count INT,
    spotlight VARCHAR(10),
    staff_pick VARCHAR(10),
    blurb TEXT,
    currency_trailing_code VARCHAR(10),
    disable_communication VARCHAR(10),
    Year INT,
    `month No` INT,
    monthfullname VARCHAR(20),
    Quarter VARCHAR(10),
    Yearmonth VARCHAR(20),
    weekdayno INT,
    weekdayname VARCHAR(20),
    `Financial month` VARCHAR(20),
    `Financial Quarter` VARCHAR(20),
    `Goal amount` DOUBLE,
    `Goal _ usd` DOUBLE,
    Goal_Range VARCHAR(50)
);
LOAD DATA LOCAL INFILE 
'C:/Users/ashut/OneDrive/Documents/crowdfunding_clean_utf8.csv'
INTO TABLE projects
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
SELECT * FROM projects LIMIT 3;
UPDATE projects
SET created_date = STR_TO_DATE(created_date, '%d-%m-%Y %H:%i')
WHERE created_date REGEXP '^[0-9]{2}-[0-9]{2}-[0-9]{4}';
UPDATE projects
SET deadline_date = STR_TO_DATE(deadline_date, '%d-%m-%Y %H:%i')
WHERE deadline_date REGEXP '^[0-9]{2}-[0-9]{2}-[0-9]{4}';

UPDATE projects
SET updated_date = STR_TO_DATE(updated_date, '%d-%m-%Y %H:%i')
WHERE updated_date REGEXP '^[0-9]{2}-[0-9]{2}-[0-9]{4}';

UPDATE projects
SET state_changed_date = STR_TO_DATE(state_changed_date, '%d-%m-%Y %H:%i')
WHERE state_changed_date REGEXP '^[0-9]{2}-[0-9]{2}-[0-9]{4}';

UPDATE projects
SET successful_date = STR_TO_DATE(successful_date, '%d-%m-%Y %H:%i')
WHERE successful_date REGEXP '^[0-9]{2}-[0-9]{2}-[0-9]{4}';

UPDATE projects
SET launched_date = STR_TO_DATE(launched_date, '%d-%m-%Y %H:%i')
WHERE launched_date REGEXP '^[0-9]{2}-[0-9]{2}-[0-9]{4}';
UPDATE projects SET successful_date = NULL WHERE successful_date = '';
UPDATE projects SET created_date = NULL WHERE created_date = '';
UPDATE projects SET deadline_date = NULL WHERE deadline_date = '';
UPDATE projects SET updated_date = NULL WHERE updated_date = '';
UPDATE projects SET state_changed_date = NULL WHERE state_changed_date = '';
UPDATE projects SET launched_date = NULL WHERE launched_date = '';
ALTER TABLE projects
MODIFY created_date DATETIME,
MODIFY deadline_date DATETIME,
MODIFY updated_date DATETIME,
MODIFY state_changed_date DATETIME,
MODIFY successful_date DATETIME,
MODIFY launched_date DATETIME;
UPDATE projects
SET launched_date = NULL
WHERE launched_date IS NOT NULL
AND launched_date NOT REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}';
UPDATE projects
SET created_date = NULL
WHERE created_date IS NOT NULL
AND created_date NOT REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}';

UPDATE projects
SET deadline_date = NULL
WHERE deadline_date IS NOT NULL
AND deadline_date NOT REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}';

UPDATE projects
SET updated_date = NULL
WHERE updated_date IS NOT NULL
AND updated_date NOT REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}';

UPDATE projects
SET state_changed_date = NULL
WHERE state_changed_date IS NOT NULL
AND state_changed_date NOT REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}';

UPDATE projects
SET successful_date = NULL
WHERE successful_date IS NOT NULL
AND successful_date NOT REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}';
ALTER TABLE projects
MODIFY created_date DATETIME,
MODIFY deadline_date DATETIME,
MODIFY updated_date DATETIME,
MODIFY state_changed_date DATETIME,
MODIFY successful_date DATETIME,
MODIFY launched_date DATETIME;
SELECT 
    AVG(DATEDIFF(deadline_date, launched_date)) AS avg_days_successful_projects
FROM projects
WHERE state = 'successful'
AND launched_date IS NOT NULL
AND deadline_date IS NOT NULL;
USE crowdfunding;
SELECT 
    name,
    backers_count,
    usd_pledged
FROM projects
WHERE state = 'successful'
ORDER BY backers_count DESC
LIMIT 10;
SELECT 
    name,
    usd_pledged,
    backers_count
FROM projects
WHERE state = 'successful'
ORDER BY usd_pledged DESC
LIMIT 10;
SELECT 
    ROUND(
        (SUM(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) * 100.0) 
        / COUNT(*), 
    2) AS success_percentage
FROM projects;
SELECT 
    category_id,
    ROUND(
        (SUM(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) * 100.0)
        / COUNT(*),
    2) AS success_percentage
FROM projects
GROUP BY category_id
ORDER BY success_percentage DESC;
SELECT 
    `Year`,
    ROUND(
        (SUM(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) * 100.0)
        / COUNT(*),
    2) AS success_percentage
FROM projects
GROUP BY `Year`
ORDER BY `Year`;
SELECT 
    `Year`,
    `month No`,
    ROUND(
        (SUM(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) * 100.0)
        / COUNT(*),
    2) AS success_percentage
FROM projects
GROUP BY `Year`, `month No`
ORDER BY `Year`, `month No`;
SELECT 
    goal_range,
    ROUND(AVG(state = 'successful') * 100, 2) AS success_percentage
FROM (
    SELECT 
        state,
        CASE 
            WHEN goal < 5000 THEN 'Below 5K'
            WHEN goal BETWEEN 5000 AND 20000 THEN '5K-20K'
            WHEN goal BETWEEN 20001 AND 50000 THEN '20K-50K'
            ELSE 'Above 50K'
        END AS goal_range
    FROM projects
) AS sub
GROUP BY goal_range
ORDER BY success_percentage DESC;