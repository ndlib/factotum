DELETE FROM directory_organizational_units;
DELETE FROM directory_organizational_units;
DELETE FROM directory_employees;
DELETE FROM directory_employee_ranks;
DELETE FROM directory_employee_statuses;
DELETE FROM directory_employee_units;
DELETE FROM directory_contact_informations;
DELETE FROM directory_subjects;
DELETE FROM directory_selector_subjects;
INSERT INTO directory_employee_statuses (id, name, created_at, updated_at) VALUES (10, 'Retired', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('1', 'DirectoryDepartment', '0', 'Office of the University Librarian', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('2', 'DirectoryDepartment', '1', 'Digital Access, Resources, and Information Technology', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('90', 'DirectoryDepartment', '10', 'Academic Outreach and Engagement Program', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('4', 'DirectoryDepartment', '100', 'Admin Team', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('6', 'DirectoryDepartment', '100', 'Building Services', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('10', 'DirectoryDepartment', '1', 'Academic Services and Collections', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('11', 'DirectoryDepartment', '96', 'Business and Social Science', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('100', 'DirectoryDepartment', '1', 'Administrative and Central Resources Program', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('108', 'DirectoryDepartment', '106', 'Data Support Services', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('17', 'DirectoryDepartment', '35', 'Acquisitions Services and Interlibrary Loan', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('18', 'DirectoryDepartment', '98', 'Preservation', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('19', 'DirectoryDepartment', '98', 'Rare Books and Special Collections', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('26', 'DirectoryDepartment', '98', 'Arts, Area Studies and Humanities Subject Specialists', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('120', 'DirectoryDepartment', '11', 'Mahaffey Business Library', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('101', 'DirectoryDepartment', '32', 'Web and Software Engineering Unit', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('32', 'DirectoryDepartment', '2', 'Information Technology Program', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('33', 'DirectoryDepartment', '118', 'Engineering Library', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('34', 'DirectoryDepartment', '32', 'Library Information Technology Support', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('35', 'DirectoryDepartment', '2', 'Resource Acquisitions and Discovery Program', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('109', 'DirectoryDepartment', '35', 'Metadata Services, Original and Special Cataloging Services', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('38', 'DirectoryDepartment', '6', 'Monitors', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('39', 'DirectoryDepartment', '19', 'Architecture Library', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('98', 'DirectoryDepartment', '10', 'Arts and Humanities Research Services Program', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('42', 'DirectoryDepartment', '90', 'Frontline Services', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('119', 'DirectoryDepartment', '118', 'Chemistry-Physics Library', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('44', 'DirectoryDepartment', '118', 'O`Meara Mathematics Library', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('71', 'DirectoryDepartment', '97', 'Visual Resources Center', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('60', 'DirectoryDepartment', '42', 'Stacks Maintenance and Document Delivery', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('116', 'DirectoryDepartment', '90', 'Teaching & Research Services', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('117', 'DirectoryDepartment', '116', 'Research & Consultation Services', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('107', 'DirectoryDepartment', '106', 'Batchprocessing Services', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('86', 'DirectoryDepartment', '97', 'Digital Library Technology', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('91', 'DirectoryDepartment', '96', 'Social Sciences', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('103', 'DirectoryDepartment', '35', 'Electronic Resources Unit', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('97', 'DirectoryDepartment', '2', 'Digital Library Initiatives and Scholarship Program', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('106', 'DirectoryDepartment', '35', 'Metadata Services, Batch Processing and Data Support', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('96', 'DirectoryDepartment', '10', 'Science, Engineering, Social Science and Business Program', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('102', 'DirectoryDepartment', '32', 'Systems Administration Unit', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('104', 'DirectoryDepartment', '97', 'Digital Production Services and Outreach', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('105', 'DirectoryDepartment', '100', 'Organizational Development', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('114', 'DirectoryDepartment', '6', 'Mailroom', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('115', 'DirectoryDepartment', '116', 'Teaching & Instructional Services', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('118', 'DirectoryDepartment', '96', 'Sciences and Engineering', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('19', 'Charlotte', 'Ames', 'cames', '', '5', '0', '1', '1969-10-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('20', 'Philip', 'Andrzejewski', 'pandrzej', 'https://libstaff.library.nd.edu/images/staff/phila.jpg', '1', '0', '1', '1989-06-26', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('21', 'Sharon', 'Andrzejewski', 'sandrzej', 'https://libstaff.library.nd.edu/images/staff/sharona.jpg', '1', '0', '0', '1998-09-02', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('22', 'Margaret', 'Ankrom', 'mankrom', 'https://libstaff.library.nd.edu/images/staff/margareta.jpg', '1', '0', '1', '1986-04-21', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('23', 'J. Douglas', 'Archer', 'jarcher', 'https://libstaff.library.nd.edu/images/staff/douga.jpg', '5', '0', '1', '1978-12-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('24', 'Kimberly', 'Tuai-Ault', 'kault', '', '1', '0', '1', '1999-11-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('25', 'Aaron', 'Bales', 'abales', 'https://libstaff.library.nd.edu/images/staff/aaronb.jpg', '3', '0', '1', '1992-08-17', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('26', 'Paula', 'Bales', 'pbales', 'https://libstaff.library.nd.edu/images/staff/paulab.jpg', '1', '0', '1', '1998-07-29', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('27', 'Alice', 'Barnes', 'abarnes', 'https://libstaff.library.nd.edu/images/staff/aliceb.jpg', '1', '0', '1', '1998-05-04', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('28', 'Michele', 'Bates', 'mpershin', 'https://libstaff.library.nd.edu/images/staff/shellyb.jpg', '1', '0', '1', '1988-08-22', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('29', 'Therese', 'Bauters', 'tbauters', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '1995-04-10', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('30', 'Laura', 'Bayard', 'lbayard', 'https://libstaff.library.nd.edu/images/staff/laurab.jpg', '5', '0', '1', '1989-10-15', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('502', 'Esther', 'Matteson', 'ematteso', 'https://libstaff.library.nd.edu/images/staff/estherm.jpg', '1', '0', '1', '2005-01-03', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('33', 'Debbie', 'Bernhard', 'dbernhar', 'https://libstaff.library.nd.edu/images/staff/debb.jpg', '1', '0', '1', '1988-01-12', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('34', 'Joanne', 'Bessler', 'jbessler', 'https://libstaff.library.nd.edu/images/staff/joeb.jpg', '5', '0', '1', '1984-10-15', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('35', 'Marilyn', 'Bierwagen', 'mbierwag', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '1990-07-20', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('37', 'Charlene', 'Billups', 'cbillups', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '1973-07-30', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('38', 'Katharina', 'Blackstead', 'kblackst', 'https://libstaff.library.nd.edu/images/staff/kathyb.jpg', '5', '0', '1', '1973-07-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('39', 'Alice', 'Botka', 'abotka', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '1973-02-14', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('40', 'Rachel', 'Boyd', 'rboyd', 'https://libstaff.library.nd.edu/images/staff/rachel.jpg', '1', '0', '1', '1986-09-29', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('41', 'Andy', 'Boze', 'fboze', 'https://libstaff.library.nd.edu/images/staff/andyb.jpg', '4', '0', '1', '1991-06-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('42', 'Carol', 'Brach', 'cszambel', 'https://libstaff.library.nd.edu/images/staff/caroleb.jpg', '4', '0', '1', '1991-10-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('43', 'Beverly', 'Bradford', 'bbradfor', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '1971-08-23', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('44', 'Michael', 'Bradford', 'mbradfor', 'https://libstaff.library.nd.edu/images/staff/michaelb.jpg', '1', '0', '1', '2002-11-04', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('45', 'Robert', 'Bradley', 'rbradley', 'https://libstaff.library.nd.edu/images/staff/robertb.jpg', '1', '0', '1', '1998-10-13', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('46', 'Jennifer', 'Brcka', 'jbrcka', 'https://libstaff.library.nd.edu/images/staff/jenniferb.jpg', '1', '0', '1', '2000-07-17', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('47', 'Sheila', 'Britton', 'scurtis', 'https://libstaff.library.nd.edu/images/staff/sheilab.jpg', '1', '0', '1', '1998-05-26', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('48', 'Pamela', 'Brzezinski', 'pbrzezin', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '1990-03-05', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('49', 'Bartley', 'Burk', 'bburk1', 'https://libstaff.library.nd.edu/images/staff/bartb.jpg', '4', '0', '1', '1990-07-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('50', 'Nigel', 'Butterwick', 'nbutterw', 'https://libstaff.library.nd.edu/images/staff/nigel.jpg', '5', '0', '1', '2003-03-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('51', 'Jean', 'Cane', 'jcane', 'https://libstaff.library.nd.edu/images/staff/jeanc2.jpg', '1', '0', '1', '1978-02-08', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('52', 'Pamela', 'Chu', 'pchu', 'https://libstaff.library.nd.edu/images/staff/pamc.jpg', '1', '0', '1', '1995-07-10', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('53', 'Gloria', 'Coplin', 'gclaeys', 'https://libstaff.library.nd.edu/images/staff/gloriac3.jpg', '1', '0', '1', '1985-11-05', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('54', 'Kristie', 'Clark', 'kclark', 'https://libstaff.library.nd.edu/images/staff/kristyc.jpg', '1', '0', '1', '1995-10-23', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('55', 'Kathy', 'Colbert', 'kcolbert', 'https://libstaff.library.nd.edu/images/staff/kathyc.jpg', '1', '0', '1', '1997-06-27', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('56', 'Barbara', 'Cole', 'bjenning', 'https://libstaff.library.nd.edu/images/staff/barbcole.jpg', '1', '0', '1', '1986-10-06', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('57', 'Sandi', 'Collins', 'scollin4', 'https://libstaff.library.nd.edu/images/staff/sandyc2.jpg', '1', '0', '1', '1999-08-16', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('58', 'Barbara', 'Connelly', 'bconnell', 'https://libstaff.library.nd.edu/images/staff/barbc.jpg', '1', '0', '1', '1988-06-13', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('59', 'Judith', 'Conner', 'jconner', 'https://libstaff.library.nd.edu/images/staff/judyc.jpg', '1', '0', '1', '1989-03-13', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('60', 'Charles', 'Cowsert', 'ccowsert', 'https://libstaff.library.nd.edu/images/staff/chuckc.jpg', '1', '0', '1', '1999-08-16', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('61', 'Monica', 'Crabtree', 'mcrabtr1', 'https://libstaff.library.nd.edu/images/staff/monica.jpg', '1', '0', '1', '2002-03-25', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('62', 'Gloria', 'Cross', 'gcross', 'https://libstaff.library.nd.edu/images/staff/gloria_cross.jpg', '1', '0', '1', '1980-07-28', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('63', 'Gay', 'Dannelly', 'gdannell', 'https://libstaff.library.nd.edu/images/staff/gayd.jpg', '5', '0', '1', '2000-09-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('64', 'Mary', 'Davies', 'mdavies', 'https://libstaff.library.nd.edu/images/staff/marykayd.jpg', '1', '0', '1', '1977-03-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('65', 'Salem', 'Davis', 'sdavis1', 'https://libstaff.library.nd.edu/images/staff/salem.jpg', '1', '0', '1', '1990-10-15', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('66', 'Barbara', 'Dean-Davis', 'bdean1', 'https://libstaff.library.nd.edu/images/staff/barbd_d.jpg', '1', '0', '1', '1992-10-15', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('67', 'Mark', 'Dehmlow', 'mdehmlow', 'https://libstaff.library.nd.edu/images/staff/markd.jpg', '4', '0', '1', '2001-08-13', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('68', 'Jane A', 'Devine-Mejia', 'jdevine', '', '4', '0', '1', '1997-08-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('69', 'Sue', 'Dietl', 'sdietl', 'https://libstaff.library.nd.edu/images/staff/sued.jpg', '1', '0', '1', '1975-01-27', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('71', 'Lin', 'Doversberger', 'ldoversb', 'https://libstaff.library.nd.edu/images/staff/lind.jpg', '1', '0', '1', '1990-12-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('72', 'Liz', 'Dube', 'ldube', 'https://libstaff.library.nd.edu/images/staff/lizd.jpg', '5', '0', '1', '1998-09-14', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('73', 'Sherri', 'Jones', 'sedwards', 'https://libstaff.library.nd.edu/images/staff/sherrij2.jpg', '5', '0', '1', '2000-12-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('74', 'Melodie', 'Eiteljorge', 'meiteljo', 'https://libstaff.library.nd.edu/images/staff/mele.jpg', '1', '0', '1', '1980-03-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('75', 'Clara', 'Enriquez', 'cenrique', 'https://libstaff.library.nd.edu/images/staff/clarae.jpg', '1', '0', '1', '1998-06-08', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('76', 'David', 'Enyeart', 'denyeart', 'https://libstaff.library.nd.edu/images/staff/davide.jpg', '1', '0', '1', '2001-04-30', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('77', 'Rita', 'Erskine', 'rerskine', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '1986-09-17', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('79', 'Susan', 'Feirick', 'sfeirick', 'https://libstaff.library.nd.edu/images/staff/susanf2.jpg', '1', '0', '1', '1985-03-04', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('81', 'Ross', 'Fergerson', 'rfergers', 'https://libstaff.library.nd.edu/images/staff/rossf.jpg', '1', '0', '1', '1988-09-13', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('82', 'Kim', 'Ferraro', 'kferraro', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '1994-06-13', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('84', 'Robert', 'Fox', 'rfox2', 'https://libstaff.library.nd.edu/images/staff/robf.jpg', '1', '0', '1', '2002-09-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('85', 'Beata', 'Frelas', 'bfrelas', 'https://libstaff.library.nd.edu/images/staff/beata.jpg', '1', '0', '1', '2001-05-21', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('86', 'Alice', 'Frost', 'afrost', 'https://libstaff.library.nd.edu/images/staff/alicef.jpg', '1', '0', '1', '2001-02-26', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('87', 'Laura', 'Fuderer', 'lfuderer', 'https://libstaff.library.nd.edu/images/staff/lauraf.jpg', '5', '0', '1', '1982-08-15', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('88', 'Scott S', 'Gaglio', 'sgaglio1', 'https://libstaff.library.nd.edu/images/staff/scottg.jpg', '1', '0', '1', '1994-05-24', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('89', 'Margaret', 'Giles', 'mgiles', 'https://libstaff.library.nd.edu/images/staff/maggieg.jpg', '1', '0', '1', '1987-08-04', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('90', 'Diane M', 'Goltz', 'dgoltz', '', '1', '0', '1', '0000-00-00', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('91', 'Diane', 'Gram', 'dgram', 'https://libstaff.library.nd.edu/images/staff/dianeg.jpg', '1', '0', '1', '1995-07-17', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('92', 'Linda', 'Gregory', 'lgregory', 'https://libstaff.library.nd.edu/images/staff/lindag.jpg', '1', '0', '1', '1981-06-11', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('93', 'Elaine', 'Griffen', 'egriffen', 'https://libstaff.library.nd.edu/images/staff/elaineg.jpg', '1', '0', '1', '1985-11-04', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('94', 'Nastia', 'Guimaraes', 'aguimara', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '3', '0', '1', '1999-08-09', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('95', 'Thomas', 'Hanstra', 'hanstra', 'https://libstaff.library.nd.edu/images/staff/tomh.jpg', '1', '0', '1', '1994-08-23', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('97', 'Nita', 'Hashil', 'nhashil', 'https://libstaff.library.nd.edu/images/staff/nitah2.jpg', '1', '0', '1', '2001-03-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('98', 'Mandy', 'Havert', 'mhavert', 'https://libstaff.library.nd.edu/images/staff/mandy3.jpg', '3', '0', '1', '1997-07-21', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('100', 'Stephen', 'Hayes', 'shayes1', 'https://libstaff.library.nd.edu/images/staff/steveh.jpg', '5', '0', '1', '1974-09-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('101', 'Benjamin', 'Heet', 'bheet1', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '2000-05-15', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('102', 'Belinda', 'Obren', 'bhoffma2', 'https://libstaff.library.nd.edu/images/staff/belindao.jpg', '1', '0', '1', '1999-08-02', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('103', 'Cindi', 'Hoffman', 'choffma2', 'https://libstaff.library.nd.edu/images/staff/cindih.jpg', '1', '0', '1', '1999-05-17', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('104', 'Roy', 'Horstmann', 'rhorstma', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '1995-06-27', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('106', 'Deborah', 'Huyvaert', 'dhuyvaer', 'https://libstaff.library.nd.edu/images/staff/debh2.jpg', '1', '0', '1', '1989-07-11', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('108', 'David', 'Jenkins', 'djenkins', 'https://libstaff.library.nd.edu/images/staff/davej.jpg', '4', '0', '1', '1999-02-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('109', 'Beverly', 'Jennings', 'bjennin1', 'https://libstaff.library.nd.edu/images/staff/bevj2.jpg', '1', '0', '1', '1972-04-17', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('112', 'Cecil', 'Joiner', 'cjoiner', 'https://libstaff.library.nd.edu/images/staff/cecil.jpg', '1', '0', '1', '1995-02-20', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('113', 'Coy', 'Jones', 'cjones3', 'https://libstaff.library.nd.edu/images/staff/coyd.jpg', '1', '0', '1', '2002-08-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('114', 'Redrick', 'Jones', 'rjones5', 'https://libstaff.library.nd.edu/images/staff/reggie.jpg', '1', '0', '1', '2001-11-12', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('115', 'Richard Earl', 'Jones', 'rjones', 'https://libstaff.library.nd.edu/images/staff/rickj.jpg', '5', '0', '1', '1993-11-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('116', 'Louis', 'Jordan', 'ljordan', 'https://libstaff.library.nd.edu/images/staff/louj.jpg', '5', '0', '1', '1981-09-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('117', 'Ina', 'Kahal', 'ikahal', 'https://libstaff.library.nd.edu/images/staff/inak2.jpg', '1', '0', '1', '1991-10-09', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('118', 'Nancy', 'Kambol', 'nbennett', 'https://libstaff.library.nd.edu/images/staff/nancyk.jpg', '1', '0', '1', '1986-08-26', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('120', 'Joni', 'Warner', 'jkanzler', 'https://libstaff.library.nd.edu/images/staff/joni.jpg', '3', '0', '1', '2000-01-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('121', 'Bozena', 'Karol', 'bkarol', 'https://libstaff.library.nd.edu/images/staff/boc.jpg', '1', '0', '1', '1993-01-20', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('123', 'Jessica', 'Kayongo', 'jkayongo', 'https://libstaff.library.nd.edu/images/staff/jessica.jpg', '5', '0', '1', '2002-08-02', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('124', 'Pamela', 'Keller', 'pkeller', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '1971-05-17', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('125', 'Patricia', 'Kelley', 'pkelley', 'https://libstaff.library.nd.edu/images/staff/trishk.jpg', '1', '0', '1', '1982-09-13', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('126', 'Judy', 'Kendall', 'jkendal1', 'https://libstaff.library.nd.edu/images/staff/judyk.jpg', '1', '0', '1', '1986-04-07', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('127', 'Diana', 'Kennedy', 'dkenned1', 'https://libstaff.library.nd.edu/images/staff/dianek.jpg', '1', '0', '1', '1999-08-23', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('128', 'Brian', 'Kiel', 'bkiel', '', '1', '0', '1', '1977-09-07', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('129', 'Susanna', 'King', 'sluthy', 'https://libstaff.library.nd.edu/images/staff/susannak.jpg', '1', '0', '1', '1999-08-30', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('130', 'Kenneth', 'Kinslow', 'kkinslow', 'https://libstaff.library.nd.edu/images/staff/kenk.jpg', '3', '0', '1', '1974-06-08', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('132', 'Kelly', 'McNally', 'kkoski1', 'https://libstaff.library.nd.edu/images/staff/kellyk2.jpg', '1', '0', '1', '2002-04-08', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('133', 'Alan', 'Krieger', 'akrieger', 'https://libstaff.library.nd.edu/images/staff/allenk3.jpg', '5', '0', '1', '1983-09-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('134', 'Patricia', 'Krivan', 'pkrivan', 'https://libstaff.library.nd.edu/images/staff/patk.jpg', '1', '0', '1', '1995-11-20', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('135', 'Robert', 'Kusmer', 'rkusmer', 'https://libstaff.library.nd.edu/images/staff/robk.jpg', '4', '0', '1', '1997-02-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('136', 'Meleah', 'Ladd', 'mladd', 'https://libstaff.library.nd.edu/images/staff/meleahl.jpg', '1', '0', '1', '1999-06-04', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('137', 'J. Parker', 'Ladwig', 'jladwig', 'https://libstaff.library.nd.edu/images/staff/parker.jpg', '4', '0', '1', '2000-08-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('138', 'Maureen', 'Lakin', 'mlakin', 'https://libstaff.library.nd.edu/images/staff/maureen.jpg', '1', '0', '1', '1997-08-04', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('140', 'Stephanie D', 'Lane', 'slane', 'https://libstaff.library.nd.edu/images/staff/stephanie.jpg', '1', '0', '1', '1988-08-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('141', 'Lisbeth', 'Lannuier', 'llannuie', 'https://libstaff.library.nd.edu/images/staff/lisbeth.jpg', '1', '0', '1', '1992-08-24', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('142', 'Karen', 'Lanser', 'klanser', 'https://libstaff.library.nd.edu/images/staff/karenl2.jpg', '1', '0', '1', '1987-09-24', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('144', 'Laurie', 'Lawson', 'llawson', 'https://libstaff.library.nd.edu/images/staff/lauriel.jpg', '1', '0', '1', '2001-09-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('145', 'Mary', 'Lehman', 'mlehman', 'https://libstaff.library.nd.edu/images/staff/maryl.jpg', '1', '0', '1', '1970-08-24', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('146', 'Thomas', 'Lehman', 'tlehman', 'https://libstaff.library.nd.edu/images/staff/toml.jpg', '5', '0', '1', '1985-08-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('147', 'Robbye', 'Lennox', 'rlennox', 'https://libstaff.library.nd.edu/images/staff/robbye.jpg', '1', '0', '1', '1984-11-07', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('148', 'Carol', 'Levenson', 'clevenso', '', '1', '0', '1', '1999-03-08', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('149', 'Carolyn', 'Lippert', 'clippert', 'https://libstaff.library.nd.edu/images/staff/caroll.jpg', '1', '0', '1', '1996-09-11', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('150', 'Robin', 'Lisek', 'rlisek', 'https://libstaff.library.nd.edu/images/staff/robinl2.jpg', '1', '0', '1', '1979-04-09', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('151', 'Christeena', 'Listenberger', 'clistenb', 'https://libstaff.library.nd.edu/images/staff/christinel.jpg', '1', '0', '1', '1988-07-22', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('152', 'Patricia', 'Loghry', 'ploghry', 'https://libstaff.library.nd.edu/images/staff/patl.jpg', '4', '0', '1', '2000-05-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('153', 'Maria', 'Lottridge', 'mlottrid', 'https://libstaff.library.nd.edu/images/staff/marial.jpg', '1', '0', '1', '1989-01-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('154', 'Michael', 'Lutes', 'mlutes', 'https://libstaff.library.nd.edu/images/staff/mikel.jpg', '4', '0', '1', '1989-05-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('155', 'Natasha', 'Lyandres', 'nlyandre', 'https://libstaff.library.nd.edu/images/staff/natasha2.jpg', '4', '0', '1', '2001-11-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('156', 'Darlene', 'Macon-Clifton', 'dmacon', 'https://libstaff.library.nd.edu/images/staff/darlene.jpg', '1', '0', '1', '1985-02-04', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('157', 'Linda J', 'Major', 'lmajor', '', '1', '0', '1', '2002-01-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('158', 'Karen', 'Malling', 'kferry', 'https://libstaff.library.nd.edu/images/staff/karenm.jpg', '1', '0', '1', '1991-10-02', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('159', 'Daniel', 'Marmion', 'dmarmion', 'https://libstaff.library.nd.edu/images/staff/danm.jpg', '5', '0', '1', '2000-04-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('161', 'Denise', 'Massa', 'dmassa', 'https://libstaff.library.nd.edu/images/staff/denisem.jpg', '1', '0', '1', '1991-06-24', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('162', 'Lori', 'McCune', 'lmccune', 'https://libstaff.library.nd.edu/images/staff/lorim.jpg', '1', '0', '1', '1990-06-18', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('163', 'Paula', 'McDonald', 'pmcdona1', 'https://libstaff.library.nd.edu/images/staff/paulam.jpg', '1', '0', '1', '1996-09-23', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('164', 'Laurie', 'McGowan', 'lthiel', 'https://libstaff.library.nd.edu/images/staff/lauriem.jpg', '1', '0', '1', '2001-01-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('165', 'Mary', 'McKeown', 'menglis1', 'https://libstaff.library.nd.edu/images/staff/marymc.jpg', '4', '0', '1', '1990-12-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('166', 'Jean', 'McManus', 'jmcmanu1', 'https://libstaff.library.nd.edu/images/staff/jeanm.jpg', '4', '0', '1', '1997-08-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('168', 'Marsha', 'Meuleman', 'mmeulema', 'https://libstaff.library.nd.edu/images/staff/marsham.jpg', '1', '0', '1', '1988-06-27', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('169', 'Thurston', 'Miller', 'tmiller5', 'https://libstaff.library.nd.edu/images/staff/thurstonm2.jpg', '4', '0', '1', '1992-08-03', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('170', 'Elaine', 'Molenda', 'emolenda', 'https://libstaff.library.nd.edu/images/staff/elainem2.jpg', '1', '0', '1', '1973-12-11', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('171', 'Darrel Wayne', 'Monroe', 'dmonroe', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '1988-03-09', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('172', 'Eric', 'Morgan', 'emorgan', 'https://libstaff.library.nd.edu/images/staff/ericm.jpg', '5', '0', '1', '2001-09-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('174', 'Tracey', 'Morton', 'tmorton', 'https://libstaff.library.nd.edu/images/staff/traceym.jpg', '1', '0', '1', '2001-01-02', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('175', 'Trudie', 'Mullins', 'tharrier', 'https://libstaff.library.nd.edu/images/staff/trudiem.jpg', '1', '0', '1', '2000-09-11', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('176', 'Esther', 'Murray', 'emurray', '', '1', '0', '1', '1989-01-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('178', 'Pamela', 'Nicholas', 'pnichola', 'https://libstaff.library.nd.edu/images/staff/pamn.jpg', '1', '0', '1', '1974-08-11', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('179', 'Raymond', 'Nichols', 'rnichols', 'https://libstaff.library.nd.edu/images/staff/raymond.jpg', '1', '0', '1', '1991-02-18', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('180', 'Patricia', 'O`Rourke', 'porourke', 'https://libstaff.library.nd.edu/images/staff/pator.jpg', '1', '0', '1', '2002-09-16', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('181', 'Diane', 'Orlowski', 'dorlowsk', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '1998-11-29', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('183', 'Jeanette', 'Page', 'jcliffo1', 'https://libstaff.library.nd.edu/images/staff/jeanettep.jpg', '1', '0', '1', '1998-06-18', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('185', 'Benjamin', 'Panciera', 'bpancier', 'https://libstaff.library.nd.edu/images/staff/benp.jpg', '3', '0', '1', '1999-09-30', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('186', 'LouEllen', 'Parent', 'lparent', 'https://libstaff.library.nd.edu/images/staff/louparent.jpg', '1', '0', '1', '1979-08-15', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('187', 'Dorothy', 'Snyder', 'dpaul', 'https://libstaff.library.nd.edu/images/staff/dorothys.jpg', '1', '0', '1', '1986-02-20', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('188', 'James', 'Peden', 'jpeden', 'https://libstaff.library.nd.edu/images/staff/jimp.jpg', '1', '0', '1', '1991-10-28', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('190', 'Susan C', 'Phegley', 'sphegley', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '1995-09-02', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('191', 'Bobbie Lou', 'Philotoff', 'rrodts', 'https://libstaff.library.nd.edu/images/staff/bobby.jpg', '1', '0', '1', '1986-05-05', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('192', 'Carole', 'Pilkinton', 'crichter', 'https://libstaff.library.nd.edu/images/staff/carolep.jpg', '5', '0', '1', '1996-11-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('194', 'Christian', 'Poehlmann', 'cpoehlma', 'https://libstaff.library.nd.edu/images/staff/chrisp.jpg', '3', '0', '1', '1981-07-06', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('195', 'Vonda', 'Polega', 'vpolega', 'https://libstaff.library.nd.edu/images/staff/vonda.jpg', '1', '0', '1', '1977-04-25', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('197', 'G. Margaret', 'Porter', 'gporter', 'https://libstaff.library.nd.edu/images/staff/margaretp.jpg', '5', '0', '1', '1981-10-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('198', 'Alice L', 'Preissing', 'aneal', '', '1', '0', '1', '0000-00-00', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('199', 'Becky', 'Price', 'rprice', 'https://libstaff.library.nd.edu/images/staff/beckyp.jpg', '1', '0', '1', '2001-04-16', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('200', 'Tatiana', 'Prokrym', 'tprokrym', 'https://libstaff.library.nd.edu/images/staff/tanya.jpg', '3', '0', '1', '1998-10-20', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('202', 'Karen', 'Robinson', 'krobinso', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '1988-09-26', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('204', 'Carla', 'Ross', 'cross1', 'https://libstaff.library.nd.edu/images/staff/carlar.jpg', '1', '0', '1', '1977-12-06', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('205', 'Joseph', 'Ross', 'jross', 'https://libstaff.library.nd.edu/images/staff/joer.jpg', '3', '0', '1', '1996-01-07', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('206', 'George', 'Rugg', 'grugg', 'https://libstaff.library.nd.edu/images/staff/georger.jpg', '1', '0', '1', '1994-10-25', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('208', 'Kathryn', 'Ryan-Zeugner', 'kryanzeu', 'https://libstaff.library.nd.edu/images/staff/kathie3.jpg', '4', '0', '1', '1979-07-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('209', 'Sandra', 'Sarber', 'ssarber', 'https://libstaff.library.nd.edu/images/staff/sandysarber.jpg', '1', '0', '1', '1999-07-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('210', 'Elaine', 'Savely', 'ehoffman', 'https://libstaff.library.nd.edu/images/staff/elaines.jpg', '1', '0', '1', '1986-11-10', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('211', 'Jayne', 'Schlutt', 'jschlutt', 'https://libstaff.library.nd.edu/images/staff/jaynes.jpg', '1', '0', '1', '1981-11-16', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('212', 'Joy', 'Schosker', 'jschoske', 'https://libstaff.library.nd.edu/images/staff/joy.jpg', '1', '0', '1', '1999-08-09', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('213', 'Gwen', 'Scott', 'gscott1', 'https://libstaff.library.nd.edu/images/staff/gwens.jpg', '1', '0', '1', '1971-01-06', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('215', 'Linda', 'Sharp', 'lsharp1', 'https://libstaff.library.nd.edu/images/staff/lindas.jpg', '4', '0', '1', '1988-08-23', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('216', 'Michele', 'Shaw', 'mshaw', 'https://libstaff.library.nd.edu/images/staff/micheles.jpg', '1', '0', '1', '1998-12-14', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('217', 'Denise', 'Sherwood', 'dsherwoo', '', '1', '0', '1', '2002-12-02', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('218', 'Diane', 'Sikorski', 'dsikorsk', 'https://libstaff.library.nd.edu/images/staff/dianesikorski.jpg', '1', '0', '1', '1987-07-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('220', 'Bill', 'Sill', 'wsill', 'https://libstaff.library.nd.edu/images/staff/bills.jpg', '1', '0', '1', '1990-08-20', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('221', 'Marcy', 'Simons', 'msimons', 'https://libstaff.library.nd.edu/images/staff/marcys.jpg', '4', '0', '1', '1988-12-09', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('222', 'Cheri', 'Smith', 'csmith', 'https://libstaff.library.nd.edu/images/staff/cheris.jpg', '4', '0', '1', '2000-03-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('223', 'Marina', 'Smyth', 'msmyth', 'https://libstaff.library.nd.edu/images/staff/marina.jpg', '5', '0', '1', '1993-10-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('224', 'Barbara', 'Snyder', 'bsnyder1', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '1990-01-22', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('225', 'Susan', 'Sprecher', 'sspreche', 'https://libstaff.library.nd.edu/images/staff/susans.jpg', '1', '0', '1', '2001-01-08', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('226', 'Sandra', 'Stellema', 'sstellem', 'https://libstaff.library.nd.edu/images/staff/sandys.jpg', '1', '0', '1', '1999-01-04', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('228', 'Michelle', 'Savoie', 'mstenber', 'https://libstaff.library.nd.edu/images/staff/michelles.jpg', '1', '0', '1', '1997-01-27', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('230', 'Marsha', 'Stevenson', 'msteven1', 'https://libstaff.library.nd.edu/images/staff/marshas.jpg', '5', '0', '1', '1990-01-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('231', 'Lisa', 'Stienbarger', 'lstienba', 'https://libstaff.library.nd.edu/images/staff/lisas.jpg', '1', '0', '1', '1984-10-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('232', 'Mary', 'Szekendi', 'mszekend', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '1996-12-02', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('234', 'Clara', 'Taylor', 'ctaylor2', 'https://libstaff.library.nd.edu/images/staff/clarat.jpg', '1', '0', '1', '1993-08-31', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('235', 'Leigh', 'Taylor', 'ltaylor2', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '1997-10-27', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('236', 'Bridget', 'Tierney', 'btierney', 'https://libstaff.library.nd.edu/images/staff/bridget.jpg', '1', '0', '1', '2002-07-24', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('238', 'Cameron', 'Tuai', 'ctuai', '', '3', '0', '1', '1999-01-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('239', 'Margaret', 'Turza', 'mturza', 'https://libstaff.library.nd.edu/images/staff/margarett.jpg', '1', '0', '1', '1995-09-11', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('241', 'Scott', 'Van Jacob', 'svanjaco', 'https://libstaff.library.nd.edu/images/staff/scottv.jpg', '5', '0', '1', '1995-11-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('243', 'Deborah', 'Webb', 'dwebb1', 'https://libstaff.library.nd.edu/images/staff/debw.jpg', '1', '0', '1', '1987-05-11', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('244', 'Sara', 'Weber', 'sweber', 'https://libstaff.library.nd.edu/images/staff/saraw.jpg', '1', '0', '1', '2000-07-05', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('245', 'Ladonna', 'Weeks', 'lweeks', 'https://libstaff.library.nd.edu/images/staff/ladonnaw.jpg', '1', '0', '1', '1984-03-26', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('246', 'Nelson', 'Weindling', 'nweindli', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '2000-02-21', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('247', 'Christine', 'Weiss', 'cweiss', 'https://libstaff.library.nd.edu/images/staff/christinew.jpg', '1', '0', '1', '1988-07-22', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('248', 'David', 'Williams', 'dwillia6', 'https://libstaff.library.nd.edu/images/staff/davidw.jpg', '1', '0', '1', '1998-01-26', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('249', 'Lisa', 'Winquist', 'lwinquis', 'https://libstaff.library.nd.edu/images/staff/lisaw.jpg', '1', '0', '1', '1992-03-16', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('250', 'Richard', 'Wojtasik', 'rwojtasi', 'https://libstaff.library.nd.edu/images/staff/richardw.jpg', '1', '0', '1', '1985-01-31', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('251', 'Jennifer', 'Younger', 'jyounger', 'https://libstaff.library.nd.edu/images/staff/jennifery.jpg', '5', '0', '1', '1997-11-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('252', 'Lorenzo', 'Zeugner', 'lzeugner', 'https://libstaff.library.nd.edu/images/staff/lorryz2.jpg', '4', '0', '1', '1978-11-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('293', 'Hector', 'Escobar', 'hescobar', 'https://libstaff.library.nd.edu/images/staff/hector.jpg', '2', '0', '1', '2000-09-18', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('294', 'Tosha', 'McComb', 'tmccomb', 'https://libstaff.library.nd.edu/images/staff/tosha.jpg', '1', '0', '1', '2005-10-03', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('516', 'Derek', 'Webb', 'dwebb2', 'https://libstaff.library.nd.edu/images/staff/derekw.jpg', '1', '0', '1', '2006-01-03', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('296', 'Tonya', 'Denton', 'tdenton', '', '1', '0', '1', '0000-00-00', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('297', 'Sarah', 'Castro', 'scastro', '', '1', '0', '1', '0000-00-00', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('298', 'Ralph', 'Ankrom', 'rankrom', '', '1', '0', '1', '2003-10-15', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('552', 'Rick', 'Johnson', 'rjohns14', 'https://libstaff.library.nd.edu/images/staff/rickj.jpg', '1', '0', '1', '2008-11-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('400', 'Pascal', 'Calarco', 'pcalarco', 'https://libstaff.library.nd.edu/images/staff/pascal.jpg', '5', '0', '1', '2004-07-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('500', 'Beth', 'Lewinski', 'blewinsk', '', '1', '0', '1', '2004-05-19', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('501', 'Caroline', 'Numbers', 'cbeavers', 'https://libstaff.library.nd.edu/images/staff/carolinen.jpg', '1', '0', '1', '2004-09-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('503', 'Jeff', 'Olds', 'jolds', 'https://libstaff.library.nd.edu/images/staff/jeffo.jpg', '1', '0', '1', '2004-01-10', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('504', 'Cynthia', 'Harris', 'charris9', 'https://libstaff.library.nd.edu/images/staff/cynthia.jpg', '1', '0', '1', '2005-07-11', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('505', 'Felicia', 'Smith', 'fsmith3', 'https://libstaff.library.nd.edu/images/staff/felicia.jpg', '4', '0', '1', '2005-07-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('506', 'Carla', 'May', 'cmay', 'https://libstaff.library.nd.edu/images/staff/carlamay.jpg', '1', '0', '1', '0000-00-00', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('507', 'Leslie', 'Morgan', 'lmorgan1', 'https://libstaff.library.nd.edu/images/staff/leslie.jpg', '4', '0', '1', '2005-08-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('508', 'Peter', 'Reimers', 'preimer1', 'https://libstaff.library.nd.edu/images/staff/peter2.jpg', '1', '0', '1', '2005-08-08', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('509', 'Kurt', 'Morris', 'kmorris5', 'https://libstaff.library.nd.edu/images/staff/kurt.jpg', '1', '0', '1', '2005-08-29', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('510', 'Elizabeth', 'Van Jacob', 'mvanjaco', 'https://libstaff.library.nd.edu/images/staff/elizabeth.jpg', '3', '0', '1', '2004-08-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('511', 'Christine', 'Reimers', 'cjohns19', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '2005-10-03', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('512', 'Aedin', 'Clements', 'aclemen1', 'https://libstaff.library.nd.edu/images/staff/aedin.jpg', '4', '0', '1', '2005-10-03', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('513', 'Julie', 'Arnott', 'jarnott', 'https://libstaff.library.nd.edu/images/staff/julie.jpg', '5', '0', '1', '2005-10-03', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('514', 'Joseph', 'Holtermann', 'jholterm', 'https://libstaff.library.nd.edu/images/staff/joseph.jpg', '3', '0', '1', '2005-10-03', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('515', 'Donna', 'Minarik', 'dminarik', 'https://libstaff.library.nd.edu/images/staff/donna.jpg', '1', '0', '1', '2005-10-24', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('517', 'Charlotte', 'Ford', 'cford', 'https://libstaff.library.nd.edu/images/staff/charlotte.jpg', '1', '0', '1', '1988-11-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('518', 'Timothy', 'Zmudzinski', 'tzmudzin', 'https://libstaff.library.nd.edu/images/staff/tim.jpg', '1', '0', '1', '2006-02-06', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('519', 'John', 'Scofield', 'jscofiel', 'https://libstaff.library.nd.edu/images/staff/johns.jpg', '1', '0', '1', '2006-05-15', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('520', 'Jacqueline', 'Holdren', 'jholdren', 'https://libstaff.library.nd.edu/images/staff/jacquie.jpg', '1', '0', '1', '2006-05-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('521', 'Holly', 'Welch', 'hwelch1', 'https://libstaff.library.nd.edu/images/staff/holly.jpg', '1', '0', '1', '2006-06-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('522', 'Nathan', 'Gunsch', 'ngunsch', 'https://libstaff.library.nd.edu/images/staff/nathan.jpg', '1', '0', '1', '0000-00-00', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('523', 'Jeff', 'Beaird', 'jbeaird', 'https://libstaff.library.nd.edu/images/staff/jeffb.jpg', '1', '0', '1', '2006-11-06', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('524', 'Terry', 'Harper', 'tharper1', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '0', '2006-07-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('551', 'Michele', 'Wolff', 'mwolff', 'https://libstaff.library.nd.edu/images/staff/michelew.jpg', '1', '0', '1', '2008-10-14', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('526', 'Lisa', 'Berlincourt', 'lberlinc', 'https://libstaff.library.nd.edu/images/staff/lisab.jpg', '1', '0', '1', '2007-05-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('527', 'Sara', 'Method', 'smethod', '', '1', '0', '1', '2007-05-21', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('528', 'Jennifer', 'Matthews', 'jmatthe2', 'https://libstaff.library.nd.edu/images/staff/jenniferm.jpg', '3', '0', '1', '2007-06-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('529', 'Tracy', 'Bergstrom', 'tbergstr', 'https://libstaff.library.nd.edu/images/staff/tracyb.jpg', '4', '0', '1', '2007-08-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('530', 'Dan', 'Christy', 'dchrist4', 'https://libstaff.library.nd.edu/images/staff/dchristy.jpg', '1', '0', '1', '2007-10-15', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('531', 'Ronald', 'Henry', 'rhenry2', 'https://libstaff.library.nd.edu/images/staff/ronhenry.jpg', '1', '0', '1', '2007-10-02', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('532', 'Robin', 'Schaaf', 'rmalott', 'https://libstaff.library.nd.edu/images/staff/robinm.jpg', '1', '0', '1', '2007-12-17', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('533', 'Pamela', 'Scofield', 'pscofiel', 'https://libstaff.library.nd.edu/images/staff/pams.jpg', '1', '0', '1', '2007-12-17', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('534', 'James', 'Yates', 'jyates2', 'https://libstaff.library.nd.edu/images/staff/jimy.jpg', '1', '0', '1', '2008-01-16', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('535', 'Michael', 'Domeracki', 'mdomerac', '', '1', '0', '1', '2008-02-04', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('536', 'Matthew', 'Orta', 'morta2', '', '1', '0', '1', '2008-03-03', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('537', 'Chasity', 'Enyeart', 'cenyear1', '', '1', '0', '1', '2008-03-03', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('538', 'Jordan', 'Smith', 'jsmith52', '', '1', '0', '1', '2008-03-03', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('623', 'Pam', 'Herr', 'pherr', '', '1', '0', '5', '2013-09-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('540', 'Justin', 'Rittenhouse', 'jrittenh', '', '1', '0', '1', '2008-04-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('541', 'Kimberly', 'Shreve', 'kshreve', 'https://libstaff.library.nd.edu/images/staff/kims.jpg', '1', '0', '1', '2008-03-31', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('542', 'Justin', 'Rittenhouse', 'jrittenh', 'https://libstaff.library.nd.edu/images/staff/justin.jpg', '1', '0', '1', '2008-04-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('543', 'Kirstin', 'Apker', 'kkrueger', '', '1', '0', '1', '2008-05-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('544', 'Denise', 'Shorey', 'dshorey', 'https://libstaff.library.nd.edu/images/staff/denises.jpg', '4', '0', '1', '2008-07-14', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('545', 'Adam', 'Heet', 'aheet', 'https://libstaff.library.nd.edu/images/staff/adamh.jpg', '0', '0', '1', '2008-07-28', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('546', 'Jennifer', 'Parker', 'jparker9', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '4', '0', '1', '2008-08-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('547', 'Collette', 'Mak', 'cmak', 'https://libstaff.library.nd.edu/images/staff/colette.jpg', '5', '0', '1', '2008-08-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('548', 'Justin', 'DeFerbrache', 'jdeferbr', 'https://libstaff.library.nd.edu/images/staff/justind.jpg', '1', '0', '1', '2008-08-18', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('549', 'Khanh', 'Nguyen', 'pnguyen6', 'https://libstaff.library.nd.edu/images/staff/khanh.jpg', '3', '0', '1', '2008-09-02', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('550', 'Andrea', 'Langhurst', 'alanghur', 'https://libstaff.library.nd.edu/images/staff/andrea.jpg', '4', '0', '1', '2008-09-08', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('553', 'Dolores', 'Tantoco-Stauder', 'dtantoco', '', '', '0', '1', '', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('554', 'Pete', 'Pietraszewski', 'bpietras', 'https://libstaff.library.nd.edu/images/staff/petep.jpg', '3', '0', '1', '2009-01-05', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('555', 'Michelle', 'Hudson', 'mhudson3', 'https://libstaff.library.nd.edu/images/staff/michelleh.jpg', '3', '0', '1', '2009-01-12', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('558', 'Dan', 'Brubaker Horst', 'dbrubak1', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '2009-07-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('557', 'Patricia', 'Lawton', 'plawton', 'https://libstaff.library.nd.edu/images/staff/patlawton.jpg', '4', '0', '1', '2009-05-15', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('559', 'Patrick', 'Rader', 'prader', 'https://libstaff.library.nd.edu/images/staff/patrickr.jpg', '1', '0', '1', '2009-07-14', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('560', 'Katherine', 'Lechuga', 'klechuga', 'https://libstaff.library.nd.edu/images/staff/kathyl.jpg', '6', '0', '1', '2009-09-08', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('561', 'Banu', 'Lakshminarayanan', 'blakshmi', 'https://libstaff.library.nd.edu/images/staff/banu.jpg', '1', '0', '1', '2010-01-04', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('562', 'Rajesh', 'Balekai', 'rbalekai', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '2010-01-04', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('563', 'Bruce', 'Loprete', 'bloprete', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '2010-03-18', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('564', 'Susan', 'Ohmer', 'sohmer', 'https://libstaff.library.nd.edu/images/staff/susano.jpg', '0', '0', '1', '1998-08-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('565', 'James', 'Cachey', 'jcachey', 'https://libstaff.library.nd.edu/images/staff/jamesc.jpg', '1', '0', '1', '2010-06-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('566', 'David', 'Sullivan', 'dsulli10', 'https://libstaff.library.nd.edu/images/staff/daves2.jpg', '5', '0', '1', '2010-07-14', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('567', 'Naomi', 'Bishop', 'nbishop1', 'https://libstaff.library.nd.edu/images/staff/naomi.jpg', '7', '0', '4', '2010-08-02', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('568', 'David', 'Gura', 'dgura', 'https://libstaff.library.nd.edu/images/staff/davidg.jpg', '3', '0', '1', '2010-08-02', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('569', 'Cory', 'Shulaw', 'cshulaw1', '', '1', '0', '1', '2010-06-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('573', 'Robert', 'Kolic', 'rkolic', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', '2011-05-15', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('572', 'David', 'Dressing', 'ddressin', 'http://libstaff.library.nd.edu/images/staff/davidb.jpg', '4', '0', '1', '2011-04-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('570', 'Timothy', 'Jones', 'tjones12', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '2', '2011-02-23', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('571', 'Laura', 'Sill', 'ljenny', 'https://libstaff.library.nd.edu/images/staff/laurasill.jpg', '4', '0', '1', '2011-02-23', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('575', 'Sue', 'Korlan', 'skorlan', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '2', '2011-01-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('578', 'Emily', 'Ether', 'eether', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '2', '2007-05-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('609', 'Alex', 'Papson', 'apapson', '', '3', '0', '1', '2012-10-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('607', 'Julie', 'Tanaka', 'jtanaka1', 'http://www.library.nd.edu/images/staff/juliet.jpg', '3', '0', '1', '2012-09-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('584', 'Jaron', 'Kennel', 'jkennel', 'https://libstaff.library.nd.edu/images/staff/jaronk.jpg', '1', '0', '1', '2011-09-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('582', 'Akilah', 'Dixon', 'adixon4', '', '1', '0', '1', '2011-08-22', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('586', 'Max', 'Tolomei', 'mtolomei', 'https://libstaff.library.nd.edu/images/staff/max.jpg', '1', '0', '2', '2011-11-21', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('612', 'Joan', 'Markham', 'jmarkham', '', '1', '0', '5', '2012-10-08', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('585', 'Viveca', 'Robichaud', 'vpattiso', '', '7', '0', '4', '2011-11-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('576', 'George', 'Krivan', 'gkrivan', 'https://libstaff.library.nd.edu/images/staff/georgek.jpg', '1', '0', '2', '2011-01-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('577', 'Nathaniel', 'Campbell', 'ncampbel', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '2', '2010-09-27', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('579', 'Mary Sue', 'Mackey', 'mmackey1', 'https://libstaff.library.nd.edu/images/staff/marysue.jpg', '1', '0', '1', '2011-10-16', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('580', 'Robert', 'Simon', 'rsimon1', 'https://libstaff.library.nd.edu/images/staff/roberts.jpg', '3', '0', '1', '2012-01-09', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('591', 'Lee', 'Purdy', 'lpurdy1', 'https://libstaff.library.nd.edu/images/staff/leep.jpg', '1', '0', '1', '2012-01-09', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('616', 'John', 'Wang', 'zwang8', '', '4', '0', '1', '2012-12-03', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('581', 'Diane', 'Walker', 'dwalker6', 'https://libstaff.library.nd.edu/images/staff/dianew.jpg', '5', '0', '1', '2011-07-25', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('587', 'Kathleen', 'Fleming', 'kflemin4', 'https://libstaff.library.nd.edu/images/staff/kathleenf.jpg', '6', '0', '2', '2011-12-21', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('588', 'Kyle', 'Willis', 'kwillis1', 'https://libstaff.library.nd.edu/images/staff/kylew.jpg', '6', '0', '2', '2011-12-21', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('589', 'Sarah', 'Kasten', 'skasten', 'https://libstaff.library.nd.edu/images/staff/sarahk.jpg', '6', '0', '2', '2011-12-21', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('590', 'Julia', 'Schneider', 'jschneid', 'https://libstaff.library.nd.edu/images/staff/julies.jpg', '1', '0', '1', '2012-01-09', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('592', 'William', 'Scott', 'wscott5', '', '1', '0', '5', '2012-01-24', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('593', 'Thomas', 'Sharp', 'tsharp', '', '1', '0', '1', '2012-01-26', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('594', 'Janet', 'Chlebek', 'jchlebek', '', '1', '0', '1', '2012-01-30', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('595', 'Andy', 'Schmidt', 'aschmid2', 'http://www.library.nd.edu/images/staff/andys.jpg', '7', '0', '4', '2012-02-02', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('596', 'Michele', 'Kirk', 'mkirk1', '', '1', '0', '1', '2012-02-27', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('597', 'Hye-Jin', 'Juhn', 'hjuhn', 'http://www.library.nd.edu/images/staff/hyejin.jpg', '3', '0', '1', '2012-03-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('598', 'Michael', 'Zeiger', 'mzeiger1', '', '1', '0', '1', '2012-03-12', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('599', 'Andy', 'Wetherill', 'awetheri', '', '1', '0', '1', '2012-03-12', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('600', 'Tarrez', 'Clark', 'tclark5', '', '1', '0', '1', '2012-02-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('601', 'Lauren', 'Ajamie', 'lajamie', '', '3', '0', '1', '2012-05-15', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('602', 'Abby', 'Vande Walle', 'avandewa', '', '1', '0', '1', '2012-06-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('603', 'Monica', 'Moore', 'mmoore18', '', '3', '0', '1', '2012-06-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('604', 'Don', 'Brower', 'dbrower', '', '1', '0', '1', '2012-06-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('605', 'Lisa', 'Cruces', 'ewelty', '', '7', '0', '2', '2012-07-16', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('606', 'Jeremy', 'Friesen', 'jfriesen', '', '1', '0', '1', '2012-07-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('608', 'Paula', 'Blasko', 'pblasko', '', '1', '0', '1', '2012-08-18', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('610', 'Mark', 'Suhovecky', 'msuhovec', '', '1', '0', '1', '2012-10-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('611', 'Tara', 'O`Leary', 'toleary2', '', '1', '0', '1', '2012-10-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('613', 'Suzanne', 'Dias', 'sdias1', '', '1', '0', '5', '2012-10-10', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('614', 'Matthew', 'Simpson', 'msimpson', '', '1', '0', '1', '2012-11-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('615', 'Michael', 'Mueller', 'mmuelle7', '', '1', '0', '1', '2012-11-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('617', 'Natalie', 'Meyers', 'nmunn', '', '4', '0', '1', '2013-01-02', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('618', 'Jonathan', 'Hartzler', 'jhartzle', '', '1', '0', '1', '2013-01-14', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('619', 'Matthew', 'Sisk', 'msisk1', '', '1', '0', '1', '2013-08-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('620', 'James', 'Ng', 'jng2', '', '3', '0', '1', '2013-08-14', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('621', 'Quinton', 'Estes', 'qestes', '', '1', '0', '5', '2013-08-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('622', 'Michael', 'Defreese', 'mdefrees', '', '1', '0', '1', '2013-08-19', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('624', 'Steve', 'Roddick', 'sroddick', '', '1', '0', '5', '2013-09-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('625', 'Brittany', 'Nickerson', 'bnickers', '', '1', '0', '1', '2013-11-04', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('626', 'Julie', 'Vecchio', 'jvecchio', '', '1', '0', '1', '2013-12-02', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('627', 'Lynne', 'Zeiger', 'lzeiger1', '', '1', '0', '5', '2013-12-01', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('628', 'Amanda', 'Gulley', 'agulley', '', '1', '0', '1', '2014-01-27', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, start_date, created_at, updated_at) 
	VALUES ('629', 'Matthew', 'Goldman', 'mgoldman', '', '1', '0', '2', '2014-01-27', now(), now());
UPDATE directory_employees SET supervisor_id = '616' WHERE id = '159';
UPDATE directory_employees SET supervisor_id = '616' WHERE id = '192';
UPDATE directory_employees SET supervisor_id = '581' WHERE id = '616';
UPDATE directory_employees SET supervisor_id = '116' WHERE id = '222';
UPDATE directory_employees SET supervisor_id = '222' WHERE id = '505';
UPDATE directory_employees SET supervisor_id = '614' WHERE id = '65';
UPDATE directory_employees SET supervisor_id = '614' WHERE id = '228';
UPDATE directory_employees SET supervisor_id = '614' WHERE id = '504';
UPDATE directory_employees SET supervisor_id = '614' WHERE id = '503';
UPDATE directory_employees SET supervisor_id = '614' WHERE id = '582';
UPDATE directory_employees SET supervisor_id = '614' WHERE id = '591';
UPDATE directory_employees SET supervisor_id = '81' WHERE id = '569';
UPDATE directory_employees SET supervisor_id = '81' WHERE id = '62';
UPDATE directory_employees SET supervisor_id = '614' WHERE id = '81';
UPDATE directory_employees SET supervisor_id = '81' WHERE id = '114';
UPDATE directory_employees SET supervisor_id = '81' WHERE id = '128';
UPDATE directory_employees SET supervisor_id = '81' WHERE id = '518';
UPDATE directory_employees SET supervisor_id = '81' WHERE id = '506';
UPDATE directory_employees SET supervisor_id = '81' WHERE id = '577';
UPDATE directory_employees SET supervisor_id = '116' WHERE id = '63';
UPDATE directory_employees SET supervisor_id = '581' WHERE id = '116';
UPDATE directory_employees SET supervisor_id = '100' WHERE id = '88';
UPDATE directory_employees SET supervisor_id = '23' WHERE id = '100';
UPDATE directory_employees SET supervisor_id = '100' WHERE id = '123';
UPDATE directory_employees SET supervisor_id = '100' WHERE id = '554';
UPDATE directory_employees SET supervisor_id = '100' WHERE id = '595';
UPDATE directory_employees SET supervisor_id = '581' WHERE id = '614';
UPDATE directory_employees SET supervisor_id = '46' WHERE id = '156';
UPDATE directory_employees SET supervisor_id = '46' WHERE id = '117';
UPDATE directory_employees SET supervisor_id = '46' WHERE id = '191';
UPDATE directory_employees SET supervisor_id = '46' WHERE id = '246';
UPDATE directory_employees SET supervisor_id = '94' WHERE id = '46';
UPDATE directory_employees SET supervisor_id = '550' WHERE id = '29';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '59';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '66';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '252';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '600';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '86';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '134';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '151';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '153';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '186';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '204';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '53';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '211';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '224';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '235';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '92';
UPDATE directory_employees SET supervisor_id = '550' WHERE id = '571';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '61';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '586';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '180';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '97';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '129';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '162';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '163';
UPDATE directory_employees SET supervisor_id = '29' WHERE id = '515';
UPDATE directory_employees SET supervisor_id = '513' WHERE id = '294';
UPDATE directory_employees SET supervisor_id = '513' WHERE id = '72';
UPDATE directory_employees SET supervisor_id = '513' WHERE id = '55';
UPDATE directory_employees SET supervisor_id = '566' WHERE id = '513';
UPDATE directory_employees SET supervisor_id = '513' WHERE id = '218';
UPDATE directory_employees SET supervisor_id = '513' WHERE id = '168';
UPDATE directory_employees SET supervisor_id = '513' WHERE id = '106';
UPDATE directory_employees SET supervisor_id = '513' WHERE id = '22';
UPDATE directory_employees SET supervisor_id = '513' WHERE id = '187';
UPDATE directory_employees SET supervisor_id = '513' WHERE id = '560';
UPDATE directory_employees SET supervisor_id = '155' WHERE id = '35';
UPDATE directory_employees SET supervisor_id = '566' WHERE id = '155';
UPDATE directory_employees SET supervisor_id = '155' WHERE id = '77';
UPDATE directory_employees SET supervisor_id = '155' WHERE id = '206';
UPDATE directory_employees SET supervisor_id = '155' WHERE id = '185';
UPDATE directory_employees SET supervisor_id = '155' WHERE id = '241';
UPDATE directory_employees SET supervisor_id = '155' WHERE id = '568';
UPDATE directory_employees SET supervisor_id = '155' WHERE id = '565';
UPDATE directory_employees SET supervisor_id = '155' WHERE id = '239';
UPDATE directory_employees SET supervisor_id = '155' WHERE id = '244';
UPDATE directory_employees SET supervisor_id = '155' WHERE id = '130';
UPDATE directory_employees SET supervisor_id = '155' WHERE id = '607';
UPDATE directory_employees SET supervisor_id = '572' WHERE id = '19';
UPDATE directory_employees SET supervisor_id = '572' WHERE id = '115';
UPDATE directory_employees SET supervisor_id = '572' WHERE id = '133';
UPDATE directory_employees SET supervisor_id = '572' WHERE id = '175';
UPDATE directory_employees SET supervisor_id = '572' WHERE id = '166';
UPDATE directory_employees SET supervisor_id = '572' WHERE id = '87';
UPDATE directory_employees SET supervisor_id = '572' WHERE id = '223';
UPDATE directory_employees SET supervisor_id = '572' WHERE id = '230';
UPDATE directory_employees SET supervisor_id = '572' WHERE id = '580';
UPDATE directory_employees SET supervisor_id = '566' WHERE id = '572';
UPDATE directory_employees SET supervisor_id = '572' WHERE id = '590';
UPDATE directory_employees SET supervisor_id = '572' WHERE id = '512';
UPDATE directory_employees SET supervisor_id = '572' WHERE id = '597';
UPDATE directory_employees SET supervisor_id = '572' WHERE id = '528';
UPDATE directory_employees SET supervisor_id = '84' WHERE id = '599';
UPDATE directory_employees SET supervisor_id = '67' WHERE id = '84';
UPDATE directory_employees SET supervisor_id = '84' WHERE id = '532';
UPDATE directory_employees SET supervisor_id = '84' WHERE id = '584';
UPDATE directory_employees SET supervisor_id = '84' WHERE id = '618';
UPDATE directory_employees SET supervisor_id = '84' WHERE id = '542';
UPDATE directory_employees SET supervisor_id = '67' WHERE id = '20';
UPDATE directory_employees SET supervisor_id = '67' WHERE id = '25';
UPDATE directory_employees SET supervisor_id = '67' WHERE id = '400';
UPDATE directory_employees SET supervisor_id = '67' WHERE id = '164';
UPDATE directory_employees SET supervisor_id = '67' WHERE id = '41';
UPDATE directory_employees SET supervisor_id = '616' WHERE id = '67';
UPDATE directory_employees SET supervisor_id = '67' WHERE id = '146';
UPDATE directory_employees SET supervisor_id = '67' WHERE id = '210';
UPDATE directory_employees SET supervisor_id = '137' WHERE id = '42';
UPDATE directory_employees SET supervisor_id = '42' WHERE id = '52';
UPDATE directory_employees SET supervisor_id = '42' WHERE id = '138';
UPDATE directory_employees SET supervisor_id = '42' WHERE id = '225';
UPDATE directory_employees SET supervisor_id = '42' WHERE id = '567';
UPDATE directory_employees SET supervisor_id = '57' WHERE id = '541';
UPDATE directory_employees SET supervisor_id = '57' WHERE id = '85';
UPDATE directory_employees SET supervisor_id = '67' WHERE id = '57';
UPDATE directory_employees SET supervisor_id = '57' WHERE id = '526';
UPDATE directory_employees SET supervisor_id = '57' WHERE id = '226';
UPDATE directory_employees SET supervisor_id = '57' WHERE id = '248';
UPDATE directory_employees SET supervisor_id = '57' WHERE id = '615';
UPDATE directory_employees SET supervisor_id = '57' WHERE id = '573';
UPDATE directory_employees SET supervisor_id = '57' WHERE id = '629';
UPDATE directory_employees SET supervisor_id = '616' WHERE id = '550';
UPDATE directory_employees SET supervisor_id = '165' WHERE id = '40';
UPDATE directory_employees SET supervisor_id = '165' WHERE id = '26';
UPDATE directory_employees SET supervisor_id = '165' WHERE id = '48';
UPDATE directory_employees SET supervisor_id = '165' WHERE id = '49';
UPDATE directory_employees SET supervisor_id = '165' WHERE id = '89';
UPDATE directory_employees SET supervisor_id = '165' WHERE id = '135';
UPDATE directory_employees SET supervisor_id = '165' WHERE id = '205';
UPDATE directory_employees SET supervisor_id = '165' WHERE id = '152';
UPDATE directory_employees SET supervisor_id = '165' WHERE id = '579';
UPDATE directory_employees SET supervisor_id = '165' WHERE id = '121';
UPDATE directory_employees SET supervisor_id = '550' WHERE id = '165';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '60';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '613';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '45';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '104';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '112';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '171';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '179';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '181';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '188';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '202';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '232';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '298';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '524';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '534';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '624';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '612';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '563';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '575';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '576';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '593';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '592';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '608';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '625';
UPDATE directory_employees SET supervisor_id = '81' WHERE id = '596';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '621';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '622';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '623';
UPDATE directory_employees SET supervisor_id = '596' WHERE id = '627';
UPDATE directory_employees SET supervisor_id = '546' WHERE id = '68';
UPDATE directory_employees SET supervisor_id = '546' WHERE id = '545';
UPDATE directory_employees SET supervisor_id = '546' WHERE id = '236';
UPDATE directory_employees SET supervisor_id = '546' WHERE id = '243';
UPDATE directory_employees SET supervisor_id = '546' WHERE id = '195';
UPDATE directory_employees SET supervisor_id = '155' WHERE id = '546';
UPDATE directory_employees SET supervisor_id = '546' WHERE id = '508';
UPDATE directory_employees SET supervisor_id = '546' WHERE id = '585';
UPDATE directory_employees SET supervisor_id = '116' WHERE id = '566';
UPDATE directory_employees SET supervisor_id = '174' WHERE id = '54';
UPDATE directory_employees SET supervisor_id = '174' WHERE id = '76';
UPDATE directory_employees SET supervisor_id = '174' WHERE id = '79';
UPDATE directory_employees SET supervisor_id = '174' WHERE id = '535';
UPDATE directory_employees SET supervisor_id = '174' WHERE id = '125';
UPDATE directory_employees SET supervisor_id = '174' WHERE id = '126';
UPDATE directory_employees SET supervisor_id = '222' WHERE id = '174';
UPDATE directory_employees SET supervisor_id = '174' WHERE id = '183';
UPDATE directory_employees SET supervisor_id = '174' WHERE id = '190';
UPDATE directory_employees SET supervisor_id = '174' WHERE id = '602';
UPDATE directory_employees SET supervisor_id = '174' WHERE id = '118';
UPDATE directory_employees SET supervisor_id = '174' WHERE id = '199';
UPDATE directory_employees SET supervisor_id = '174' WHERE id = '82';
UPDATE directory_employees SET supervisor_id = '137' WHERE id = '169';
UPDATE directory_employees SET supervisor_id = '137' WHERE id = '91';
UPDATE directory_employees SET supervisor_id = '91' WHERE id = '47';
UPDATE directory_employees SET supervisor_id = '137' WHERE id = '213';
UPDATE directory_employees SET supervisor_id = '137' WHERE id = '142';
UPDATE directory_employees SET supervisor_id = '137' WHERE id = '137';
UPDATE directory_employees SET supervisor_id = '234' WHERE id = '21';
UPDATE directory_employees SET supervisor_id = '234' WHERE id = '33';
UPDATE directory_employees SET supervisor_id = '234' WHERE id = '517';
UPDATE directory_employees SET supervisor_id = '234' WHERE id = '296';
UPDATE directory_employees SET supervisor_id = '174' WHERE id = '234';
UPDATE directory_employees SET supervisor_id = '234' WHERE id = '536';
UPDATE directory_employees SET supervisor_id = '234' WHERE id = '537';
UPDATE directory_employees SET supervisor_id = '234' WHERE id = '538';
UPDATE directory_employees SET supervisor_id = '234' WHERE id = '594';
UPDATE directory_employees SET supervisor_id = '231' WHERE id = '511';
UPDATE directory_employees SET supervisor_id = '94' WHERE id = '231';
UPDATE directory_employees SET supervisor_id = '231' WHERE id = '209';
UPDATE directory_employees SET supervisor_id = '231' WHERE id = '245';
UPDATE directory_employees SET supervisor_id = '231' WHERE id = '28';
UPDATE directory_employees SET supervisor_id = '552' WHERE id = '519';
UPDATE directory_employees SET supervisor_id = '552' WHERE id = '562';
UPDATE directory_employees SET supervisor_id = '529' WHERE id = '552';
UPDATE directory_employees SET supervisor_id = '552' WHERE id = '561';
UPDATE directory_employees SET supervisor_id = '552' WHERE id = '558';
UPDATE directory_employees SET supervisor_id = '552' WHERE id = '606';
UPDATE directory_employees SET supervisor_id = '552' WHERE id = '604';
UPDATE directory_employees SET supervisor_id = '222' WHERE id = '23';
UPDATE directory_employees SET supervisor_id = '222' WHERE id = '587';
UPDATE directory_employees SET supervisor_id = '222' WHERE id = '555';
UPDATE directory_employees SET supervisor_id = '222' WHERE id = '588';
UPDATE directory_employees SET supervisor_id = '222' WHERE id = '589';
UPDATE directory_employees SET supervisor_id = '222' WHERE id = '620';
UPDATE directory_employees SET supervisor_id = '550' WHERE id = '150';
UPDATE directory_employees SET supervisor_id = '550' WHERE id = '102';
UPDATE directory_employees SET supervisor_id = '550' WHERE id = '178';
UPDATE directory_employees SET supervisor_id = '550' WHERE id = '601';
UPDATE directory_employees SET supervisor_id = '550' WHERE id = '603';
UPDATE directory_employees SET supervisor_id = '529' WHERE id = '619';
UPDATE directory_employees SET supervisor_id = '616' WHERE id = '529';
UPDATE directory_employees SET supervisor_id = '529' WHERE id = '617';
UPDATE directory_employees SET supervisor_id = '529' WHERE id = '626';
UPDATE directory_employees SET supervisor_id = '550' WHERE id = '94';
UPDATE directory_employees SET supervisor_id = '67' WHERE id = '95';
UPDATE directory_employees SET supervisor_id = '67' WHERE id = '220';
UPDATE directory_employees SET supervisor_id = '67' WHERE id = '610';
UPDATE directory_employees SET supervisor_id = '529' WHERE id = '172';
UPDATE directory_employees SET supervisor_id = '529' WHERE id = '557';
UPDATE directory_employees SET supervisor_id = '529' WHERE id = '559';
UPDATE directory_employees SET supervisor_id = '529' WHERE id = '609';
UPDATE directory_employees SET supervisor_id = '529' WHERE id = '628';
UPDATE directory_employees SET supervisor_id = '614' WHERE id = '221';
UPDATE directory_employees SET supervisor_id = '221' WHERE id = '34';
UPDATE directory_employees SET supervisor_id = '81' WHERE id = '43';
UPDATE directory_employees SET supervisor_id = '81' WHERE id = '531';
UPDATE directory_employees SET supervisor_id = '23' WHERE id = '137';
UPDATE directory_employees SET supervisor_id = '23' WHERE id = '216';
UPDATE directory_employees SET supervisor_id = '216' WHERE id = '56';
UPDATE directory_employees SET status_id = '10' WHERE id = '19';
UPDATE directory_employees SET status_id = '10' WHERE id = '20';
UPDATE directory_employees SET status_id = '10' WHERE id = '22';
UPDATE directory_employees SET status_id = '10' WHERE id = '24';
UPDATE directory_employees SET status_id = '10' WHERE id = '27';
UPDATE directory_employees SET status_id = '10' WHERE id = '502';
UPDATE directory_employees SET status_id = '10' WHERE id = '34';
UPDATE directory_employees SET status_id = '10' WHERE id = '35';
UPDATE directory_employees SET status_id = '10' WHERE id = '37';
UPDATE directory_employees SET status_id = '10' WHERE id = '38';
UPDATE directory_employees SET status_id = '10' WHERE id = '39';
UPDATE directory_employees SET status_id = '10' WHERE id = '44';
UPDATE directory_employees SET status_id = '10' WHERE id = '45';
UPDATE directory_employees SET status_id = '10' WHERE id = '50';
UPDATE directory_employees SET status_id = '10' WHERE id = '51';
UPDATE directory_employees SET status_id = '10' WHERE id = '58';
UPDATE directory_employees SET status_id = '10' WHERE id = '59';
UPDATE directory_employees SET status_id = '10' WHERE id = '60';
UPDATE directory_employees SET status_id = '10' WHERE id = '62';
UPDATE directory_employees SET status_id = '10' WHERE id = '63';
UPDATE directory_employees SET status_id = '10' WHERE id = '64';
UPDATE directory_employees SET status_id = '10' WHERE id = '68';
UPDATE directory_employees SET status_id = '10' WHERE id = '69';
UPDATE directory_employees SET status_id = '10' WHERE id = '74';
UPDATE directory_employees SET status_id = '10' WHERE id = '75';
UPDATE directory_employees SET status_id = '10' WHERE id = '77';
UPDATE directory_employees SET status_id = '10' WHERE id = '86';
UPDATE directory_employees SET status_id = '10' WHERE id = '88';
UPDATE directory_employees SET status_id = '10' WHERE id = '90';
UPDATE directory_employees SET status_id = '10' WHERE id = '93';
UPDATE directory_employees SET status_id = '10' WHERE id = '101';
UPDATE directory_employees SET status_id = '10' WHERE id = '103';
UPDATE directory_employees SET status_id = '10' WHERE id = '104';
UPDATE directory_employees SET status_id = '10' WHERE id = '108';
UPDATE directory_employees SET status_id = '10' WHERE id = '109';
UPDATE directory_employees SET status_id = '10' WHERE id = '112';
UPDATE directory_employees SET status_id = '10' WHERE id = '113';
UPDATE directory_employees SET status_id = '10' WHERE id = '114';
UPDATE directory_employees SET status_id = '10' WHERE id = '115';
UPDATE directory_employees SET status_id = '10' WHERE id = '120';
UPDATE directory_employees SET status_id = '10' WHERE id = '124';
UPDATE directory_employees SET status_id = '10' WHERE id = '125';
UPDATE directory_employees SET status_id = '10' WHERE id = '126';
UPDATE directory_employees SET status_id = '10' WHERE id = '127';
UPDATE directory_employees SET status_id = '10' WHERE id = '128';
UPDATE directory_employees SET status_id = '10' WHERE id = '136';
UPDATE directory_employees SET status_id = '10' WHERE id = '140';
UPDATE directory_employees SET status_id = '10' WHERE id = '141';
UPDATE directory_employees SET status_id = '10' WHERE id = '144';
UPDATE directory_employees SET status_id = '10' WHERE id = '145';
UPDATE directory_employees SET status_id = '10' WHERE id = '146';
UPDATE directory_employees SET status_id = '10' WHERE id = '147';
UPDATE directory_employees SET status_id = '10' WHERE id = '148';
UPDATE directory_employees SET status_id = '10' WHERE id = '149';
UPDATE directory_employees SET status_id = '10' WHERE id = '153';
UPDATE directory_employees SET status_id = '10' WHERE id = '154';
UPDATE directory_employees SET status_id = '10' WHERE id = '157';
UPDATE directory_employees SET status_id = '10' WHERE id = '158';
UPDATE directory_employees SET status_id = '10' WHERE id = '159';
UPDATE directory_employees SET status_id = '10' WHERE id = '168';
UPDATE directory_employees SET status_id = '10' WHERE id = '170';
UPDATE directory_employees SET status_id = '10' WHERE id = '171';
UPDATE directory_employees SET status_id = '10' WHERE id = '176';
UPDATE directory_employees SET status_id = '10' WHERE id = '179';
UPDATE directory_employees SET status_id = '10' WHERE id = '183';
UPDATE directory_employees SET status_id = '10' WHERE id = '185';
UPDATE directory_employees SET status_id = '10' WHERE id = '186';
UPDATE directory_employees SET status_id = '10' WHERE id = '187';
UPDATE directory_employees SET status_id = '10' WHERE id = '188';
UPDATE directory_employees SET status_id = '10' WHERE id = '190';
UPDATE directory_employees SET status_id = '10' WHERE id = '192';
UPDATE directory_employees SET status_id = '10' WHERE id = '194';
UPDATE directory_employees SET status_id = '10' WHERE id = '195';
UPDATE directory_employees SET status_id = '10' WHERE id = '197';
UPDATE directory_employees SET status_id = '10' WHERE id = '198';
UPDATE directory_employees SET status_id = '10' WHERE id = '200';
UPDATE directory_employees SET status_id = '10' WHERE id = '202';
UPDATE directory_employees SET status_id = '10' WHERE id = '204';
UPDATE directory_employees SET status_id = '10' WHERE id = '208';
UPDATE directory_employees SET status_id = '10' WHERE id = '210';
UPDATE directory_employees SET status_id = '10' WHERE id = '212';
UPDATE directory_employees SET status_id = '10' WHERE id = '217';
UPDATE directory_employees SET status_id = '10' WHERE id = '224';
UPDATE directory_employees SET status_id = '10' WHERE id = '225';
UPDATE directory_employees SET status_id = '10' WHERE id = '226';
UPDATE directory_employees SET status_id = '10' WHERE id = '236';
UPDATE directory_employees SET status_id = '10' WHERE id = '238';
UPDATE directory_employees SET status_id = '10' WHERE id = '239';
UPDATE directory_employees SET status_id = '10' WHERE id = '241';
UPDATE directory_employees SET status_id = '10' WHERE id = '243';
UPDATE directory_employees SET status_id = '10' WHERE id = '247';
UPDATE directory_employees SET status_id = '10' WHERE id = '248';
UPDATE directory_employees SET status_id = '10' WHERE id = '249';
UPDATE directory_employees SET status_id = '10' WHERE id = '250';
UPDATE directory_employees SET status_id = '10' WHERE id = '251';
UPDATE directory_employees SET status_id = '10' WHERE id = '252';
UPDATE directory_employees SET status_id = '10' WHERE id = '293';
UPDATE directory_employees SET status_id = '10' WHERE id = '516';
UPDATE directory_employees SET status_id = '10' WHERE id = '296';
UPDATE directory_employees SET status_id = '10' WHERE id = '297';
UPDATE directory_employees SET status_id = '10' WHERE id = '298';
UPDATE directory_employees SET status_id = '10' WHERE id = '400';
UPDATE directory_employees SET status_id = '10' WHERE id = '500';
UPDATE directory_employees SET status_id = '10' WHERE id = '501';
UPDATE directory_employees SET status_id = '10' WHERE id = '503';
UPDATE directory_employees SET status_id = '10' WHERE id = '505';
UPDATE directory_employees SET status_id = '10' WHERE id = '506';
UPDATE directory_employees SET status_id = '10' WHERE id = '509';
UPDATE directory_employees SET status_id = '10' WHERE id = '510';
UPDATE directory_employees SET status_id = '10' WHERE id = '514';
UPDATE directory_employees SET status_id = '10' WHERE id = '519';
UPDATE directory_employees SET status_id = '10' WHERE id = '520';
UPDATE directory_employees SET status_id = '10' WHERE id = '521';
UPDATE directory_employees SET status_id = '10' WHERE id = '522';
UPDATE directory_employees SET status_id = '10' WHERE id = '523';
UPDATE directory_employees SET status_id = '10' WHERE id = '524';
UPDATE directory_employees SET status_id = '10' WHERE id = '526';
UPDATE directory_employees SET status_id = '10' WHERE id = '527';
UPDATE directory_employees SET status_id = '10' WHERE id = '528';
UPDATE directory_employees SET status_id = '10' WHERE id = '530';
UPDATE directory_employees SET status_id = '10' WHERE id = '533';
UPDATE directory_employees SET status_id = '10' WHERE id = '535';
UPDATE directory_employees SET status_id = '10' WHERE id = '536';
UPDATE directory_employees SET status_id = '10' WHERE id = '537';
UPDATE directory_employees SET status_id = '10' WHERE id = '538';
UPDATE directory_employees SET status_id = '10' WHERE id = '540';
UPDATE directory_employees SET status_id = '10' WHERE id = '543';
UPDATE directory_employees SET status_id = '10' WHERE id = '544';
UPDATE directory_employees SET status_id = '10' WHERE id = '548';
UPDATE directory_employees SET status_id = '10' WHERE id = '549';
UPDATE directory_employees SET status_id = '10' WHERE id = '553';
UPDATE directory_employees SET status_id = '10' WHERE id = '555';
UPDATE directory_employees SET status_id = '10' WHERE id = '560';
UPDATE directory_employees SET status_id = '10' WHERE id = '563';
UPDATE directory_employees SET status_id = '10' WHERE id = '564';
UPDATE directory_employees SET status_id = '10' WHERE id = '567';
UPDATE directory_employees SET status_id = '10' WHERE id = '569';
UPDATE directory_employees SET status_id = '10' WHERE id = '570';
UPDATE directory_employees SET status_id = '10' WHERE id = '578';
UPDATE directory_employees SET status_id = '10' WHERE id = '586';
UPDATE directory_employees SET status_id = '10' WHERE id = '585';
UPDATE directory_employees SET status_id = '10' WHERE id = '577';
UPDATE directory_employees SET status_id = '10' WHERE id = '588';
UPDATE directory_employees SET status_id = '10' WHERE id = '589';
UPDATE directory_employees SET status_id = '10' WHERE id = '592';
UPDATE directory_employees SET status_id = '10' WHERE id = '624';
INSERT INTO directory_employee_ranks (id, name, created_at, updated_at) 
	VALUES ('1', 'Staff', now(), now());
INSERT INTO directory_employee_ranks (id, name, created_at, updated_at) 
	VALUES ('7', 'Visiting Assistant Librarian', now(), now());
INSERT INTO directory_employee_ranks (id, name, created_at, updated_at) 
	VALUES ('3', 'Assistant Librarian', now(), now());
INSERT INTO directory_employee_ranks (id, name, created_at, updated_at) 
	VALUES ('4', 'Associate Librarian', now(), now());
INSERT INTO directory_employee_ranks (id, name, created_at, updated_at) 
	VALUES ('5', 'Librarian', now(), now());
INSERT INTO directory_employee_ranks (id, name, created_at, updated_at) 
	VALUES ('6', 'Adjunct Assistant', now(), now());
INSERT INTO directory_employee_statuses (id, name, created_at, updated_at) 
	VALUES ('1', 'Regular', now(), now());
INSERT INTO directory_employee_statuses (id, name, created_at, updated_at) 
	VALUES ('2', 'Temporary', now(), now());
INSERT INTO directory_employee_statuses (id, name, created_at, updated_at) 
	VALUES ('3', 'Adjunct', now(), now());
INSERT INTO directory_employee_statuses (id, name, created_at, updated_at) 
	VALUES ('4', 'Visiting', now(), now());
INSERT INTO directory_employee_statuses (id, name, created_at, updated_at) 
	VALUES ('5', 'On Call', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('551', '1', '0', 'Senior Administrative Assistant to the Edward H. Arnold University Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('581', '1', '1', 'Edward H. Arnold University Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('116', '1', '0', 'Associate University Librarian, Academic Services and Collections', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('614', '1', '0', 'Director, Finance and Administration', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('132', '1', '0', 'Executive Administrator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('611', '1', '0', 'Program Director, Communications and Marketing', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('616', '1', '0', 'Associate University Librarian, Digital Access, Resources and Information Technology', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('616', '2', '1', 'Associate University Librarian, Digital Access, Resources and Information Technology', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('222', '90', '1', 'Program Director, Academic Outreach and Engagement', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('65', '4', '0', 'Procurement Assistant', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('228', '4', '0', 'Senior Personnel Operations Coordinator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('504', '4', '0', 'Senior Accounting Specialist', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('582', '4', '0', 'Administrative Assistant', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('591', '4', '0', 'Business Analyst', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('81', '6', '1', 'Facilities Manager', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('518', '6', '0', 'Building Sevices Assistant', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('116', '10', '1', 'Associate University Librarian, Academic Services and Collections', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('100', '11', '1', 'Manager, Business and Social Sciences', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('123', '11', '0', 'Anthropology and Interim Sociology Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('554', '11', '0', 'Business Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('595', '11', '0', 'Visiting Business Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('614', '100', '1', 'Director, Finance and Administration', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('156', '108', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('117', '108', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('191', '108', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('246', '108', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('46', '108', '1', 'Supervisor, Data Support Services', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('29', '17', '0', 'Supervisor, Acquisitions Services and Interlibrary Loan', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('66', '17', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('600', '17', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('134', '17', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('151', '17', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('53', '17', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('211', '17', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('235', '17', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('92', '17', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('571', '17', '1', 'Manager, Acquisitions Services and Interlibrary Loan', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('61', '17', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('180', '17', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('97', '17', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('129', '17', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('162', '17', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('163', '17', '0', 'Library Assistant I', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('515', '17', '0', 'Library Assistant I', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('294', '18', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('72', '18', '0', 'Conservator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('55', '18', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('513', '18', '1', 'Head, Preservation', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('218', '18', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('106', '18', '0', 'Senior Bindery Services Specialist', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('155', '19', '1', 'Head, Rare Books and Special Collections', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('206', '19', '0', 'Special Collections Curator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('568', '19', '0', 'Curator, Ancient and Medieval Manuscripts and Early Imprints', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('565', '19', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('244', '19', '0', 'Special Collections Digital Project Specialist', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('130', '19', '0', 'Assistant Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('607', '19', '0', 'Western European History Librarian ', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('133', '26', '0', 'Theology and Philosophy Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('175', '26', '0', 'Administrative Assistant', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('166', '26', '0', 'Catholic Studies Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('87', '26', '0', 'English and French Literatures Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('223', '26', '0', 'Medieval Studies Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('230', '26', '0', 'Visual Arts Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('580', '26', '0', 'Music Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('572', '26', '1', 'Head, Arts and Area Studies Subject Specialists', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('590', '26', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('512', '26', '0', 'Irish Studies Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('597', '26', '0', 'East Asian Studies Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('599', '101', '0', 'Web Developer', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('84', '101', '1', 'Manager, Web and Software Engineering Unit', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('532', '101', '0', 'Software Engineer', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('584', '101', '0', 'Software Engineer', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('618', '101', '0', 'Software Engineer', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('542', '101', '0', 'Senior Applications Developer', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('25', '32', '0', 'Systems Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('164', '32', '0', 'Instructional Designer', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('41', '32', '0', 'IT Projects Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('67', '32', '1', 'Program Director, Information Technology', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('42', '33', '1', 'Engineering Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('52', '33', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('138', '33', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('541', '34', '0', 'IT Support Coordinator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('85', '34', '0', 'IT Support Coordinator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('57', '34', '1', 'Manager, Library Information Technology Support', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('615', '34', '0', 'IT Support Coordinator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('573', '34', '0', 'IT Support Coordinator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('629', '34', '0', 'Temporary Client Services Coordinator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('550', '35', '1', 'Program Director, Resource Acquisitions and Discovery', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('40', '109', '0', 'Original Cataloging and Authorities Associate', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('26', '109', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('48', '109', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('49', '109', '0', 'Supervisor, Metadata Services/Original and Special Cataloging Services', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('89', '109', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('135', '109', '0', 'German, Humanities and Theology Cataloging Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('205', '109', '0', 'Rare Books Cataloging Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('152', '109', '0', 'Audiovisual Cataloging Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('579', '109', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('121', '109', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('165', '109', '1', 'Head, Metadata Services, Original and Special Cataloging Services', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('613', '38', '0', 'Library Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('181', '38', '0', 'Library Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('232', '38', '0', 'Library Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('534', '38', '0', 'Library Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('612', '38', '0', 'Library Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('575', '38', '0', 'Library Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('576', '38', '0', 'Library Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('593', '38', '0', 'Library Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('608', '38', '0', 'Library Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('625', '38', '0', 'Library Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('596', '38', '0', 'Supervisor, Monitors', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('621', '38', '0', 'Library Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('622', '38', '0', 'Library Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('623', '38', '0', 'Library Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('627', '38', '0', 'Library Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('545', '39', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('546', '39', '1', 'Architecture Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('508', '39', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('566', '98', '1', 'Program Director, Arts and Humanities Research Services', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('54', '42', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('76', '42', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('79', '42', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('174', '42', '1', 'Manager, Frontline Services', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('602', '42', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('118', '42', '0', 'Library Assistant I', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('199', '42', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('82', '42', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('169', '119', '1', 'Chemistry and Physics Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('91', '119', '0', 'Senior Branch Library Services Specialist', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('47', '119', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('213', '44', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('142', '44', '0', 'Senior Branch Library Services Specialist', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('137', '44', '1', 'Manager, Sciences and Engineering', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('161', '71', '0', 'Visual Resources Curator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('21', '60', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('33', '60', '0', 'Library Assistant I', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('517', '60', '0', 'Library Assistant I', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('234', '60', '1', 'Supervisor, Stacks Management', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('594', '60', '0', 'Library Assistant I', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('215', '117', '0', 'Outreach Services Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('98', '117', '0', 'Graduate Outreach Services and Education Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('71', '117', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('73', '117', '0', 'Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('511', '107', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('231', '107', '1', 'Supervisor, Batchprocessing Services', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('209', '107', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('245', '107', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('28', '107', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('562', '86', '0', 'Senior Programmer / Analyst', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('552', '86', '1', 'Co-Program Director, Digital Library Initiatives and Scholarship ', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('561', '86', '0', 'Senior Programmer/Analyst', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('558', '86', '0', 'Digital Library Applications Lead', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('606', '86', '0', 'Projects/Application Developer', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('604', '86', '0', 'Digital Library Infrastructure Lead', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('23', '91', '0', 'Interim Program Director, Science, Engineering, Social Science and Business', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('587', '91', '0', 'Temporary Adjunct Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('620', '91', '0', 'Economics Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('150', '103', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('102', '103', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('178', '103', '0', 'Serials Acquisitions Specialist', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('601', '103', '0', 'Electronic Resources Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('603', '103', '0', 'Electronic Resources Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('619', '97', '0', 'Postdoctoral Fellow', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('529', '97', '1', 'Co-Program Director, Digital Library Initiatives and Scholarship', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('617', '97', '0', 'E-Research Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('626', '97', '0', 'Digital Scholarship Coordinator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('94', '106', '1', 'Manager, Metadata Services/Batch Processing and Data Support', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('95', '102', '0', 'Senior Systems Administrator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('220', '102', '0', 'Senior Systems Administrator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('610', '102', '0', 'Senior Systems Administrator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('172', '104', '0', 'Digital Initiatives Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('557', '104', '0', 'Digital Projects Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('559', '104', '0', 'Media Digitization Specialist', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('609', '104', '0', 'Metadata and Digital Services Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('628', '104', '0', 'Media Digitization Specialist', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('221', '105', '1', 'Organizational Development Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('43', '114', '0', 'Lead Mailroom Assistant', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('531', '114', '0', 'Mail Processing Assistant', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('507', '115', '1', 'Head, Teaching & Instructional Services', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('547', '115', '0', 'Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('598', '115', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('30', '115', '0', 'Outreach Services Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('605', '115', '0', 'Librarian-In-Residence', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('137', '118', '1', 'Manager, Sciences and Engineering', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('216', '118', '0', 'Manager, Branch Staff and Mahaffey Business Library', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('56', '118', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('222', '90', '1', 'Psychology Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('100', '11', '1', 'Entrepreneurial Spirit Endowed Business Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('155', '19', '1', 'Russian and East European Studies Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('568', '19', '0', 'Concurrent Assistant Professor of Medieval Studies', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('607', '19', '0', 'Curator, European Manuscripts and Early Printed Books', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('572', '26', '1', 'Latin American and Iberian Studies Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('49', '109', '0', 'Social Sciences/Hispanic Cataloging Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('135', '109', '0', 'German Language and Literature Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('165', '109', '1', 'Principal Cataloger', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('566', '98', '1', 'Classical and Byzantine Studies Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('137', '44', '1', 'Biology, Medicine, Mathematics & Statistics Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('552', '86', '1', 'E-Research and Digital Initiatives', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('23', '91', '0', 'Peace Studies Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('529', '97', '1', ' Curator, Italian Imprints and Dante Collection', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('557', '104', '0', 'Catholic Research Resources Alliance', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('507', '115', '1', ' First Year of Studies & University Writing Program Liaison', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('30', '115', '0', 'Library Faculty Affirmative Action Officer', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, employee_unit_title, created_at, updated_at) 
	VALUES ('137', '118', '1', 'Biology, Medicine, Mathematics & Statistics Librarian', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1034', 'DirectoryLibraryCommittee','116', 'Circulation Working Group', now(), now(), 'MALC: Kevin Blower, Lisa Karle, Tim Amstutz, Sarah Kolda');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1003', 'DirectoryLibraryCommittee','581', 'Committee on Appointments and Promotions', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1004', 'DirectoryLibraryCommittee','616', 'Library Training and Development Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1005', 'DirectoryLibraryCommittee','581', 'Executive Committee of the Library Faculty (ELF)', now(), now(), 'Eric Morgan will replace Doug Archer by virtue of assuming position of senior FS representative, with term ending July 31, 2014.');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1088', 'DirectoryUniversityCommittee','581', 'Graduate Council', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1075', 'DirectoryLibraryCommittee','116', 'Document Delivery Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1049', 'DirectoryUniversityCommittee','581', 'Academic Affirmative Action Committee', now(), now(), 'University Committee, appointed by President');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1035', 'DirectoryLibraryCommittee','581', 'Diversity Committee', now(), now(), 'Dwight King (Law Library)');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1083', 'DirectoryUniversityCommittee','192', 'University Council for Academic Technologies', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1048', 'DirectoryLibraryCommittee','116', 'Library Orientation Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1058', 'DirectoryUniversityCommittee','581', 'Academic & Faculty Affairs Comm of the U Board of Trustees', now(), now(), 'University committee, elective');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1051', 'DirectoryUniversityCommittee','581', 'Judicial Review Board', now(), now(), 'University Committee, appointive');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1052', 'DirectoryUniversityCommittee','544', 'University Committee on First Year of Studies', now(), now(), 'University Committee, appointive');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1054', 'DirectoryUniversityCommittee','0', 'University Staff Advisory Council', now(), now(), 'Elected by Library staff');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1055', 'DirectoryLibraryCommittee','581', 'Library Faculty Elections Committee', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1056', 'DirectoryLibraryCommittee','581', 'Faculty Professional Development Committee', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1057', 'DirectoryUniversityCommittee','581', 'Academic Council', now(), now(), 'Elective, University Librarian is ex officio.');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1059', 'DirectoryUniversityCommittee','581', 'Faculty Grievance Committee (University)', now(), now(), 'Elective');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1060', 'DirectoryUniversityCommittee','581', 'Faculty Senate', now(), now(), 'University Committee, elective');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1061', 'DirectoryUniversityCommittee','0', 'University Committee on Elections', now(), now(), 'University committee, appointive, Chair of the Library Faculty Elections Committee.');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1062', 'DirectoryUniversityCommittee','581', 'University Committee on Libraries (UCL)', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1068', 'DirectoryLibraryCommittee','116', 'Special Collections Exhibits Committee', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1064', 'DirectoryUniversityCommittee','0', 'University Committee on Women Faculty and Students', now(), now(), 'University Committee, elective');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1078', 'DirectoryLibraryCommittee','616', 'Serials Working Group (SWG)', now(), now(), 'Sue Wiegand: SMC member');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1079', 'DirectoryLibraryCommittee','616', 'Aleph Upgrade Team', now(), now(), 'Kitty Marschall, Saint Marys, MALC representative');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1095', 'DirectoryLibraryCommittee','616', 'MetaSearch Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1084', 'DirectoryLibraryCommittee','0', 'Library Faculty', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1085', 'DirectoryLibraryCommittee','616', 'Aleph Working Group (AWG)', now(), now(), 'Kevin Blowers: Bethel College; Sara Kolda: Holy Cross College; Kitty Marschall: St. Mary’s College');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1087', 'DirectoryLibraryCommittee','132', 'Library Materials Budget Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1090', 'DirectoryLibraryCommittee','581', 'Task Force on University Libraries Participation In the IN Light Archive', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1092', 'DirectoryLibraryCommittee','616', 'OCLC Services Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1096', 'DirectoryLibraryCommittee','616', 'SFX Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1097', 'DirectoryLibraryCommittee','581', 'Christmas Party Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1123', 'DirectoryLibraryCommittee','581', 'Hesburgh Library Staff Advocacy Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1130', 'DirectoryUniversityCommittee','581', 'University  Committee on Research, Library, and Special Professional Faculty  Appeals', now(), now(), 'In addition to the four faculty from Hesburgh Libraries, there are also two faculty from the Kresge Law Library.');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1103', 'DirectoryUniversityCommittee','616', 'Software Committee', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1114', 'DirectoryLibraryCommittee','581', 'Library Sustainability Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1118', 'DirectoryLibraryCommittee','616', 'E-Book Steering Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1119', 'DirectoryLibraryCommittee','616', 'E-Book Steering Team: Batch Record Set Working Group', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1120', 'DirectoryLibraryCommittee','616', 'E-Book Steering Team: Licensing/Acquisitions Working Group', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1126', 'DirectoryLibraryCommittee','616', 'Wiki Oversight Team', now(), now(), '');
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('49', '1002', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('42', '1002', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('67', '1008', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('155', '1008', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('30', '1008', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('25', '1079', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('222', '1007', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('23', '1002', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('172', '1005', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('72', '1003', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('30', '1001', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('25', '1119', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('100', '1005', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('135', '1021', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('165', '1021', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('23', '1023', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('165', '1023', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('178', '1023', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('169', '1003', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('94', '1025', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('142', '1025', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('178', '1025', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('231', '1025', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('73', '1030', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('57', '1103', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('142', '1034', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('41', '1035', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('123', '1035', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('73', '1037', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('116', '1037', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('169', '1037', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('49', '1038', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('133', '1038', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('30', '1039', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('137', '1039', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('221', '1039', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('222', '1039', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('30', '1040', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('137', '1040', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('221', '1040', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('222', '1040', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('72', '1043', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('206', '1043', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('244', '1043', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('30', '1044', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('137', '1044', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('221', '1044', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('222', '1044', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('30', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('41', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('42', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('23', '1060', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('100', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('73', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('116', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('89', '1094', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('137', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('165', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('169', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('230', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('132', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('132', '1015', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('94', '1048', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('42', '1118', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('67', '1007', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('73', '1007', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('87', '1007', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('215', '1007', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('30', '1049', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('206', '1068', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('98', '1061', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('580', '1130', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('73', '1032', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('222', '1032', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('30', '1035', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('246', '1094', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('230', '1037', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('73', '1045', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('169', '1044', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('116', '1043', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('118', '1048', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('175', '1066', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('558', '1066', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('23', '1067', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('30', '1067', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('73', '1067', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('87', '1067', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('91', '1067', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('172', '1067', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('230', '1067', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('244', '1068', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('72', '1068', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('116', '1068', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('91', '1034', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('166', '1032', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('25', '1033', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('30', '1070', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('166', '1048', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('41', '1008', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('581', '1062', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('94', '1072', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('218', '1068', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('72', '1074', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('211', '1074', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('169', '1075', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('166', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('25', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('40', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('28', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('56', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('91', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('94', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('98', '1004', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('121', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('142', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('150', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('221', '1004', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('178', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('102', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('211', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('231', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('100', '1079', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('165', '1079', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('178', '1079', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('199', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('67', '1080', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('222', '1080', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('25', '1080', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('95', '1080', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('41', '1048', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('67', '1082', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('222', '1082', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('172', '1083', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('550', '1058', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('223', '1072', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('513', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('25', '1085', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('174', '1085', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('95', '1085', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('165', '1085', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('94', '1085', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('231', '1085', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('56', '1094', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('138', '1048', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('230', '1129', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('150', '1129', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('504', '1087', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('67', '1086', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('222', '1033', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('100', '1100', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('165', '1118', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('57', '1004', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('25', '1086', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('71', '1086', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('87', '1129', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('205', '1033', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('81', '1129', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('65', '1129', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('52', '1129', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('67', '1091', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('215', '1091', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('40', '1092', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('46', '1092', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('209', '1092', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('133', '1092', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('222', '1092', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('29', '1094', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('25', '1095', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('67', '1095', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('94', '1095', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('123', '1095', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('73', '1095', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('215', '1096', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('138', '1096', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('67', '1096', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('95', '1096', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('82', '1096', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('603', '1056', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('222', '1128', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('216', '1128', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('572', '1128', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('542', '1034', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('174', '1034', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('216', '1034', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('116', '1015', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('512', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('67', '1128', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('118', '1097', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('56', '1097', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('53', '1097', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('79', '1097', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('81', '1098', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('30', '1098', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('57', '1098', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('222', '1098', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('529', '1099', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('42', '1099', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('199', '1099', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('87', '1099', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('221', '1081', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('547', '1081', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('164', '1100', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('222', '1100', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('244', '1100', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('172', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('547', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('98', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('513', '1101', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('41', '1101', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('67', '1101', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('155', '1101', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('172', '1101', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('221', '1086', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('98', '1102', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('130', '1102', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('206', '1102', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('152', '1102', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('230', '1102', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('513', '1102', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('172', '1102', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('42', '1102', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('598', '1114', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('23', '1062', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('166', '1114', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('42', '1130', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('123', '1130', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('529', '1128', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('222', '1005', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('30', '1003', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('54', '1097', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('132', '1098', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('215', '1102', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('42', '1075', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('132', '1087', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('49', '1092', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('513', '1099', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('30', '1090', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('23', '1057', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('507', '1052', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('230', '1130', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('76', '1106', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('81', '1106', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('73', '1106', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('547', '1106', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('169', '1106', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('165', '1106', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('230', '1106', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('169', '1107', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('529', '1108', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('546', '1108', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('541', '1109', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('222', '1109', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('199', '1109', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('133', '1109', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('29', '1110', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('106', '1110', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('132', '1110', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('61', '1111', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('67', '1112', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('100', '1112', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('174', '1112', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('230', '1112', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('81', '1113', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('73', '1113', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('132', '1113', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('554', '1066', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('216', '1094', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('73', '1094', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('106', '1094', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('601', '1056', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('215', '1055', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('23', '1003', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('41', '1055', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('152', '1059', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('581', '1057', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('581', '1005', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('172', '1060', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('81', '1114', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('65', '1114', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('230', '1114', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('150', '1114', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('87', '1114', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('52', '1114', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('132', '1106', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('98', '1055', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('551', '1113', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('116', '1117', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('123', '1117', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('132', '1128', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('222', '1057', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('89', '1119', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('542', '1119', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('231', '1119', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('102', '1120', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('150', '1120', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('161', '1081', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('65', '1081', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('123', '1081', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('155', '1128', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('554', '1056', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('123', '1121', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('133', '1121', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('166', '1121', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('230', '1005', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('215', '1122', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('541', '1097', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('568', '1081', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('163', '1097', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('582', '1123', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('606', '1123', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('95', '1123', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('600', '1123', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('209', '1054', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('94', '1119', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('46', '1119', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('546', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('568', '1125', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('73', '1125', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('164', '1125', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('166', '1125', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('169', '1125', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('507', '1125', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('546', '1125', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('222', '1125', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('554', '1125', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('542', '1085', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('235', '1085', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('57', '1126', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('142', '1126', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('230', '1126', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('504', '1127', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('532', '1127', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('165', '1127', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('231', '1127', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('30', '1127', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('550', '1003', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('138', '1123', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('591', '1123', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, created_at, updated_at) 
	VALUES ('590', '1123', 0, now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '21', 'DirectoryEmployee', 'sandrzej@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '23', 'DirectoryEmployee', 'jarcher@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '25', 'DirectoryEmployee', 'abales@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '26', 'DirectoryEmployee', 'pbales@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '28', 'DirectoryEmployee', 'mpershin@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '29', 'DirectoryEmployee', 'tbauters@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '30', 'DirectoryEmployee', 'lbayard@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '33', 'DirectoryEmployee', 'dbernhar@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '40', 'DirectoryEmployee', 'rboyd@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '41', 'DirectoryEmployee', 'fboze@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '42', 'DirectoryEmployee', 'cszambel@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '43', 'DirectoryEmployee', 'bbradfor@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '46', 'DirectoryEmployee', 'jbrcka@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '47', 'DirectoryEmployee', 'scurtis@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '48', 'DirectoryEmployee', 'pbrzezin@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '49', 'DirectoryEmployee', 'bburk1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '52', 'DirectoryEmployee', 'pchu@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '53', 'DirectoryEmployee', 'gclaeys@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '54', 'DirectoryEmployee', 'kclark@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '55', 'DirectoryEmployee', 'kcolbert@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '56', 'DirectoryEmployee', 'bjenning@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '57', 'DirectoryEmployee', 'scollin4@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '61', 'DirectoryEmployee', 'mcrabtr1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '65', 'DirectoryEmployee', 'sdavis1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '66', 'DirectoryEmployee', 'bdean1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '67', 'DirectoryEmployee', 'mdehmlow@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '71', 'DirectoryEmployee', 'ldoversb@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '72', 'DirectoryEmployee', 'ldube@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '73', 'DirectoryEmployee', 'sedwards@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '76', 'DirectoryEmployee', 'denyeart@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '79', 'DirectoryEmployee', 'sfeirick@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '81', 'DirectoryEmployee', 'rfergers@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '82', 'DirectoryEmployee', 'kferraro@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '84', 'DirectoryEmployee', 'rfox2@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '85', 'DirectoryEmployee', 'bfrelas@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '87', 'DirectoryEmployee', 'lfuderer@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '89', 'DirectoryEmployee', 'mgiles@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '91', 'DirectoryEmployee', 'dgram@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '92', 'DirectoryEmployee', 'lgregory@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '94', 'DirectoryEmployee', 'aguimara@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '95', 'DirectoryEmployee', 'hanstra@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '97', 'DirectoryEmployee', 'nhashil@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '98', 'DirectoryEmployee', 'mhavert@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '100', 'DirectoryEmployee', 'shayes1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '102', 'DirectoryEmployee', 'bhoffma2@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '106', 'DirectoryEmployee', 'dhuyvaer@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '116', 'DirectoryEmployee', 'ljordan@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '117', 'DirectoryEmployee', 'ikahal@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '118', 'DirectoryEmployee', 'nbennett@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '121', 'DirectoryEmployee', 'bkarol@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '123', 'DirectoryEmployee', 'jkayongo@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '129', 'DirectoryEmployee', 'sluthy@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '130', 'DirectoryEmployee', 'kkinslow@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '132', 'DirectoryEmployee', 'kkoski1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '133', 'DirectoryEmployee', 'akrieger@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '134', 'DirectoryEmployee', 'pkrivan@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '135', 'DirectoryEmployee', 'rkusmer@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '137', 'DirectoryEmployee', 'jladwig@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '138', 'DirectoryEmployee', 'mlakin@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '142', 'DirectoryEmployee', 'klanser@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '150', 'DirectoryEmployee', 'rlisek@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '151', 'DirectoryEmployee', 'clistenb@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '152', 'DirectoryEmployee', 'ploghry@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '155', 'DirectoryEmployee', 'nlyandre@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '156', 'DirectoryEmployee', 'dmacon@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '161', 'DirectoryEmployee', 'dmassa@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '162', 'DirectoryEmployee', 'lmccune@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '163', 'DirectoryEmployee', 'pmcdona1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '164', 'DirectoryEmployee', 'lthiel@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '165', 'DirectoryEmployee', 'menglis1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '166', 'DirectoryEmployee', 'jmcmanu1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '169', 'DirectoryEmployee', 'tmiller5@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '172', 'DirectoryEmployee', 'emorgan@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '174', 'DirectoryEmployee', 'tmorton@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '175', 'DirectoryEmployee', 'tharrier@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '178', 'DirectoryEmployee', 'pnichola@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '180', 'DirectoryEmployee', 'porourke@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '181', 'DirectoryEmployee', 'dorlowsk@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '191', 'DirectoryEmployee', 'rrodts@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '199', 'DirectoryEmployee', 'rprice@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '205', 'DirectoryEmployee', 'jross@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '206', 'DirectoryEmployee', 'grugg@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '209', 'DirectoryEmployee', 'ssarber@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '211', 'DirectoryEmployee', 'jschlutt@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '213', 'DirectoryEmployee', 'gscott1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '215', 'DirectoryEmployee', 'lsharp1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '216', 'DirectoryEmployee', 'mshaw@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '218', 'DirectoryEmployee', 'dsikorsk@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '220', 'DirectoryEmployee', 'wsill@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '221', 'DirectoryEmployee', 'msimons@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '222', 'DirectoryEmployee', 'csmith@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '223', 'DirectoryEmployee', 'msmyth@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '228', 'DirectoryEmployee', 'mstenber@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '230', 'DirectoryEmployee', 'msteven1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '231', 'DirectoryEmployee', 'lstienba@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '232', 'DirectoryEmployee', 'mszekend@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '234', 'DirectoryEmployee', 'ctaylor2@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '235', 'DirectoryEmployee', 'ltaylor2@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '244', 'DirectoryEmployee', 'sweber@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '245', 'DirectoryEmployee', 'lweeks@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '246', 'DirectoryEmployee', 'nweindli@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '294', 'DirectoryEmployee', 'tmccomb@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '552', 'DirectoryEmployee', 'rjohns14@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '504', 'DirectoryEmployee', 'charris9@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '507', 'DirectoryEmployee', 'lmorgan1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '508', 'DirectoryEmployee', 'preimer1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '511', 'DirectoryEmployee', 'cjohns19@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '512', 'DirectoryEmployee', 'aclemen1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '513', 'DirectoryEmployee', 'jarnott@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '515', 'DirectoryEmployee', 'dminarik@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '517', 'DirectoryEmployee', 'cford@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '518', 'DirectoryEmployee', 'tzmudzin@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '551', 'DirectoryEmployee', 'mwolff@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '529', 'DirectoryEmployee', 'tbergstr@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '531', 'DirectoryEmployee', 'rhenry2@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '532', 'DirectoryEmployee', 'rmalott@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '534', 'DirectoryEmployee', 'jyates2@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '623', 'DirectoryEmployee', 'pherr@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '541', 'DirectoryEmployee', 'kshreve@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '542', 'DirectoryEmployee', 'jrittenh@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '545', 'DirectoryEmployee', 'aheet@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '546', 'DirectoryEmployee', 'jparker9@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '547', 'DirectoryEmployee', 'cmak@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '550', 'DirectoryEmployee', 'alanghur@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '554', 'DirectoryEmployee', 'bpietras@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '558', 'DirectoryEmployee', 'dbrubak1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '557', 'DirectoryEmployee', 'plawton@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '559', 'DirectoryEmployee', 'prader@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '561', 'DirectoryEmployee', 'blakshmi@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '562', 'DirectoryEmployee', 'rbalekai@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '565', 'DirectoryEmployee', 'jcachey@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '566', 'DirectoryEmployee', 'dsulli10@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '568', 'DirectoryEmployee', 'dgura@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '573', 'DirectoryEmployee', 'rkolic@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '572', 'DirectoryEmployee', 'ddressin@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '571', 'DirectoryEmployee', 'ljenny@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '575', 'DirectoryEmployee', 'skorlan@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '609', 'DirectoryEmployee', 'apapson@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '607', 'DirectoryEmployee', 'jtanaka1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '584', 'DirectoryEmployee', 'jkennel@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '582', 'DirectoryEmployee', 'adixon4@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '612', 'DirectoryEmployee', 'jmarkham@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '576', 'DirectoryEmployee', 'gkrivan@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '579', 'DirectoryEmployee', 'mmackey1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '580', 'DirectoryEmployee', 'rsimon1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '591', 'DirectoryEmployee', 'lpurdy1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '616', 'DirectoryEmployee', 'zwang8@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '581', 'DirectoryEmployee', 'dwalker6@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '587', 'DirectoryEmployee', 'kflemin4@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '590', 'DirectoryEmployee', 'jschneid@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '593', 'DirectoryEmployee', 'tsharp@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '594', 'DirectoryEmployee', 'jchlebek@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '595', 'DirectoryEmployee', 'aschmid2@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '596', 'DirectoryEmployee', 'mkirk1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '597', 'DirectoryEmployee', 'hjuhn@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '598', 'DirectoryEmployee', 'mzeiger1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '599', 'DirectoryEmployee', 'awetheri@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '600', 'DirectoryEmployee', 'tclark5@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '601', 'DirectoryEmployee', 'lajamie@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '602', 'DirectoryEmployee', 'avandewa@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '603', 'DirectoryEmployee', 'mmoore18@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '604', 'DirectoryEmployee', 'dbrower@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '605', 'DirectoryEmployee', 'ewelty@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '606', 'DirectoryEmployee', 'jfriesen@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '608', 'DirectoryEmployee', 'pblasko@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '610', 'DirectoryEmployee', 'msuhovec@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '611', 'DirectoryEmployee', 'toleary2@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '613', 'DirectoryEmployee', 'sdias1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '614', 'DirectoryEmployee', 'msimpson@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '615', 'DirectoryEmployee', 'mmuelle7@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '617', 'DirectoryEmployee', 'nmunn@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '618', 'DirectoryEmployee', 'jhartzle@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '619', 'DirectoryEmployee', 'msisk1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '620', 'DirectoryEmployee', 'jng2@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '621', 'DirectoryEmployee', 'qestes@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '622', 'DirectoryEmployee', 'mdefrees@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '625', 'DirectoryEmployee', 'bnickers@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '626', 'DirectoryEmployee', 'jvecchio@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '627', 'DirectoryEmployee', 'lzeiger1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '628', 'DirectoryEmployee', 'agulley@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactEmail', '629', 'DirectoryEmployee', 'mgoldman@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '30', 'DirectoryEmployee', 'bayard.1@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '41', 'DirectoryEmployee', 'Boze.1@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '42', 'DirectoryEmployee', 'brach.10@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '501', 'DirectoryEmployee', 'Caroline.Beavers.3@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '553', 'DirectoryEmployee', 'dolores.w.tantoco-stauder@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '505', 'DirectoryEmployee', 'fsmith3@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '93', 'DirectoryEmployee', 'Griffen.1@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '166', 'DirectoryEmployee', 'Jean.McManus@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '120', 'DirectoryEmployee', 'Joni.E.Warner.29@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '129', 'DirectoryEmployee', 'king.100@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '137', 'DirectoryEmployee', 'ladwig.1@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '571', 'DirectoryEmployee', 'Laura.A.Sill.4@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '165', 'DirectoryEmployee', 'mckeown.8@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '132', 'DirectoryEmployee', 'mcnally.28@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '228', 'DirectoryEmployee', 'Michelle.Savoie@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '507', 'DirectoryEmployee', 'morgan.59@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '617', 'DirectoryEmployee', 'natalie.meyers@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '577', 'DirectoryEmployee', 'nathaniel.campbell@gmail.com', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '564', 'DirectoryEmployee', 'ohmer.1@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '533', 'DirectoryEmployee', 'Pamela.J.Scofield.3@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '73', 'DirectoryEmployee', 'sherri.l.jones@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactEmail', '610', 'DirectoryEmployee', 'suhovecky@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '21', 'DirectoryEmployee', '222C Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '23', 'DirectoryEmployee', '117A Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '25', 'DirectoryEmployee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '26', 'DirectoryEmployee', '123 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '28', 'DirectoryEmployee', '213 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '29', 'DirectoryEmployee', '124A Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '30', 'DirectoryEmployee', '111 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '33', 'DirectoryEmployee', '222B Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '40', 'DirectoryEmployee', '123C Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '41', 'DirectoryEmployee', '208A Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '42', 'DirectoryEmployee', '149A Fitzpatrick Hall of Engineering', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '43', 'DirectoryEmployee', '125 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '46', 'DirectoryEmployee', '123D Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '47', 'DirectoryEmployee', '231 Nieuwland Science Hall', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '48', 'DirectoryEmployee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '49', 'DirectoryEmployee', '123A  Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '52', 'DirectoryEmployee', '149A Fitzpatrick Hall of Engineering', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '53', 'DirectoryEmployee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '54', 'DirectoryEmployee', '119 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '55', 'DirectoryEmployee', '120 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '56', 'DirectoryEmployee', 'L002A Mendoza College of Business', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '57', 'DirectoryEmployee', '220 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '61', 'DirectoryEmployee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '65', 'DirectoryEmployee', '221 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '66', 'DirectoryEmployee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '67', 'DirectoryEmployee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '71', 'DirectoryEmployee', '116 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '72', 'DirectoryEmployee', 'B005 Reyniers Building', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '73', 'DirectoryEmployee', '117C Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '76', 'DirectoryEmployee', '119 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '79', 'DirectoryEmployee', '119 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '81', 'DirectoryEmployee', '235 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '82', 'DirectoryEmployee', '203 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '84', 'DirectoryEmployee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '85', 'DirectoryEmployee', '220 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '87', 'DirectoryEmployee', '1202C Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '89', 'DirectoryEmployee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '91', 'DirectoryEmployee', '231 Nieuwland Science Hall', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '92', 'DirectoryEmployee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '94', 'DirectoryEmployee', '123 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '95', 'DirectoryEmployee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '97', 'DirectoryEmployee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '98', 'DirectoryEmployee', '110 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '100', 'DirectoryEmployee', 'L012 Mendoza College of Business', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '102', 'DirectoryEmployee', '211 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '106', 'DirectoryEmployee', '120 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '116', 'DirectoryEmployee', '221E Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '117', 'DirectoryEmployee', '123 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '118', 'DirectoryEmployee', '208O Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '121', 'DirectoryEmployee', '102 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '123', 'DirectoryEmployee', '115 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '129', 'DirectoryEmployee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '130', 'DirectoryEmployee', '102 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '132', 'DirectoryEmployee', '221B Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '133', 'DirectoryEmployee', '1201H Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '134', 'DirectoryEmployee', '122 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '135', 'DirectoryEmployee', '123B  Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '137', 'DirectoryEmployee', '009 Hayes-Healy Center<br>100 Galvin Life Science', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '138', 'DirectoryEmployee', '149A Fitzpatrick Hall of Engineering', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '142', 'DirectoryEmployee', 'B011 Hayes-Healy Center', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '150', 'DirectoryEmployee', '211 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '151', 'DirectoryEmployee', '122 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '152', 'DirectoryEmployee', '205 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '155', 'DirectoryEmployee', '102 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '156', 'DirectoryEmployee', '123 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '161', 'DirectoryEmployee', '216 Riley Hall', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '162', 'DirectoryEmployee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '163', 'DirectoryEmployee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '164', 'DirectoryEmployee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '165', 'DirectoryEmployee', '207 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '166', 'DirectoryEmployee', '1201 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '169', 'DirectoryEmployee', '231 Nieuwland Science Hall', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '172', 'DirectoryEmployee', '131 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '174', 'DirectoryEmployee', '119 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '175', 'DirectoryEmployee', '1201A Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '178', 'DirectoryEmployee', '211 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '180', 'DirectoryEmployee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '181', 'DirectoryEmployee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '191', 'DirectoryEmployee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '199', 'DirectoryEmployee', '119 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '205', 'DirectoryEmployee', '102 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '206', 'DirectoryEmployee', '102 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '209', 'DirectoryEmployee', '213 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '211', 'DirectoryEmployee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '213', 'DirectoryEmployee', 'B010 Hayes-Healy Center', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '215', 'DirectoryEmployee', '117B Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '216', 'DirectoryEmployee', 'L001C Mendoza College of Business', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '218', 'DirectoryEmployee', 'B010 Reyniers Building', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '220', 'DirectoryEmployee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '221', 'DirectoryEmployee', '223 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '222', 'DirectoryEmployee', '117D Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '223', 'DirectoryEmployee', '714 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '228', 'DirectoryEmployee', '245 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '230', 'DirectoryEmployee', '1224A Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '231', 'DirectoryEmployee', '213 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '232', 'DirectoryEmployee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '234', 'DirectoryEmployee', 'B001H Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '235', 'DirectoryEmployee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '244', 'DirectoryEmployee', '102 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '245', 'DirectoryEmployee', '213 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '246', 'DirectoryEmployee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '294', 'DirectoryEmployee', 'B005 Reyniers Building', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '552', 'DirectoryEmployee', '210 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '504', 'DirectoryEmployee', '224 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '507', 'DirectoryEmployee', '112 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '508', 'DirectoryEmployee', '117 Bond Hall', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '511', 'DirectoryEmployee', '213 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '512', 'DirectoryEmployee', '1202A Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '513', 'DirectoryEmployee', '244 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '515', 'DirectoryEmployee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '517', 'DirectoryEmployee', '222B Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '518', 'DirectoryEmployee', '235 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '551', 'DirectoryEmployee', '221 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '529', 'DirectoryEmployee', '131 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '531', 'DirectoryEmployee', '125 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '532', 'DirectoryEmployee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '534', 'DirectoryEmployee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '623', 'DirectoryEmployee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '541', 'DirectoryEmployee', '220 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '542', 'DirectoryEmployee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '545', 'DirectoryEmployee', '117 Bond Hall', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '546', 'DirectoryEmployee', '117 Bond Hall', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '547', 'DirectoryEmployee', '109 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '550', 'DirectoryEmployee', '219 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '554', 'DirectoryEmployee', 'L001 Mendoza College of Business', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '558', 'DirectoryEmployee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '557', 'DirectoryEmployee', '206 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '559', 'DirectoryEmployee', '113 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '561', 'DirectoryEmployee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '562', 'DirectoryEmployee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '565', 'DirectoryEmployee', '102 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '566', 'DirectoryEmployee', '217 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '568', 'DirectoryEmployee', '102 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '573', 'DirectoryEmployee', '220 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '572', 'DirectoryEmployee', '1201E Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '571', 'DirectoryEmployee', '124 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '575', 'DirectoryEmployee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '609', 'DirectoryEmployee', '131 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '607', 'DirectoryEmployee', '102 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '584', 'DirectoryEmployee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '582', 'DirectoryEmployee', '221 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '612', 'DirectoryEmployee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '576', 'DirectoryEmployee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '579', 'DirectoryEmployee', '123 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '580', 'DirectoryEmployee', '201A Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '591', 'DirectoryEmployee', '221 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '616', 'DirectoryEmployee', '221D Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '581', 'DirectoryEmployee', '221G Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '587', 'DirectoryEmployee', '121A Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '590', 'DirectoryEmployee', '715B Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '593', 'DirectoryEmployee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '594', 'DirectoryEmployee', '222B Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '595', 'DirectoryEmployee', 'L012 Mendoza College of Business', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '596', 'DirectoryEmployee', '225 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '597', 'DirectoryEmployee', '1201D Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '598', 'DirectoryEmployee', '116 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '599', 'DirectoryEmployee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '600', 'DirectoryEmployee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '601', 'DirectoryEmployee', '211 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '602', 'DirectoryEmployee', '119 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '603', 'DirectoryEmployee', '211 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '604', 'DirectoryEmployee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '605', 'DirectoryEmployee', '1224C Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '606', 'DirectoryEmployee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '608', 'DirectoryEmployee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '610', 'DirectoryEmployee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '611', 'DirectoryEmployee', '221A Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '613', 'DirectoryEmployee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '614', 'DirectoryEmployee', '221C Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '615', 'DirectoryEmployee', '220 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '617', 'DirectoryEmployee', '204 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '618', 'DirectoryEmployee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '619', 'DirectoryEmployee', '131 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '620', 'DirectoryEmployee', '114 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '621', 'DirectoryEmployee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '622', 'DirectoryEmployee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '625', 'DirectoryEmployee', '102 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '626', 'DirectoryEmployee', '131 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '627', 'DirectoryEmployee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '628', 'DirectoryEmployee', '113 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactAddress', '629', 'DirectoryEmployee', '220 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '21', 'DirectoryEmployee', '631-2261', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '23', 'DirectoryEmployee', '574 631-6656', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '25', 'DirectoryEmployee', '574 631-4035', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '26', 'DirectoryEmployee', '631-7620', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '28', 'DirectoryEmployee', '631-1014', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '29', 'DirectoryEmployee', '574 631-6188', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '30', 'DirectoryEmployee', '574 631-8570', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '33', 'DirectoryEmployee', '574 631-4566', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '40', 'DirectoryEmployee', '574 631-6243', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '41', 'DirectoryEmployee', '574 631-8708', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '42', 'DirectoryEmployee', '631-5070', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '43', 'DirectoryEmployee', '574 631-7437', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '46', 'DirectoryEmployee', '574 631-2512', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '47', 'DirectoryEmployee', '574 631-4548', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '48', 'DirectoryEmployee', '631-6680', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '49', 'DirectoryEmployee', '574 631-6904', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '52', 'DirectoryEmployee', '574 631-6665', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '53', 'DirectoryEmployee', '574 631-7642', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '54', 'DirectoryEmployee', '574 631-6318', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '55', 'DirectoryEmployee', '574 631-6169', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '56', 'DirectoryEmployee', '574 631-2907', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '57', 'DirectoryEmployee', '574 631-6428', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '61', 'DirectoryEmployee', '574 631-2516', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '65', 'DirectoryEmployee', '574 631-5271', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '66', 'DirectoryEmployee', '574 631-5629', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '67', 'DirectoryEmployee', '574 631-3092', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '71', 'DirectoryEmployee', '574 631-6104', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '72', 'DirectoryEmployee', '574 631-4643', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '73', 'DirectoryEmployee', '574 631-4034', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '76', 'DirectoryEmployee', '631-7578', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '79', 'DirectoryEmployee', '574 631-6318', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '81', 'DirectoryEmployee', '574 631-6361', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '82', 'DirectoryEmployee', '574 631-7438', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '84', 'DirectoryEmployee', '574 631-3353', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '85', 'DirectoryEmployee', '574 631-7176', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '87', 'DirectoryEmployee', '574 631-5233', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '89', 'DirectoryEmployee', '574 631-4496', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '91', 'DirectoryEmployee', '574 631-7203', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '92', 'DirectoryEmployee', '574 631-6260', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '94', 'DirectoryEmployee', '631-3558', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '95', 'DirectoryEmployee', '574 631-4686', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '97', 'DirectoryEmployee', '574 631-6260', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '98', 'DirectoryEmployee', '631-6189', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '100', 'DirectoryEmployee', '574 631-5268', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '102', 'DirectoryEmployee', '574 631-2643', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '106', 'DirectoryEmployee', '574 631-6360', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '116', 'DirectoryEmployee', '574 631-3778', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '117', 'DirectoryEmployee', '574 631-3240', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '118', 'DirectoryEmployee', '574 631-2889', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '121', 'DirectoryEmployee', '574 631-7139', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '123', 'DirectoryEmployee', '574 631-5176', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '129', 'DirectoryEmployee', '574 631-9374', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '130', 'DirectoryEmployee', '574 631-9832', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '132', 'DirectoryEmployee', '574 631-6429', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '133', 'DirectoryEmployee', '574 631-6663', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '134', 'DirectoryEmployee', '574 631-5261', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '135', 'DirectoryEmployee', '574 631-8649', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '137', 'DirectoryEmployee', '631-3617<br>631-1354', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '138', 'DirectoryEmployee', '574 631-6665', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '142', 'DirectoryEmployee', '574 631-4550', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '150', 'DirectoryEmployee', '574 631-3818', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '151', 'DirectoryEmployee', '574 631-5614', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '152', 'DirectoryEmployee', '574 631-7456', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '155', 'DirectoryEmployee', '631-3009', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '156', 'DirectoryEmployee', '574 631-6218', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '161', 'DirectoryEmployee', '631-4273', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '162', 'DirectoryEmployee', '574 631-4489', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '163', 'DirectoryEmployee', '574 631-2584', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '164', 'DirectoryEmployee', '574 631-4406', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '165', 'DirectoryEmployee', '574 631-5739', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '166', 'DirectoryEmployee', '631-1703', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '169', 'DirectoryEmployee', '631-4549', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '172', 'DirectoryEmployee', '631-8604', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '174', 'DirectoryEmployee', '574 631-6824', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '175', 'DirectoryEmployee', '574 631-6257', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '178', 'DirectoryEmployee', '631-7577', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '180', 'DirectoryEmployee', '574 631-6374', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '181', 'DirectoryEmployee', '574 631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '191', 'DirectoryEmployee', '631-3255', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '199', 'DirectoryEmployee', '631-6318', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '205', 'DirectoryEmployee', '574 631-5835', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '206', 'DirectoryEmployee', '574 631-6506', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '209', 'DirectoryEmployee', '574 631-4038', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '211', 'DirectoryEmployee', '574 631-4046', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '213', 'DirectoryEmployee', '574 631-7278', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '215', 'DirectoryEmployee', '631-6818', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '216', 'DirectoryEmployee', '574 631-4584', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '218', 'DirectoryEmployee', '574 631-4077', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '220', 'DirectoryEmployee', '574 631-7892', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '221', 'DirectoryEmployee', '574 631-2871', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '222', 'DirectoryEmployee', '574 631-4271', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '223', 'DirectoryEmployee', '574 631-7420', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '228', 'DirectoryEmployee', '574 631-3972', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '230', 'DirectoryEmployee', '631-7665', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '231', 'DirectoryEmployee', '574 631-4631', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '232', 'DirectoryEmployee', '574 631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '234', 'DirectoryEmployee', '574 631-4566', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '235', 'DirectoryEmployee', '574 631-4045', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '244', 'DirectoryEmployee', '574 631-5610', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '245', 'DirectoryEmployee', '574 631-6043', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '246', 'DirectoryEmployee', '574 631-1580', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '294', 'DirectoryEmployee', '631-7734', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '552', 'DirectoryEmployee', '631-1086', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '504', 'DirectoryEmployee', '631-9487', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '507', 'DirectoryEmployee', '631-8764', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '508', 'DirectoryEmployee', '631-8424', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '511', 'DirectoryEmployee', '631-5262', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '512', 'DirectoryEmployee', '631-0497', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '513', 'DirectoryEmployee', '631-0872', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '515', 'DirectoryEmployee', '631-6260', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '517', 'DirectoryEmployee', '631-4566', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '518', 'DirectoryEmployee', '631-8439', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '551', 'DirectoryEmployee', '631-7780', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '529', 'DirectoryEmployee', '631-1763', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '531', 'DirectoryEmployee', '631-7437', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '532', 'DirectoryEmployee', '631-1575', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '534', 'DirectoryEmployee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '623', 'DirectoryEmployee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '541', 'DirectoryEmployee', '631-6640', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '542', 'DirectoryEmployee', '631-3065', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '545', 'DirectoryEmployee', '631-3371', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '546', 'DirectoryEmployee', '631-9401', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '547', 'DirectoryEmployee', '631-7392', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '550', 'DirectoryEmployee', '631-9809', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '554', 'DirectoryEmployee', '631-9099', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '558', 'DirectoryEmployee', '631-2305', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '557', 'DirectoryEmployee', '631-1324', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '559', 'DirectoryEmployee', '631-3099', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '561', 'DirectoryEmployee', '631-1847', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '562', 'DirectoryEmployee', '631-1298', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '565', 'DirectoryEmployee', '631-5636', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '566', 'DirectoryEmployee', '631-9036', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '568', 'DirectoryEmployee', '631-6489', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '573', 'DirectoryEmployee', '631-3940', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '572', 'DirectoryEmployee', '631-2472', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '571', 'DirectoryEmployee', '574 631-4036', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '575', 'DirectoryEmployee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '609', 'DirectoryEmployee', '631-3282', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '607', 'DirectoryEmployee', '631-7845', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '584', 'DirectoryEmployee', '631-0876', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '582', 'DirectoryEmployee', '631-5252', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '612', 'DirectoryEmployee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '576', 'DirectoryEmployee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '579', 'DirectoryEmployee', '631-8136', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '580', 'DirectoryEmployee', '631-2447', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '591', 'DirectoryEmployee', '631-4037', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '616', 'DirectoryEmployee', '631-6495', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '581', 'DirectoryEmployee', '631-7790', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '587', 'DirectoryEmployee', '631-0899', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '590', 'DirectoryEmployee', '631-5724', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '593', 'DirectoryEmployee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '594', 'DirectoryEmployee', '631-4566', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '595', 'DirectoryEmployee', '631-9097', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '596', 'DirectoryEmployee', '631-5685', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '597', 'DirectoryEmployee', '631-6121', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '598', 'DirectoryEmployee', '631-4039', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '599', 'DirectoryEmployee', '631-9445', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '600', 'DirectoryEmployee', '631-8727', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '601', 'DirectoryEmployee', '631-4329', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '602', 'DirectoryEmployee', '631-6318', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '603', 'DirectoryEmployee', '631-2987', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '604', 'DirectoryEmployee', '631-1566', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '605', 'DirectoryEmployee', '631-9820', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '606', 'DirectoryEmployee', '631-8569', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '608', 'DirectoryEmployee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '610', 'DirectoryEmployee', '631-9269', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '611', 'DirectoryEmployee', '631-1856', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '613', 'DirectoryEmployee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '614', 'DirectoryEmployee', '631-2938', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '615', 'DirectoryEmployee', '631-8291', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '617', 'DirectoryEmployee', '631-1546', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '618', 'DirectoryEmployee', '631-9931', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '619', 'DirectoryEmployee', '631-7313', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '620', 'DirectoryEmployee', '631-9038', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '621', 'DirectoryEmployee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '622', 'DirectoryEmployee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '625', 'DirectoryEmployee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '626', 'DirectoryEmployee', '631-4900', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '627', 'DirectoryEmployee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '628', 'DirectoryEmployee', '631-8694', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '629', 'DirectoryEmployee', '631-5970', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactPhone', '81', 'DirectoryEmployee', '574 850-6208', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '1', 'DirectoryOrganizationalUnit', '631-5252', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactPhone', '105', 'DirectoryOrganizationalUnit', '631-2871', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactFax', '1', 'DirectoryOrganizationalUnit', '631-6772', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '1', 'DirectoryOrganizationalUnit', 'http://libstaff.library.nd.edu/administration/director/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '2', 'DirectoryOrganizationalUnit', 'http://libstaff.library.nd.edu/isda/index.shtml', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '90', 'DirectoryOrganizationalUnit', 'http://www.library.nd.edu/aoe', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '4', 'DirectoryOrganizationalUnit', 'http://libstaff.library.nd.edu/administration/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '10', 'DirectoryOrganizationalUnit', 'https://libstaff.library.nd.edu/lib_only/rcs/index.shtml', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '11', 'DirectoryOrganizationalUnit', 'http://bic.library.nd.edu/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '100', 'DirectoryOrganizationalUnit', 'http://www.library.nd.edu/about/departments/adminoff/index.shtml', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '108', 'DirectoryOrganizationalUnit', 'http://library.nd.edu/about/departments/data_support_services.shtml', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '17', 'DirectoryOrganizationalUnit', 'https://wiki.nd.edu/display/libmonacq/Monographic+Acquisitions', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '18', 'DirectoryOrganizationalUnit', 'http://www.library.nd.edu/preservation/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '19', 'DirectoryOrganizationalUnit', 'http://www.library.nd.edu/rarebooks/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '26', 'DirectoryOrganizationalUnit', 'https://wiki.nd.edu/display/libcolldev/Collection+Development+Department', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '120', 'DirectoryOrganizationalUnit', 'http://library.nd.edu/business', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '101', 'DirectoryOrganizationalUnit', 'http://library.nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '32', 'DirectoryOrganizationalUnit', 'http://library.nd.edu/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '33', 'DirectoryOrganizationalUnit', 'http://engineering.library.nd.edu/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '34', 'DirectoryOrganizationalUnit', 'https://wiki.nd.edu/display/libdcns/Home', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '35', 'DirectoryOrganizationalUnit', 'https://wiki.nd.edu/display/libersa/Home', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '38', 'DirectoryOrganizationalUnit', 'http://libstaff.library.nd.edu/monitors/index.shtml', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '39', 'DirectoryOrganizationalUnit', 'http://architecture.library.nd.edu/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '98', 'DirectoryOrganizationalUnit', 'http://www.library.nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '42', 'DirectoryOrganizationalUnit', 'http://www.library.nd.edu/circulation/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '119', 'DirectoryOrganizationalUnit', 'http://library.nd.edu/chemistry/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '44', 'DirectoryOrganizationalUnit', 'http://mathematics.library.nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '71', 'DirectoryOrganizationalUnit', 'http://vrc.library.nd.edu/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '60', 'DirectoryOrganizationalUnit', 'http://www.library.nd.edu/stacks/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '86', 'DirectoryOrganizationalUnit', 'http://www.library.nd.edu/about/departments/digital-library.shtml', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '91', 'DirectoryOrganizationalUnit', 'http://www.library.nd.edu/reference', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '103', 'DirectoryOrganizationalUnit', 'https://wiki.nd.edu/display/libersa/Home', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '97', 'DirectoryOrganizationalUnit', 'http://www.library.nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '96', 'DirectoryOrganizationalUnit', 'http://www.library.nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '102', 'DirectoryOrganizationalUnit', 'http://www.library.nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '104', 'DirectoryOrganizationalUnit', 'http://www.library.nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '1003', 'DirectoryOrganizationalUnit', 'https://wiki.nd.edu/display/libcap/Home', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '1004', 'DirectoryOrganizationalUnit', 'https://wiki.nd.edu/display/libltd/Home', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '1005', 'DirectoryOrganizationalUnit', 'https://wiki.nd.edu/display/libelf/Home', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '1035', 'DirectoryOrganizationalUnit', 'http://www.library.nd.edu/diversity/index.shtml', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '1083', 'DirectoryOrganizationalUnit', 'http://committees.nd.edu/committees-a-z/university-council-for-academic-technologies-ucat', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '1048', 'DirectoryOrganizationalUnit', 'https://wiki.nd.edu/display/liborientation/Home', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '1054', 'DirectoryOrganizationalUnit', 'http://www.nd.edu/%7Estaffcou/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '1055', 'DirectoryOrganizationalUnit', 'https://wiki.nd.edu/display/libelect', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '1056', 'DirectoryOrganizationalUnit', 'https://wiki.nd.edu/display/libpdc/Home', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '1062', 'DirectoryOrganizationalUnit', 'http://library.nd.edu/ucl/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '1078', 'DirectoryOrganizationalUnit', 'http://libstaff.library.nd.edu/committees/swg/index.shtml', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '1079', 'DirectoryOrganizationalUnit', 'http://www.nd.edu/~aleph/upgrade/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '1084', 'DirectoryOrganizationalUnit', 'http://libstaff.library.nd.edu/committees/libfac/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '1090', 'DirectoryOrganizationalUnit', 'http://libstaff.library.nd.edu/committees/INlightarchives.shtml', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '1123', 'DirectoryOrganizationalUnit', 'http://wiki.nd.edu/x/FACXAQ', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '1103', 'DirectoryOrganizationalUnit', 'http://committees.nd.edu/committees-a-z/software-committee', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '1114', 'DirectoryOrganizationalUnit', 'https://wiki.nd.edu/display/libsuscom/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('DirectoryContactWebpage', '1118', 'DirectoryOrganizationalUnit', 'https://wiki.nd.edu/display/libebooks/Home', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactWebpage', '6', 'DirectoryOrganizationalUnit', 'http://www.library.nd.edu/about/departments/building-services.shtml', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactWebpage', '10', 'DirectoryOrganizationalUnit', 'http://www.library.nd.edu/rcs/', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactWebpage', '17', 'DirectoryOrganizationalUnit', 'http://www.library.nd.edu/acquisitions/', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactWebpage', '26', 'DirectoryOrganizationalUnit', 'http://www.library.nd.edu/about/departments/coll_dev.shtml', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactWebpage', '34', 'DirectoryOrganizationalUnit', 'http://www.library.nd.edu/about/departments/dcns.shtml', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactWebpage', '35', 'DirectoryOrganizationalUnit', 'http://library.nd.edu/', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('DirectoryContactWebpage', '38', 'DirectoryOrganizationalUnit', 'http://www.library.nd.edu/about/departments/building-services.shtml', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('20', 'History (World)', 'D', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('128', 'Portuguese Language and Literature', 'PC5001-5498, PQ9000-9999', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('5', 'Africana Studies', '-Interdisciplinary', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('19', 'Auxiliary Sciences of History', 'C', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('7', 'American Studies', '-Interdisciplinary', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('11', 'Philosophy', 'B-BD, BH-BJ', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('12', 'Theology and Religion', 'BL-BX', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('13', 'Architecture', 'NA', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('15', 'General and Multidisciplinary', 'A', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('23', 'Latin American History', 'F 1201-3799', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('25', 'Anthropology', 'GN-GT', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('26', 'Sports Studies', 'GV 557-1198', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('27', 'Dance', 'GV 1580-1799', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('28', 'Business (General)', 'HF, HG, HJ', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('31', 'Sociology', 'HM-HX', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('32', 'Political Science', 'J, U-V', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('127', 'History and Philosophy of Science', 'Q-T', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('100', 'Physics', 'QC', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('35', 'Music', 'M', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('36', 'Art, Art History and Design', 'N, NB-NX', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('78', 'Peace Studies', '-Interdisciplinary', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('39', 'Classics', 'PA', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('126', 'Landscape Architecture', 'SB 469-476', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('41', 'German Language and Literature', 'PD, PF, PT', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('42', 'English Language and Literature', 'PE, PR-PS', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('86', 'Environmental Engineering', 'QE', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('44', 'Russian Language and Literature', 'PG', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('46', 'Asian Studies', 'PL', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('49', 'French Language and Literature', 'PQ 1-3912', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('50', 'Italian Language and Literature', 'PQ 4001-4199', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('51', 'Spanish Language and Literature', 'PQ 6001-9999', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('54', 'Mathematics', 'QA', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('98', 'Biochemistry', 'QD', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('101', 'Nanotechnology', 'T174.7', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('57', 'Chemistry', 'QD', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('58', 'Geology', 'QE', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('59', 'Biology and Life Sciences', 'QH-QR', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('60', 'Medicine and Health', 'R-RB, RD-RZ', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('61', 'Psychology', 'BF, RC', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('62', 'Agriculture', 'S, SD-SF', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('64', 'Engineering (General)', 'T-TP, TS-TX', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('65', 'Photography', 'TR', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('67', 'Books; Bibliography', 'Z (except Ref.)', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('103', 'Books; Bibliography', 'Z (Reference)', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('69', 'History of Science and Technology (all Q and T classes)', '-Interdisciplinary', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('70', 'Irish Studies', '-Interdisciplinary', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('71', 'Judaica', '-Interdisciplinary', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('72', 'Latin American Studies', '-Interdisciplinary', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('73', 'Medieval Studies', '-Interdisciplinary', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('74', 'Polish Studies', '-Interdisciplinary', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('75', 'Program of Liberal Studies', '-Interdisciplinary', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('76', 'Catholic Studies', '-Interdisciplinary', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('77', 'Gender Studies', '-Interdisciplinary', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('82', 'Film', 'PN', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('79', 'Byzantine Studies', 'BX, DF, PA', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('81', 'Journalism', 'PN', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('83', 'Television', 'PN', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('84', 'Theatre', 'PN', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('85', 'History (U.S. and Canada)', 'E-F 1100', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('87', 'Computer Engineering', 'QA', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('88', 'Latino Studies', '-Interdisciplinary', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('89', 'Accounting', 'HF', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('90', 'Finance', 'HJ', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('91', 'Marketing', 'HF', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('104', 'Economics', 'H-HD', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('97', 'Astronomy', 'QB', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('99', 'Education', 'L', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('118', 'Irish Language and Literature', 'PB', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('107', 'Chemical and Biomolecular Engineering', '', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('106', 'Management', '', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('110', 'Civil Engineering', '', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('112', 'Electrical Engineering', '', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('115', 'Materials Science (including Biomaterials)', '', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('116', 'Mechanical Engineering', '', now(), now());
INSERT INTO directory_subjects (id, name, lc_class, created_at, updated_at) 
	VALUES ('130', 'Applied Mathematics', 'QA, HA', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('607', '20', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('572', '128', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('206', '5', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('116', '19', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('206', '7', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('133', '11', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('133', '12', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('546', '13', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('73', '15', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('572', '23', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('123', '25', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('206', '26', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('580', '27', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('100', '28', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('123', '31', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('587', '32', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('205', '127', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('169', '100', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('580', '35', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('230', '36', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('23', '78', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('566', '39', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('546', '126', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('135', '41', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('87', '42', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('42', '86', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('155', '44', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('597', '46', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('87', '49', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('529', '50', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('572', '51', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('137', '54', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('169', '98', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('42', '101', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('169', '57', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('42', '58', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('137', '59', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('137', '60', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('222', '61', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('137', '62', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('42', '64', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('230', '65', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('0', '67', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('73', '103', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('205', '69', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('512', '70', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('133', '71', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('572', '72', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('223', '73', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('155', '74', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('30', '75', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('166', '76', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('607', '77', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('230', '82', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('566', '79', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('206', '81', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('230', '83', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('230', '84', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('206', '85', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('42', '87', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('572', '88', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('100', '89', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('100', '90', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('100', '91', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('620', '104', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('169', '97', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('98', '99', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('512', '118', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('42', '107', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('100', '106', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('42', '110', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('42', '112', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('42', '115', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('42', '116', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('137', '130', now(), now());
UPDATE directory_employees SET selector = '1' WHERE id = '0';
UPDATE directory_employees SET selector = '1' WHERE id = '23';
UPDATE directory_employees SET selector = '1' WHERE id = '30';
UPDATE directory_employees SET selector = '1' WHERE id = '42';
UPDATE directory_employees SET selector = '1' WHERE id = '73';
UPDATE directory_employees SET selector = '1' WHERE id = '87';
UPDATE directory_employees SET selector = '1' WHERE id = '98';
UPDATE directory_employees SET selector = '1' WHERE id = '100';
UPDATE directory_employees SET selector = '1' WHERE id = '116';
UPDATE directory_employees SET selector = '1' WHERE id = '123';
UPDATE directory_employees SET selector = '1' WHERE id = '133';
UPDATE directory_employees SET selector = '1' WHERE id = '135';
UPDATE directory_employees SET selector = '1' WHERE id = '137';
UPDATE directory_employees SET selector = '1' WHERE id = '155';
UPDATE directory_employees SET selector = '1' WHERE id = '166';
UPDATE directory_employees SET selector = '1' WHERE id = '169';
UPDATE directory_employees SET selector = '1' WHERE id = '205';
UPDATE directory_employees SET selector = '1' WHERE id = '206';
UPDATE directory_employees SET selector = '1' WHERE id = '222';
UPDATE directory_employees SET selector = '1' WHERE id = '223';
UPDATE directory_employees SET selector = '1' WHERE id = '230';
UPDATE directory_employees SET selector = '1' WHERE id = '512';
UPDATE directory_employees SET selector = '1' WHERE id = '529';
UPDATE directory_employees SET selector = '1' WHERE id = '546';
UPDATE directory_employees SET selector = '1' WHERE id = '566';
UPDATE directory_employees SET selector = '1' WHERE id = '572';
UPDATE directory_employees SET selector = '1' WHERE id = '580';
UPDATE directory_employees SET selector = '1' WHERE id = '587';
UPDATE directory_employees SET selector = '1' WHERE id = '597';
UPDATE directory_employees SET selector = '1' WHERE id = '607';
UPDATE directory_employees SET selector = '1' WHERE id = '620';
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, head, 
created_at, updated_at) SELECT DISTINCT e.id, seu.organizational_unit_id, '0', now(), now()
FROM directory_employees e 
	INNER JOIN (directory_employees se 
		INNER JOIN directory_employee_units seu ON (se.id = seu.employee_id))
	ON (e.supervisor_id = se.id)
	INNER JOIN directory_employee_units eu ON (e.id = eu.employee_id)
WHERE seu.head=1
AND eu.head=1
AND NOT EXISTS (select 1 from directory_employee_units deu where deu.employee_id=e.id AND deu.organizational_unit_id = seu.organizational_unit_id);
UPDATE directory_employee_units eu 
	INNER JOIN (select employee_id, employee_unit_title from directory_employee_units where employee_unit_title is not null and organizational_unit_id < 1000 group by employee_id, employee_unit_title) eu2
ON eu.employee_id = eu2.employee_id
SET eu.employee_unit_title=eu2.employee_unit_title
WHERE eu.employee_unit_title is null
AND eu.organizational_unit_id < 1000;
