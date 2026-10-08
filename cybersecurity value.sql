use project;

INSERT INTO users (user_id, user_name, department, role) VALUES
(101, 'Rahul Sharma', 'Finance', 'Analyst'),
(102, 'Priya Patil', 'IT', 'Manager'),
(103, 'Amit Joshi', 'HR', 'Executive'),
(104, 'Sneha Kulkarni', 'Finance', 'Accountant'),
(105, 'Rohan Deshmukh', 'IT', 'Developer'),
(106, 'Neha Pawar', 'Sales', 'Executive'),
(107, 'Vikram Jadhav', 'IT', 'Developer'),
(108, 'Pooja Shinde', 'HR', 'Manager'),
(109, 'Akash More', 'Finance', 'Analyst'),
(110, 'Kavita Gaikwad', 'Sales', 'Manager'),
(111, 'Saurabh Patil', 'IT', 'Analyst'),
(112, 'Anjali Joshi', 'Finance', 'Manager'),
(113, 'Nikhil Pawar', 'Sales', 'Executive'),
(114, 'Snehal More', 'HR', 'Analyst'),
(115, 'Karan Shinde', 'IT', 'Developer'),
(116, 'Megha Jadhav', 'Finance', 'Accountant'),
(117, 'Aditya Kulkarni', 'Sales', 'Analyst'),
(118, 'Riya Deshmukh', 'HR', 'Executive'),
(119, 'Manish Pawar', 'IT', 'Manager'),
(120, 'Aarti Patil', 'Finance', 'Analyst');
SELECT * FROM users;

INSERT INTO devices (device_id, device_name, device_type, operating_system, first_seen_date) VALUES
(201, 'LAP-101', 'Laptop', 'Windows 11', '2026-01-05'),
(202, 'LAP-102', 'Laptop', 'Windows 11', '2026-01-08'),
(203, 'LAP-103', 'Laptop', 'Windows 10', '2026-01-12'),
(204, 'LAP-104', 'Laptop', 'Windows 11', '2026-01-15'),
(205, 'LAP-105', 'Laptop', 'Windows 11', '2026-01-18'),
(206, 'LAP-106', 'Laptop', 'Windows 10', '2026-01-20'),
(207, 'LAP-107', 'Laptop', 'Windows 11', '2026-01-22'),
(208, 'LAP-108', 'Laptop', 'Windows 11', '2026-01-25'),
(209, 'LAP-109', 'Laptop', 'Windows 10', '2026-01-28'),
(210, 'LAP-110', 'Laptop', 'Windows 11', '2026-02-01'),
(211, 'LAP-111', 'Laptop', 'Windows 11', '2026-02-05'),
(212, 'LAP-112', 'Laptop', 'Windows 10', '2026-02-08'),
(213, 'LAP-113', 'Laptop', 'Windows 11', '2026-02-12'),
(214, 'LAP-114', 'Laptop', 'Windows 11', '2026-02-15'),
(215, 'LAP-115', 'Laptop', 'Windows 10', '2026-02-18'),

(216, 'MOB-201', 'Mobile', 'Android', '2026-02-20'),
(217, 'MOB-202', 'Mobile', 'Android', '2026-02-22'),
(218, 'MOB-203', 'Mobile', 'iOS', '2026-02-25'),
(219, 'MOB-204', 'Mobile', 'Android', '2026-02-28'),
(220, 'MOB-205', 'Mobile', 'iOS', '2026-03-02'),

(221, 'DESK-301', 'Desktop', 'Windows 11', '2026-03-05'),
(222, 'DESK-302', 'Desktop', 'Windows 10', '2026-03-08'),
(223, 'DESK-303', 'Desktop', 'Windows 11', '2026-03-10'),
(224, 'DESK-304', 'Desktop', 'Windows 11', '2026-03-12'),
(225, 'DESK-305', 'Desktop', 'Windows 10', '2026-03-15'),

(226, 'LAP-116', 'Laptop', 'Windows 11', '2026-03-18'),
(227, 'LAP-117', 'Laptop', 'Windows 11', '2026-03-20'),
(228, 'LAP-118', 'Laptop', 'Windows 10', '2026-03-22'),
(229, 'LAP-119', 'Laptop', 'Windows 11', '2026-03-25'),
(230, 'LAP-120', 'Laptop', 'Windows 11', '2026-03-28');
SELECT * FROM devices;

