use project;  

    ---- total number of users ------ 
SELECT COUNT(*) AS total_users FROM users;


 ---- number of Successful vs Failed logins ----
SELECT login_status, COUNT(*) AS total
FROM login_history
GROUP BY login_status;


---- Login count by location ------- 
SELECT location,
    COUNT(*) AS total_logins
FROM login_history
GROUP BY location
ORDER BY total_logins DESC;


    ---- Failed logins by user ------- 
SELECT user_id,
    COUNT(*) AS failed_attempts
FROM login_history
WHERE login_status = 'Failed'
GROUP BY user_id;

 
  ---- Failed login reasons ----- 
SELECT failure_reason,
    COUNT(*) AS total_failures
FROM login_history
WHERE login_status = 'Failed'
GROUP BY failure_reason
ORDER BY total_failures DESC;


 ---- User with the highest failed attempts ----- 3
SELECT 
    user_id,
    COUNT(*) AS failed_attempts
FROM login_history
WHERE login_status = 'Failed'
GROUP BY user_id
ORDER BY failed_attempts DESC
LIMIT 1;


   ------- Find high-risk logins --------- 
SELECT * FROM risk_result
WHERE risk_level = 'High'
ORDER BY risk_score DESC;


----- out of total logins how many were fail and successful ----- 
SELECT
    user_id,
    COUNT(*) AS total_logins,
    sum(login_status = 'Success') AS successful_logins,
    SUM(login_status = 'Failed') AS failed_logins
FROM login_history
GROUP BY user_id;


     ------ Find logins from different locations ------ 
SELECT user_id,
    COUNT(DISTINCT location) AS different_locations
FROM login_history
GROUP BY user_id
HAVING COUNT(DISTINCT location) > 1;

    
    ------- Find users who used multiple devices ------- 
SELECT user_id,
    COUNT(DISTINCT device_id) AS different_devices
FROM login_history
group by user_id
HAVING COUNT(DISTINCT device_id) > 1;


------ JOIN Analysis —--- 
SELECT
    u.user_id,
    u.user_name,
    u.department,
    u.role,
    l.login_datetime,
    l.location,
    l.login_status
FROM users u
inner JOIN login_history l
    ON u.user_id = l.user_id;
    

------- Show device details with login count ------- 
SELECT
    d.device_id,
    d.device_name,
    d.device_type,
    d.operating_system,
    COUNT(l.login_id) AS total_logins
FROM devices d
left JOIN login_history l
    ON d.device_id = l.device_id
GROUP BY
    d.device_id,
    d.device_name,
    d.device_type,
    d.operating_system
ORDER BY total_logins DESC;