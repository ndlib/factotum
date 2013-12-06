(SELECT "DELETE FROM directory_organizational_units;")
UNION
(SELECT "DELETE FROM directory_employees;")
UNION
(SELECT "DELETE FROM directory_employee_ranks;")
UNION
(SELECT "DELETE FROM directory_employee_statuses;")
UNION
(SELECT "DELETE FROM directory_employee_units;")
UNION
(SELECT "DELETE FROM directory_contact_informations;")
UNION
(SELECT "DELETE FROM directory_subjects;")
UNION
(SELECT "DELETE FROM directory_selector_subjects;")
UNION
(SELECT "INSERT INTO directory_employee_statuses (id, name, created_at, updated_at) VALUES (10, 'Retired', now(), now());")
UNION
(SELECT CONCAT('INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES (''', unitID, ''', ''DirectoryDepartment'', ''', part_ofID, ''', ''', replace(unitName, "'", "\\'"), ''', now(), now());' ) as sql_statement
FROM unit ORDER BY unitID)
UNION ALL
(SELECT CONCAT('INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES (''', empID, ''', ''', ifnull(replace(fname, "'", "\\'"),''), ''', ''', ifnull(replace(lname, "'", "\\'"),''), ''', ''', ifnull(substring_index(email,'@',1), ''), ''', ''', ifnull(pic,''), ''', ''', ifnull(rankID,''), ''', ''0'', ''', ifnull(statusID,''), ''', ''', ifnull(date_start,''), ''', now(), now());' ) as sql_statement
FROM employee ORDER BY empID)
UNION ALL
(SELECT CONCAT('UPDATE directory_employees SET supervisor_id = ''', if(u.supervisor_id <> 0, if((e.empID = u.supervisor_id || e.empID = u.headID), pue.empID, u.supervisor_id), if(u.headID = e.empID, pue.empID, u.headID)), ''' WHERE id = ''', e.empID, ''';' ) as sql_statement
FROM emp_un eu
    INNER JOIN employee e ON eu.empID = e.empID
    INNER JOIN unit u ON eu.unitID = u.unitID
    INNER JOIN employee sup ON u.headID = sup.empID
    INNER JOIN unit pu ON u.part_ofID = pu.unitID
    INNER JOIN employee pue ON pu.headID = pue.empID) 
UNION ALL
(SELECT CONCAT('UPDATE directory_employees SET status_id = ''10'' WHERE id = ''', empID, ''';' ) as sql_statement 
FROM employee WHERE date_end != '0000-00-00' ORDER BY empID)
UNION ALL
(SELECT CONCAT('INSERT INTO directory_employee_ranks (id, name, created_at, updated_at) 
	VALUES (''', rank_id, ''', ''', rank, ''', now(), now());' ) as sql_statement
FROM ranks ORDER BY rank_id)
UNION ALL
(SELECT CONCAT('INSERT INTO directory_employee_statuses (id, name, created_at, updated_at) 
	VALUES (''', status_id, ''', ''', statuses, ''', now(), now());' ) as sql_statement
FROM empStatus ORDER BY status_id)
UNION ALL
(SELECT CONCAT('INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES (''', eu.empID, ''', ''', eu.unitID, ''', ''', if(u.headID=eu.empID,1, 0), ''', ''', jobTitle, ''', now(), now());' ) as sql_statement
FROM employee e 
	INNER JOIN (emp_un eu
		INNER JOIN unit u USING (unitID))
	USING (empID)
WHERE date_end = '0000-00-00'
ORDER BY eu.empID)
UNION ALL
(SELECT CONCAT('INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES (''', comID + 1000, ''', ''', if(type='L', 'DirectoryLibraryCommittee','DirectoryUniversityCommittee'), ''',''', reports_toID, ''', ''', replace(commName, "'", "\\'"), ''', now(), now(), ''', note, ''');' ) as sql_statement
FROM comm ORDER BY comID)
UNION ALL
(SELECT CONCAT('INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES (''', ec.empID, ''', ''', ec.commID + 1000, ''', ', IF(comm_ChairID >0,1,0), ', now(), now());' ) as sql_statement
FROM employee e 
	INNER JOIN (emp_comm ec
		LEFT JOIN comm_chair cc ON (ec.empID = cc.empID AND ec.commID = cc.commID)
		INNER JOIN comm c ON (ec.commID = c.comID))
	ON (e.empID = ec.empID)
WHERE date_end='0000-00-00'
ORDER BY ec.empID)
UNION ALL
(SELECT CONCAT('INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES (''DirectoryContactEmail'', ''', empID, ''', ''DirectoryEmployee'', ''', email, ''', now(), now(), 1);' ) as sql_statement
FROM employee WHERE email != '' AND date_end='0000-00-00')
UNION ALL
(SELECT CONCAT('INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES (''DirectoryContactEmail'', ''', empID, ''', ''DirectoryEmployee'', ''', alt_email, ''', now(), now());' ) as sql_statement
FROM employee WHERE alt_email != '')
UNION ALL
(SELECT CONCAT('INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES (''DirectoryContactAddress'', ''', empID, ''', ''DirectoryEmployee'', ''', replace(address, "'", "\\'"), ''', now(), now(), 1);' ) as sql_statement
FROM employee WHERE address != '' AND date_end='0000-00-00')
UNION ALL
(SELECT CONCAT('INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES (''DirectoryContactPhone'', ''', empID, ''', ''DirectoryEmployee'', ''', phone, ''', now(), now(), 1);' ) as sql_statement
FROM employee WHERE phone != '' AND date_end='0000-00-00')
UNION ALL
(SELECT CONCAT('INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES (''DirectoryContactPhone'', ''', empID, ''', ''DirectoryEmployee'', ''', cell, ''', now(), now());' ) as sql_statement
FROM employee WHERE cell != '' AND date_end='0000-00-00')
UNION ALL
(SELECT CONCAT('INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES (''DirectoryContactPhone'', ''', unitID, ''', ''DirectoryOrganizationalUnit'', ''', phone, ''', now(), now(), 1);' ) as sql_statement
FROM unit WHERE phone != '')
UNION ALL
(SELECT CONCAT('INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES (''DirectoryContactFax'', ''', unitID, ''', ''DirectoryOrganizationalUnit'', ''', fax, ''', now(), now(), 1);' ) as sql_statement
FROM unit WHERE fax != '')
UNION ALL
(SELECT CONCAT('INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES (''DirectoryContactWebpage'', ''', unitID, ''', ''DirectoryOrganizationalUnit'', ''', unitURL, ''', now(), now(), 1);' ) as sql_statement
FROM unit WHERE unitURL != '')
UNION ALL
(SELECT CONCAT('INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES (''DirectoryContactWebpage'', ''', comID + 1000, ''', ''DirectoryOrganizationalUnit'', ''', commURL, ''', now(), now(), 1);' ) as sql_statement
FROM comm WHERE commURL != '')
UNION ALL
(SELECT CONCAT('INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES (''DirectoryContactWebpage'', ''', unitID, ''', ''DirectoryOrganizationalUnit'', ''', external_unit_URL, ''', now(), now());' ) as sql_statement
FROM unit WHERE external_unit_URL != '')
UNION ALL
(SELECT CONCAT('INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES (''', subjID, ''', ''', replace(subjName, "'", "\\'"), ''', ''', replace(lc_class, "'", "\\'"), ''', now(), now());' ) as sql_statement
FROM subjects)
UNION ALL
(SELECT CONCAT('INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES (''', slibID, ''', ''', subjID, ''', now(), now());' ) as sql_statement
FROM subjects) UNION ALL
(SELECT DISTINCT CONCAT('UPDATE directory_employees SET selector = ''1'' WHERE id = ''', slibID, ''';' ) as sql_statement 
FROM subjects ORDER BY 1)
;