INSERT INTO login_history (login_id, login_datetime, location, login_status, failure_reason, user_id, device_id)
VALUES
-- NORMAL SUCCESSFUL LOGINS
(1001, '2026-08-01 09:15:00', 'Pune', 'Success', NULL, 101, 201),
(1002, '2026-08-01 10:05:00', 'Pune', 'Success', NULL, 102, 202),
(1003, '2026-08-01 09:30:00', 'Pune', 'Success', NULL, 103, 203),
(1004, '2026-08-01 09:45:00', 'Pune', 'Success', NULL, 104, 204),
(1005, '2026-08-01 10:10:00', 'Pune', 'Success', NULL, 105, 205),
(1006, '2026-08-02 09:20:00', 'Pune', 'Success', NULL, 101, 201),
(1007, '2026-08-02 09:50:00', 'Pune', 'Success', NULL, 102, 202),
(1008, '2026-08-02 10:15:00', 'Pune', 'Success', NULL, 103, 203),
(1009, '2026-08-02 09:40:00', 'Pune', 'Success', NULL, 104, 204),
(1010, '2026-08-02 10:25:00', 'Pune', 'Success', NULL, 105, 205),
(1011, '2026-08-03 09:10:00', 'Pune', 'Success', NULL, 106, 206),
(1012, '2026-08-03 09:35:00', 'Pune', 'Success', NULL, 107, 207),
(1013, '2026-08-03 10:00:00', 'Pune', 'Success', NULL, 108, 208),
(1014, '2026-08-03 09:25:00', 'Pune', 'Success', NULL, 109, 209),
(1015, '2026-08-03 10:20:00', 'Pune', 'Success', NULL, 110, 210),
(1016, '2026-08-04 09:15:00', 'Pune', 'Success', NULL, 111, 211),
(1017, '2026-08-04 09:45:00', 'Pune', 'Success', NULL, 112, 212),
(1018, '2026-08-04 10:10:00', 'Pune', 'Success', NULL, 113, 213),
(1019, '2026-08-04 09:30:00', 'Pune', 'Success', NULL, 114, 214),
(1020, '2026-08-04 10:05:00', 'Pune', 'Success', NULL, 115, 215),
(1021, '2026-08-05 09:20:00', 'Pune', 'Success', NULL, 116, 226),
(1022, '2026-08-05 09:40:00', 'Pune', 'Success', NULL, 117, 227),
(1023, '2026-08-05 10:15:00', 'Pune', 'Success', NULL, 118, 228),
(1024, '2026-08-05 09:50:00', 'Pune', 'Success', NULL, 119, 229),
(1025, '2026-08-05 10:30:00', 'Pune', 'Success', NULL, 120, 230),
(1026, '2026-08-05 09:25:00', 'Pune', 'Success', NULL, 101, 201),
(1027, '2026-08-05 10:00:00', 'Pune', 'Success', NULL, 102, 202),
(1028, '2026-08-05 09:35:00', 'Pune', 'Success', NULL, 103, 203),
(1029, '2026-08-05 10:20:00', 'Pune', 'Success', NULL, 104, 204),
(1030, '2026-08-05 09:55:00', 'Pune', 'Success', NULL, 105, 205),
(1031, '2026-08-05 09:40:00', 'Pune', 'Success', NULL, 106, 206),
(1032, '2026-08-05 10:10:00', 'Pune', 'Success', NULL, 107, 207),

-- UNUSUAL SUCCESSFUL LOGINS
(1033, '2026-08-06 02:30:00', 'Pune', 'Success', NULL, 103, 203),
(1034, '2026-08-06 10:00:00', 'Mumbai', 'Success', NULL, 105, 205),
(1035, '2026-08-06 02:45:00', 'Mumbai', 'Success', NULL, 107, 207),
(1036, '2026-08-06 09:30:00', 'Pune', 'Success', NULL, 101, 216),
(1037, '2026-08-06 11:00:00', 'Nashik', 'Success', NULL, 109, 219),

-- FAILED LOGINS
(1038, '2026-08-06 10:35:00', 'Pune', 'Failed', 'Wrong Password', 101, 201),
(1039, '2026-08-06 10:36:00', 'Pune', 'Failed', 'Wrong Password', 101, 201),
(1040, '2026-08-06 10:37:00', 'Pune', 'Failed', 'Wrong Password', 101, 201),

(1041, '2026-08-06 11:10:00', 'Pune', 'Failed', 'Wrong Password', 102, 202),
(1042, '2026-08-06 11:11:00', 'Pune', 'Failed', 'Wrong Password', 102, 202),

(1043, '2026-08-07 09:20:00', 'Pune', 'Failed', 'Invalid Username', 110, 210),
(1044, '2026-08-07 09:21:00', 'Pune', 'Failed', 'Wrong Password', 110, 210),

(1045, '2026-08-07 02:15:00', 'Mumbai', 'Failed', 'Wrong Password', 115, 215),
(1046, '2026-08-07 09:30:00', 'Pune', 'Failed', 'Wrong Password', 115, 215),
(1047, '2026-08-07 09:31:00', 'Pune', 'Failed', 'Wrong Password', 115, 215),

(1048, '2026-08-07 10:15:00', 'Pune', 'Failed', 'Invalid Username', 116, 226),
(1049, '2026-08-07 10:16:00', 'Pune', 'Failed', 'Wrong Password', 116, 226),

(1050, '2026-08-07 02:40:00', 'Mumbai', 'Failed', 'Wrong Password', 118, 228);
SELECT * FROM login_history;

INSERT INTO risk_result (risk_id, risk_score, risk_level, reason, recommendation, calculated_at, user_id, login_id)
VALUES
-- Normal login activity
(501, 15.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-01 09:16:00', 101, 1001),
(502, 12.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-01 10:06:00', 102, 1002),
(503, 14.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-01 09:31:00', 103, 1003),
(504, 10.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-01 09:46:00', 104, 1004),
(505, 13.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-01 10:11:00', 105, 1005),

(506, 11.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-02 09:21:00', 101, 1006),
(507, 16.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-02 09:51:00', 102, 1007),
(508, 12.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-02 10:16:00', 103, 1008),
(509, 15.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-02 09:41:00', 104, 1009),
(510, 14.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-02 10:26:00', 105, 1010),

(511, 13.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-03 09:11:00', 106, 1011),
(512, 17.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-03 09:36:00', 107, 1012),
(513, 12.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-03 10:01:00', 108, 1013),
(514, 15.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-03 09:26:00', 109, 1014),
(515, 14.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-03 10:21:00', 110, 1015),

(516, 11.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-04 09:16:00', 111, 1016),
(517, 16.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-04 09:46:00', 112, 1017),
(518, 13.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-04 10:11:00', 113, 1018),
(519, 15.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-04 09:31:00', 114, 1019),
(520, 12.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-04 10:06:00', 115, 1020),

(521, 14.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-05 09:21:00', 116, 1021),
(522, 13.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-05 09:41:00', 117, 1022),
(523, 16.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-05 10:16:00', 118, 1023),
(524, 11.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-05 09:51:00', 119, 1024),
(525, 15.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-05 10:31:00', 120, 1025),

(526, 13.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-05 09:26:00', 101, 1026),
(527, 14.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-05 10:01:00', 102, 1027),
(528, 12.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-05 09:36:00', 103, 1028),
(529, 15.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-05 10:21:00', 104, 1029),
(530, 11.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-05 09:56:00', 105, 1030),
(531, 14.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-05 09:41:00', 106, 1031),
(532, 16.00, 'Low', 'Normal login time, location and device', 'Allow Login', '2026-08-05 10:11:00', 107, 1032),

-- Unusual successful logins
(533, 55.00, 'Medium', 'Unusual login time', 'Additional Verification', '2026-08-06 02:31:00', 103, 1033),
(534, 50.00, 'Medium', 'Unusual login location', 'Additional Verification', '2026-08-06 10:01:00', 105, 1034),
(535, 82.00, 'High', 'Unusual login time and location', 'Additional Verification', '2026-08-06 02:46:00', 107, 1035),
(536, 65.00, 'Medium', 'New device detected', 'Additional Verification', '2026-08-06 09:31:00', 101, 1036),
(537, 70.00, 'Medium', 'Unusual location and new device', 'Additional Verification', '2026-08-06 11:01:00', 109, 1037),

-- Failed login attempts
(538, 45.00, 'Medium', 'Failed login due to wrong password', 'Monitor Activity', '2026-08-06 10:36:00', 101, 1038),
(539, 55.00, 'Medium', 'Multiple failed login attempts', 'Additional Verification', '2026-08-06 10:37:00', 101, 1039),
(540, 65.00, 'Medium', 'Multiple consecutive failed attempts', 'Additional Verification', '2026-08-06 10:38:00', 101, 1040),

(541, 40.00, 'Medium', 'Failed login due to wrong password', 'Monitor Activity', '2026-08-06 11:11:00', 102, 1041),
(542, 55.00, 'Medium', 'Multiple failed login attempts', 'Additional Verification', '2026-08-06 11:12:00', 102, 1042),

(543, 45.00, 'Medium', 'Invalid username attempt', 'Monitor Activity', '2026-08-07 09:21:00', 110, 1043),
(544, 55.00, 'Medium', 'Failed login after invalid username', 'Additional Verification', '2026-08-07 09:22:00', 110, 1044),

(545, 75.00, 'High', 'Unusual login time, location and failed attempt', 'Additional Verification', '2026-08-07 02:16:00', 115, 1045),
(546, 50.00, 'Medium', 'Failed login due to wrong password', 'Monitor Activity', '2026-08-07 09:31:00', 115, 1046),
(547, 65.00, 'Medium', 'Multiple failed login attempts', 'Additional Verification', '2026-08-07 09:32:00', 115, 1047),

(548, 45.00, 'Medium', 'Invalid username attempt', 'Monitor Activity', '2026-08-07 10:16:00', 116, 1048),
(549, 55.00, 'Medium', 'Failed login due to wrong password', 'Additional Verification', '2026-08-07 10:17:00', 116, 1049),

(550, 85.00, 'High', 'Unusual login time, location and failed attempt', 'Additional Verification', '2026-08-07 02:41:00', 118, 1050);
SELECT * FROM risk_result;