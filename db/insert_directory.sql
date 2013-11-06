DELETE FROM directory_unit_types;
DELETE FROM directory_unit_types;
DELETE FROM directory_organizational_units;
DELETE FROM directory_employees;
DELETE FROM directory_employee_ranks;
DELETE FROM directory_employee_statuses;
DELETE FROM directory_employee_units;
DELETE FROM directory_contact_informations;
DELETE FROM directory_subjects;
DELETE FROM directory_selector_subjects;
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('1', 'Directory::Department', '0', 'Office of the University Librarian', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('2', 'Directory::Department', '1', 'Digital Access, Resources, and Information Technology', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('90', 'Directory::Department', '10', 'Academic Outreach and Engagement Program', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('4', 'Directory::Department', '100', 'Admin Team', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('6', 'Directory::Department', '100', 'Building Services', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('10', 'Directory::Department', '1', 'Academic Services and Collections', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('11', 'Directory::Department', '96', 'Business and Social Science', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('100', 'Directory::Department', '1', 'Administrative and Central Resources Program', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('108', 'Directory::Department', '106', 'Data Support Services', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('17', 'Directory::Department', '35', 'Acquisitions Services', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('18', 'Directory::Department', '98', 'Preservation', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('19', 'Directory::Department', '98', 'Special Collections', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('26', 'Directory::Department', '98', 'Arts and Area Studies Subject Specialists', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('120', 'Directory::Department', '11', 'Mahaffey Business Library', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('101', 'Directory::Department', '32', 'Web and Software Engineering Unit', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('32', 'Directory::Department', '2', 'Information Technology Program', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('33', 'Directory::Department', '118', 'Engineering Library', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('34', 'Directory::Department', '32', 'Library Information Technology Support', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('35', 'Directory::Department', '2', 'Resource Acquisitions and Discovery Program', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('109', 'Directory::Department', '35', 'Metadata Services/Original and Special Cataloging Services', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('38', 'Directory::Department', '6', 'Monitors', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('39', 'Directory::Department', '19', 'Architecture Library', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('98', 'Directory::Department', '10', 'Arts and Humanities Research Services Program', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('42', 'Directory::Department', '90', 'Frontline Services', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('119', 'Directory::Department', '118', 'Chemistry-Physics Library', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('44', 'Directory::Department', '118', 'O\'Meara Mathematics Library', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('112', 'Directory::Department', '98', 'Humanities Subject Specialists', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('71', 'Directory::Department', '97', 'Visual Resources Center', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('60', 'Directory::Department', '42', 'Stacks Maintenance and Document Delivery', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('116', 'Directory::Department', '90', 'Teaching & Research Services', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('117', 'Directory::Department', '116', 'Research & Consultation Services', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('62', 'Directory::Department', '17', 'Interlibrary Loan', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('107', 'Directory::Department', '106', 'Batchprocessing Services', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('86', 'Directory::Department', '97', 'Digital Library Technology', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('91', 'Directory::Department', '96', 'Social Sciences', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('103', 'Directory::Department', '35', 'Electronic Resources and Acquisitions Pay Services', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('97', 'Directory::Department', '2', 'Digital Library Initiatives and Scholarship Program', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('106', 'Directory::Department', '35', 'Metadata Services/Batch Processing and Data Support', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('96', 'Directory::Department', '10', 'Science, Engineering, Social Science and Business Program', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('102', 'Directory::Department', '32', 'Systems Administration Unit', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('104', 'Directory::Department', '97', 'Digital Production Services and Outreach', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('105', 'Directory::Department', '100', 'Organizational Development', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('114', 'Directory::Department', '6', 'Mailroom', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('115', 'Directory::Department', '116', 'Teaching & Instructional Services', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at) 
	VALUES ('118', 'Directory::Department', '96', 'Sciences and Engineering', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('21', 'Sharon', 'Andrzejewski', 'sandrzej', 'https://libstaff.library.nd.edu/images/staff/sharona.jpg', '1', '0', '0', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('23', 'J. Douglas', 'Archer', 'jarcher', 'https://libstaff.library.nd.edu/images/staff/douga.jpg', '5', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('25', 'Aaron', 'Bales', 'abales', 'https://libstaff.library.nd.edu/images/staff/aaronb.jpg', '3', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('26', 'Paula', 'Bales', 'pbales', 'https://libstaff.library.nd.edu/images/staff/paulab.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('28', 'Michele', 'Bates', 'mpershin', 'https://libstaff.library.nd.edu/images/staff/shellyb.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('29', 'Therese', 'Bauters', 'tbauters', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('30', 'Laura', 'Bayard', 'lbayard', 'https://libstaff.library.nd.edu/images/staff/laurab.jpg', '5', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('33', 'Debbie', 'Bernhard', 'dbernhar', 'https://libstaff.library.nd.edu/images/staff/debb.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('40', 'Rachel', 'Boyd', 'rboyd', 'https://libstaff.library.nd.edu/images/staff/rachel.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('41', 'Andy', 'Boze', 'fboze', 'https://libstaff.library.nd.edu/images/staff/andyb.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('42', 'Carol', 'Brach', 'cszambel', 'https://libstaff.library.nd.edu/images/staff/caroleb.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('43', 'Beverly', 'Bradford', 'bbradfor', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('46', 'Jennifer', 'Brcka', 'jbrcka', 'https://libstaff.library.nd.edu/images/staff/jenniferb.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('47', 'Sheila', 'Britton', 'scurtis', 'https://libstaff.library.nd.edu/images/staff/sheilab.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('48', 'Pamela', 'Brzezinski', 'pbrzezin', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('49', 'Bartley', 'Burk', 'bburk1', 'https://libstaff.library.nd.edu/images/staff/bartb.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('52', 'Pamela', 'Chu', 'pchu', 'https://libstaff.library.nd.edu/images/staff/pamc.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('53', 'Gloria', 'Coplin', 'gclaeys', 'https://libstaff.library.nd.edu/images/staff/gloriac3.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('54', 'Kristie', 'Clark', 'kclark', 'https://libstaff.library.nd.edu/images/staff/kristyc.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('55', 'Kathy', 'Colbert', 'kcolbert', 'https://libstaff.library.nd.edu/images/staff/kathyc.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('56', 'Barbara', 'Cole', 'bjenning', 'https://libstaff.library.nd.edu/images/staff/barbcole.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('57', 'Sandi', 'Collins', 'scollin4', 'https://libstaff.library.nd.edu/images/staff/sandyc2.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('61', 'Monica', 'Crabtree', 'mcrabtr1', 'https://libstaff.library.nd.edu/images/staff/monica.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('65', 'Salem', 'Davis', 'sdavis1', 'https://libstaff.library.nd.edu/images/staff/salem.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('66', 'Barbara', 'Dean-Davis', 'bdean1', 'https://libstaff.library.nd.edu/images/staff/barbd_d.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('67', 'Mark', 'Dehmlow', 'mdehmlow', 'https://libstaff.library.nd.edu/images/staff/markd.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('71', 'Lin', 'Doversberger', 'ldoversb', 'https://libstaff.library.nd.edu/images/staff/lind.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('72', 'Liz', 'Dube', 'ldube', 'https://libstaff.library.nd.edu/images/staff/lizd.jpg', '5', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('73', 'Sherri', 'Jones', 'sedwards', 'https://libstaff.library.nd.edu/images/staff/sherrij2.jpg', '5', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('76', 'David', 'Enyeart', 'denyeart', 'https://libstaff.library.nd.edu/images/staff/davide.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('79', 'Susan', 'Feirick', 'sfeirick', 'https://libstaff.library.nd.edu/images/staff/susanf2.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('81', 'Ross', 'Fergerson', 'rfergers', 'https://libstaff.library.nd.edu/images/staff/rossf.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('82', 'Kim', 'Ferraro', 'kferraro', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('84', 'Robert', 'Fox', 'rfox2', 'https://libstaff.library.nd.edu/images/staff/robf.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('85', 'Beata', 'Frelas', 'bfrelas', 'https://libstaff.library.nd.edu/images/staff/beata.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('87', 'Laura', 'Fuderer', 'lfuderer', 'https://libstaff.library.nd.edu/images/staff/lauraf.jpg', '5', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('89', 'Margaret', 'Giles', 'mgiles', 'https://libstaff.library.nd.edu/images/staff/maggieg.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('91', 'Diane', 'Gram', 'dgram', 'https://libstaff.library.nd.edu/images/staff/dianeg.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('92', 'Linda', 'Gregory', 'lgregory', 'https://libstaff.library.nd.edu/images/staff/lindag.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('94', 'Nastia', 'Guimaraes', 'aguimara', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '3', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('95', 'Thomas', 'Hanstra', 'hanstra', 'https://libstaff.library.nd.edu/images/staff/tomh.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('97', 'Nita', 'Hashil', 'nhashil', 'https://libstaff.library.nd.edu/images/staff/nitah2.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('98', 'Mandy', 'Havert', 'mhavert', 'https://libstaff.library.nd.edu/images/staff/mandy3.jpg', '3', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('100', 'Stephen', 'Hayes', 'shayes1', 'https://libstaff.library.nd.edu/images/staff/steveh.jpg', '5', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('102', 'Belinda', 'Obren', 'bhoffma2', 'https://libstaff.library.nd.edu/images/staff/belindao.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('106', 'Deborah', 'Huyvaert', 'dhuyvaer', 'https://libstaff.library.nd.edu/images/staff/debh2.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('116', 'Louis', 'Jordan', 'ljordan', 'https://libstaff.library.nd.edu/images/staff/louj.jpg', '5', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('117', 'Ina', 'Kahal', 'ikahal', 'https://libstaff.library.nd.edu/images/staff/inak2.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('118', 'Nancy', 'Kambol', 'nbennett', 'https://libstaff.library.nd.edu/images/staff/nancyk.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('121', 'Bozena', 'Karol', 'bkarol', 'https://libstaff.library.nd.edu/images/staff/boc.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('123', 'Jessica', 'Kayongo', 'jkayongo', 'https://libstaff.library.nd.edu/images/staff/jessica.jpg', '5', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('129', 'Susanna', 'King', 'sluthy', 'https://libstaff.library.nd.edu/images/staff/susannak.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('130', 'Kenneth', 'Kinslow', 'kkinslow', 'https://libstaff.library.nd.edu/images/staff/kenk.jpg', '3', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('132', 'Kelly', 'McNally', 'kkoski1', 'https://libstaff.library.nd.edu/images/staff/kellyk2.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('133', 'Alan', 'Krieger', 'akrieger', 'https://libstaff.library.nd.edu/images/staff/allenk3.jpg', '5', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('134', 'Patricia', 'Krivan', 'pkrivan', 'https://libstaff.library.nd.edu/images/staff/patk.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('135', 'Robert', 'Kusmer', 'rkusmer', 'https://libstaff.library.nd.edu/images/staff/robk.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('137', 'J Parker', 'Ladwig', 'jladwig', 'https://libstaff.library.nd.edu/images/staff/parker.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('138', 'Maureen', 'Lakin', 'mlakin', 'https://libstaff.library.nd.edu/images/staff/maureen.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('142', 'Karen', 'Lanser', 'klanser', 'https://libstaff.library.nd.edu/images/staff/karenl2.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('150', 'Robin', 'Lisek', 'rlisek', 'https://libstaff.library.nd.edu/images/staff/robinl2.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('151', 'Christeena', 'Listenberger', 'clistenb', 'https://libstaff.library.nd.edu/images/staff/christinel.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('152', 'Pat', 'Loghry', 'ploghry', 'https://libstaff.library.nd.edu/images/staff/patl.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('155', 'Natasha', 'Lyandres', 'nlyandre', 'https://libstaff.library.nd.edu/images/staff/natasha2.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('156', 'Darlene', 'Macon-Clifton', 'dmacon', 'https://libstaff.library.nd.edu/images/staff/darlene.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('161', 'Denise', 'Massa', 'dmassa', 'https://libstaff.library.nd.edu/images/staff/denisem.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('162', 'Lori', 'McCune', 'lmccune', 'https://libstaff.library.nd.edu/images/staff/lorim.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('163', 'Paula', 'McDonald', 'pmcdona1', 'https://libstaff.library.nd.edu/images/staff/paulam.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('164', 'Laurie', 'McGowan', 'lthiel', 'https://libstaff.library.nd.edu/images/staff/lauriem.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('165', 'Mary', 'McKeown', 'menglis1', 'https://libstaff.library.nd.edu/images/staff/marymc.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('166', 'Jean', 'McManus', 'jmcmanu1', 'https://libstaff.library.nd.edu/images/staff/jeanm.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('169', 'Thurston', 'Miller', 'tmiller5', 'https://libstaff.library.nd.edu/images/staff/thurstonm2.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('172', 'Eric', 'Morgan', 'emorgan', 'https://libstaff.library.nd.edu/images/staff/ericm.jpg', '5', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('174', 'Tracey', 'Morton', 'tmorton', 'https://libstaff.library.nd.edu/images/staff/traceym.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('175', 'Trudie', 'Mullins', 'tharrier', 'https://libstaff.library.nd.edu/images/staff/trudiem.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('178', 'Pamela', 'Nicholas', 'pnichola', 'https://libstaff.library.nd.edu/images/staff/pamn.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('180', 'Patricia', 'O`Rourke', 'porourke', 'https://libstaff.library.nd.edu/images/staff/pator.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('181', 'Diane', 'Orlowski', 'dorlowsk', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('191', 'Bobbie Lou', 'Philotoff', 'rrodts', 'https://libstaff.library.nd.edu/images/staff/bobby.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('199', 'Rebecca', 'Price', 'rprice', 'https://libstaff.library.nd.edu/images/staff/beckyp.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('205', 'Joseph', 'Ross', 'jross', 'https://libstaff.library.nd.edu/images/staff/joer.jpg', '3', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('206', 'George', 'Rugg', 'grugg', 'https://libstaff.library.nd.edu/images/staff/georger.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('209', 'Sandra', 'Sarber', 'ssarber', 'https://libstaff.library.nd.edu/images/staff/sandysarber.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('211', 'Jayne', 'Schlutt', 'jschlutt', 'https://libstaff.library.nd.edu/images/staff/jaynes.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('213', 'Gwen', 'Scott', 'gscott1', 'https://libstaff.library.nd.edu/images/staff/gwens.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('215', 'Linda', 'Sharp', 'lsharp1', 'https://libstaff.library.nd.edu/images/staff/lindas.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('216', 'Michele', 'Shaw', 'mshaw', 'https://libstaff.library.nd.edu/images/staff/micheles.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('218', 'Diane', 'Sikorski', 'dsikorsk', 'https://libstaff.library.nd.edu/images/staff/dianesikorski.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('220', 'Bill', 'Sill', 'wsill', 'https://libstaff.library.nd.edu/images/staff/bills.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('221', 'Marcy', 'Simons', 'msimons', 'https://libstaff.library.nd.edu/images/staff/marcys.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('222', 'Cheri', 'Smith', 'csmith', 'https://libstaff.library.nd.edu/images/staff/cheris.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('223', 'Marina', 'Smyth', 'msmyth', 'https://libstaff.library.nd.edu/images/staff/marina.jpg', '5', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('228', 'Michelle', 'Savoie', 'mstenber', 'https://libstaff.library.nd.edu/images/staff/michelles.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('230', 'Marsha', 'Stevenson', 'msteven1', 'https://libstaff.library.nd.edu/images/staff/marshas.jpg', '5', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('231', 'Lisa', 'Stienbarger', 'lstienba', 'https://libstaff.library.nd.edu/images/staff/lisas.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('232', 'Mary', 'Szekendi', 'mszekend', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('234', 'Clara', 'Taylor', 'ctaylor2', 'https://libstaff.library.nd.edu/images/staff/clarat.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('235', 'Leigh', 'Taylor', 'ltaylor2', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('244', 'Sara', 'Weber', 'sweber', 'https://libstaff.library.nd.edu/images/staff/saraw.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('245', 'Ladonna', 'Weeks', 'lweeks', 'https://libstaff.library.nd.edu/images/staff/ladonnaw.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('246', 'Nelson', 'Weindling', 'nweindli', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('294', 'Tosha', 'McComb', 'tmccomb', 'https://libstaff.library.nd.edu/images/staff/tosha.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('552', 'Rick', 'Johnson', 'rjohns14', 'https://libstaff.library.nd.edu/images/staff/rickj.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('504', 'Cynthia', 'Harris', 'charris9', 'https://libstaff.library.nd.edu/images/staff/cynthia.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('507', 'Leslie', 'Morgan', 'lmorgan1', 'https://libstaff.library.nd.edu/images/staff/leslie.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('508', 'Peter', 'Reimers', 'preimer1', 'https://libstaff.library.nd.edu/images/staff/peter2.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('511', 'Christine', 'Reimers', 'cjohns19', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('512', 'Aedin', 'Clements', 'aclemen1', 'https://libstaff.library.nd.edu/images/staff/aedin.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('513', 'Julie', 'Arnott', 'jarnott', 'https://libstaff.library.nd.edu/images/staff/julie.jpg', '5', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('515', 'Donna', 'Minarik', 'dminarik', 'https://libstaff.library.nd.edu/images/staff/donna.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('517', 'Charlotte', 'Ford', 'cford', 'https://libstaff.library.nd.edu/images/staff/charlotte.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('518', 'Timothy', 'Zmudzinski', 'tzmudzin', 'https://libstaff.library.nd.edu/images/staff/tim.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('551', 'Michele', 'Wolff', 'mwolff', 'https://libstaff.library.nd.edu/images/staff/michelew.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('529', 'Tracy', 'Bergstrom', 'tbergstr', 'https://libstaff.library.nd.edu/images/staff/tracyb.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('531', 'Ronald', 'Henry', 'rhenry2', 'https://libstaff.library.nd.edu/images/staff/ronhenry.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('532', 'Robin', 'Schaaf', 'rmalott', 'https://libstaff.library.nd.edu/images/staff/robinm.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('534', 'James', 'Yates', 'jyates2', 'https://libstaff.library.nd.edu/images/staff/jimy.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('623', 'Pam', 'Herr', 'pherr', '', '1', '0', '5', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('541', 'Kimberly', 'Shreve', 'kshreve', 'https://libstaff.library.nd.edu/images/staff/kims.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('542', 'Justin', 'Rittenhouse', 'jrittenh', 'https://libstaff.library.nd.edu/images/staff/justin.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('545', 'Adam', 'Heet', 'aheet', 'https://libstaff.library.nd.edu/images/staff/adamh.jpg', '0', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('546', 'Jennifer', 'Parker', 'jparker9', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('547', 'Collette', 'Mak', 'cmak', 'https://libstaff.library.nd.edu/images/staff/colette.jpg', '5', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('550', 'Andrea', 'Langhurst', 'alanghur', 'https://libstaff.library.nd.edu/images/staff/andrea.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('554', 'Barbara ""Pete""', 'Pietraszewski', 'bpietras', 'https://libstaff.library.nd.edu/images/staff/petep.jpg', '3', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('558', 'Dan', 'Brubaker Horst', 'dbrubak1', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('557', 'Patricia', 'Lawton', 'plawton', 'https://libstaff.library.nd.edu/images/staff/patlawton.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('559', 'Patrick', 'Rader', 'prader', 'https://libstaff.library.nd.edu/images/staff/patrickr.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('561', 'Banu', 'Lakshminarayanan', 'blakshmi', 'https://libstaff.library.nd.edu/images/staff/banu.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('562', 'Rajesh', 'Balekai', 'rbalekai', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('563', 'Bruce', 'Loprete', 'bloprete', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('565', 'James', 'Cachey', 'jcachey', 'https://libstaff.library.nd.edu/images/staff/jamesc.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('566', 'David', 'Sullivan', 'dsulli10', 'https://libstaff.library.nd.edu/images/staff/daves2.jpg', '5', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('568', 'David', 'Gura', 'dgura', 'https://libstaff.library.nd.edu/images/staff/davidg.jpg', '3', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('573', 'Robert', 'Kolic', 'rkolic', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('572', 'David', 'Dressing', 'ddressin', 'http://libstaff.library.nd.edu/images/staff/davidb.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('571', 'Laura', 'Sill', 'ljenny', 'https://libstaff.library.nd.edu/images/staff/laurasill.jpg', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('575', 'Sue', 'Korlan', 'skorlan', 'https://libstaff.library.nd.edu/images/staff/no_image.jpg', '1', '0', '2', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('609', 'Alex', 'Papson', 'apapson', '', '3', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('607', 'Julie', 'Tanaka', 'jtanaka1', 'http://www.library.nd.edu/images/staff/juliet.jpg', '3', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('584', 'Jaron', 'Kennel', 'jkennel', 'https://libstaff.library.nd.edu/images/staff/jaronk.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('582', 'Akilah', 'Dixon', 'adixon4', '', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('612', 'Joan', 'Markham', 'jmarkham', '', '1', '0', '5', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('585', 'Viveca', 'Robichaud', 'vpattiso', '', '7', '0', '4', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('576', 'George', 'Krivan', 'gkrivan', 'https://libstaff.library.nd.edu/images/staff/georgek.jpg', '1', '0', '2', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('579', 'Mary Sue', 'Mackey', 'mmackey1', 'https://libstaff.library.nd.edu/images/staff/marysue.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('580', 'Robert', 'Simon', 'rsimon1', 'https://libstaff.library.nd.edu/images/staff/roberts.jpg', '3', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('591', 'Lee', 'Purdy', 'lpurdy1', 'https://libstaff.library.nd.edu/images/staff/leep.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('616', 'John', 'Wang', 'zwang8', '', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('581', 'Diane', 'Walker', 'dwalker6', 'https://libstaff.library.nd.edu/images/staff/dianew.jpg', '5', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('587', 'Kathleen', 'Fleming', 'kflemin4', 'https://libstaff.library.nd.edu/images/staff/kathleenf.jpg', '6', '0', '2', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('590', 'Julia', 'Schneider', 'jschneid', 'https://libstaff.library.nd.edu/images/staff/julies.jpg', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('593', 'Thomas', 'Sharp', 'tsharp', '', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('594', 'Janet', 'Chlebek', 'jchlebek', '', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('595', 'Andrew', 'Schmidt', 'aschmid2', 'http://www.library.nd.edu/images/staff/andys.jpg', '7', '0', '4', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('596', 'Michele', 'Kirk', 'mkirk1', '', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('597', 'Hye-Jin', 'Juhn', 'hjuhn', 'http://www.library.nd.edu/images/staff/hyejin.jpg', '3', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('598', 'Michael', 'Zeiger', 'mzeiger1', '', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('599', 'Andy', 'Wetherill', 'awetheri', '', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('600', 'Tarrez', 'Clark', 'tclark5', '', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('601', 'Lauren', 'Ajamie', 'lajamie', '', '3', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('602', 'Abby', 'Vande Walle', 'avandewa', '', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('603', 'Monica', 'Moore', 'mmoore18', '', '3', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('604', 'Don', 'Brower', 'dbrower', '', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('605', 'Lisa', 'Welty', 'ewelty', '', '7', '0', '2', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('606', 'Jeremy', 'Friesen', 'jfriesen', '', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('608', 'Paula', 'Blasko', 'pblasko', '', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('610', 'Mark', 'Suhovecky', 'msuhovec', '', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('611', 'Tara', 'O`Leary', 'toleary2', '', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('613', 'Suzanne', 'Dias', 'sdias1', '', '1', '0', '5', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('614', 'Matthew', 'Simpson', 'msimpson', '', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('615', 'Michael', 'Mueller', 'mmuelle7', '', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('617', 'Natalie', 'Meyers', 'nmunn', '', '4', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('618', 'Jonathan', 'Hartzler', 'jhartzle', '', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('619', 'Matthew', 'Sisk', 'msisk1', '', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('620', 'James', 'Ng', 'jng2', '', '3', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('621', 'Quinton', 'Estes', 'qestes', '', '1', '0', '5', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('622', 'Michael', 'Defreese', 'mdefrees', '', '1', '0', '1', now(), now());
INSERT INTO directory_employees(id, first_name, last_name, netid, photo, rank_id, selector, status_id, created_at, updated_at) 
	VALUES ('624', 'Steve', 'Roddick', 'sroddick', '', '1', '0', '5', now(), now());
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
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('551', '1', '0', 'Senior Administrative Assistant', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('581', '1', '1', 'Edward H. Arnold University Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('116', '1', '0', 'Associate University Librarian, Academic Services and Collections', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('614', '1', '0', 'Program Director, Administrative and Central Resources', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('132', '1', '0', 'Executive Administrator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('611', '1', '0', 'Program Director, Communications and Marketing', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('616', '1', '0', 'Associate University Librarian, Digital Access, Resources and Information Technology', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('222', '90', '1', 'Program Director, Academic Outreach and Engagement<br>Psychology Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('65', '4', '0', 'Procurement Assistant', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('228', '4', '0', 'Senior Personnel Operations Coordinator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('504', '4', '0', 'Senior Accounting Specialist', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('582', '4', '0', 'Administrative Assistant', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('591', '4', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('81', '6', '1', 'Manager, Building Services', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('518', '6', '0', 'Building Sevices Assistant', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('116', '10', '1', 'Associate University Librarian, Academic Services and Collections', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('100', '11', '1', 'Manager, Business and Social Sciences<br>Entrepreneurial Spirit Endowed Business Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('123', '11', '0', 'Anthropology and Interim Sociology Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('554', '11', '0', 'Business Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('595', '11', '0', 'Visiting Business Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('614', '100', '1', 'Program Director, Administrative and Central Resources', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('156', '108', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('117', '108', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('191', '108', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('246', '108', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('46', '108', '1', 'Supervisor, Data Support Services', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('29', '17', '0', 'Supervisor, Acquisitions Services and Interlibrary Loan', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('66', '17', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('134', '17', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('151', '17', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('53', '17', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('211', '17', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('235', '17', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('571', '17', '1', 'Manager, Acquisitions Services and Interlibrary Loan', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('598', '17', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('61', '17', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('294', '18', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('72', '18', '0', 'Conservator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('55', '18', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('513', '18', '1', 'Manager, Preservation', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('218', '18', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('106', '18', '0', 'Senior Bindery Services Specialist', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('155', '19', '0', 'Russian Studies Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('206', '19', '0', 'Special Collections Curator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('568', '19', '1', 'Interim Manager, Rare Books and Special Collections<br>Special Collections Curator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('565', '19', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('244', '19', '0', 'Special Collections Digital Project Specialist', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('607', '19', '0', 'Western European History Librarian <br>Special Collections Curator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('175', '26', '0', 'Administrative Assistant', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('230', '26', '0', 'Visual Arts Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('580', '26', '0', 'Music Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('572', '26', '1', 'Manager, Arts and Area Studies Subject Specialists<br>Latin American and Iberian Studies Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('512', '26', '0', 'Irish Studies Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('597', '26', '0', 'East Asian Studies Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('599', '101', '0', 'Web Developer', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('84', '101', '1', 'Manager, Web and Software Engineering Unit', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('532', '101', '0', 'Software Engineer', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('584', '101', '0', 'Software Engineer', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('618', '101', '0', 'Software Engineer', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('542', '101', '0', 'Senior Applications Developer', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('25', '32', '0', 'Systems Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('164', '32', '0', 'Instructional Designer', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('41', '32', '0', 'Associate Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('67', '32', '1', 'Program Director, Information Technology and Discovery Services', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('42', '33', '1', 'Engineering Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('52', '33', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('138', '33', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('541', '34', '0', 'IT Support Coordinator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('85', '34', '0', 'IT Support Coordinator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('57', '34', '1', 'Manager, Library Information Technology Support', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('615', '34', '0', 'IT Support Coordinator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('573', '34', '0', 'IT Support Coordinator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('155', '35', '0', 'Russian Studies Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('550', '35', '1', 'Program Director, Resource Acquisitions & Delivery', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('40', '109', '0', 'Original Cataloging and Authorities Associate', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('26', '109', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('48', '109', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('49', '109', '0', 'Supervisor, Metadata Services/Original and Special Cataloging Services<br>Social Sciences/Hispanic Cataloging Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('89', '109', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('135', '109', '0', 'German/Humanities/Theology Cataloging Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('205', '109', '0', 'Rare Books Cataloger', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('152', '109', '0', 'Audio Visual Cataloger', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('579', '109', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('121', '109', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('165', '109', '1', 'Manager and Principal Cataloger, Metadata Services/Original and Special Cataloging Services', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('613', '38', '0', 'Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('181', '38', '0', 'Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('232', '38', '0', 'Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('534', '38', '0', 'Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('624', '38', '0', 'Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('612', '38', '0', 'Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('563', '38', '0', 'Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('575', '38', '0', 'Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('576', '38', '0', 'Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('593', '38', '0', 'Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('608', '38', '0', 'Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('596', '38', '0', 'Supervisor, Monitors', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('621', '38', '0', 'Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('622', '38', '0', 'Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('623', '38', '0', 'Security Monitor', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('545', '39', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('546', '39', '1', 'Supervisor, Architecture Library<br>Architecture Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('508', '39', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('585', '39', '0', 'Visiting Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('566', '98', '1', 'Program Director, Arts and Humanities Research Services<br>Librarian for Classics and Byzantine Studies', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('54', '42', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('76', '42', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('79', '42', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('174', '42', '1', 'Manager, Frontline Services', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('602', '42', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('118', '42', '0', 'Library Assistant I', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('199', '42', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('82', '42', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('169', '119', '1', 'Chemistry-Physics Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('91', '119', '0', 'Senior Branch Library Services Specialist', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('47', '119', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('213', '44', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('142', '44', '0', 'Senior Branch Library Services Specialist', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('137', '44', '1', 'Manager, Sciences and Engineering<br>Mathematics & Life Science Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('133', '112', '0', 'Theology/Philosophy Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('166', '112', '0', 'Catholic Studies Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('87', '112', '0', 'Librarian for English and French Literatures', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('223', '112', '0', 'Medieval Studies Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('590', '112', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('161', '71', '1', 'Visual Resources Curator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('21', '60', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('33', '60', '0', 'Library Assistant I', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('517', '60', '0', 'Library Assistant I', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('234', '60', '1', 'Supervisor, Stacks Management', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('594', '60', '0', 'Library Assistant I', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('215', '117', '0', 'Reference Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('98', '117', '0', 'Graduate Outreach Services Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('71', '117', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('73', '117', '0', 'Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('163', '62', '0', 'Library Assistant I', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('162', '62', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('129', '62', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('92', '62', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('97', '62', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('515', '62', '0', 'Library Assistant I', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('600', '62', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('511', '107', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('231', '107', '1', 'Supervisor, Batchprocessing Services', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('209', '107', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('245', '107', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('28', '107', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('562', '86', '0', 'Senior Programmer / Analyst', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('552', '86', '1', 'Co-Program Director, Digital Library Initiatives and Scholarship -<br>E-Research and Digital Initiatives', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('561', '86', '0', 'Senior Programmer/Analyst', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('558', '86', '0', 'Digital Library Applications Lead', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('606', '86', '0', 'Projects/Application Developer', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('604', '86', '0', 'Digital Library Infrastructure Lead', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('23', '91', '0', 'Interim Program Director, Science, Engineering, Social Science and Business<br>Peace Studies Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('587', '91', '0', 'Temporary Adjunct Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('222', '91', '1', 'Program Director, Academic Outreach and Engagement<br>Psychology Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('620', '91', '0', 'Economics Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('150', '103', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('102', '103', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('178', '103', '0', 'Serials Acquisitions Specialist', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('180', '103', '0', 'Library Assistant III', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('601', '103', '0', 'Electronic Resources Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('603', '103', '0', 'Electronic Resources Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('619', '97', '0', 'Postdoctoral Fellow', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('529', '97', '1', 'Co-Program Director, Digital Library Initiatives and Scholarship Curator, Italian Imprints and Dante Collection', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('617', '97', '0', 'E-Research Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('94', '106', '1', 'Manager, Metadata Services/Batch Processing and Data Support', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('95', '102', '0', 'Senior Systems Administrator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('220', '102', '0', 'Senior Systems Administrator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('610', '102', '0', 'Senior Systems Administrator', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('172', '104', '0', 'Digital Projects Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('557', '104', '0', 'Catholic Research Resources Alliance Digital Projects Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('559', '104', '0', 'Media Digitization Specialist', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('609', '104', '0', 'Metadata and Digital Services Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('221', '105', '1', 'Organizational Development Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('43', '114', '0', 'Lead Mailroom Assistant', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('531', '114', '0', 'Mail Processing Assistant', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('130', '115', '0', 'Assistant Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('507', '115', '1', 'Manager, Teaching & Instructional Services', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('547', '115', '0', 'Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('30', '115', '0', 'Academic Outreach & Engagement Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('605', '115', '0', 'Librarian-In-Residence', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('137', '118', '1', 'Manager, Sciences and Engineering<br>Mathematics & Life Science Librarian', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('216', '118', '0', 'Manager, Branch Staff', now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, employee_unit_title, created_at, updated_at) 
	VALUES ('56', '118', '0', 'Library Assistant II', now(), now());
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1034', 'Directory:LibraryCommittee','116', 'Circulation Working Group', now(), now(), 'MALC: Kevin Blower, Lisa Karle, Tim Amstutz, Sarah Kolda');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1003', 'Directory:LibraryCommittee','581', 'Committee on Appointments and Promotions', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1004', 'Directory:LibraryCommittee','616', 'Library Training and Development Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1005', 'Directory:LibraryCommittee','581', 'Executive Committee of the Library Faculty (ELF)', now(), now(), 'Eric Morgan will replace Doug Archer by virtue of assuming position of senior FS representative, with term ending July 31, 2014.');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1088', 'Directory:UniversityCommittee','581', 'Graduate Council', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1075', 'Directory:LibraryCommittee','116', 'Document Delivery Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1049', 'Directory:UniversityCommittee','581', 'Academic Affirmative Action Committee', now(), now(), 'University Committee, appointed by President');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1035', 'Directory:LibraryCommittee','581', 'Diversity Committee', now(), now(), 'Dwight King (Law Library)');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1083', 'Directory:UniversityCommittee','192', 'University Council for Academic Technologies', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1048', 'Directory:LibraryCommittee','116', 'Library Orientation Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1058', 'Directory:UniversityCommittee','581', 'Academic & Faculty Affairs Comm of the U Board of Trustees', now(), now(), 'University committee, elective');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1051', 'Directory:UniversityCommittee','581', 'Judicial Review Board', now(), now(), 'University Committee, appointive');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1052', 'Directory:UniversityCommittee','544', 'University Committee on First Year of Studies', now(), now(), 'University Committee, appointive');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1054', 'Directory:UniversityCommittee','0', 'University Staff Advisory Council', now(), now(), 'Elected by Library staff');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1055', 'Directory:LibraryCommittee','581', 'Library Faculty Elections Committee', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1056', 'Directory:LibraryCommittee','581', 'Faculty Professional Development Committee', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1057', 'Directory:UniversityCommittee','581', 'Academic Council', now(), now(), 'Elective, University Librarian is ex officio.');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1059', 'Directory:UniversityCommittee','581', 'Faculty Grievance Committee (University)', now(), now(), 'Elective');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1060', 'Directory:UniversityCommittee','581', 'Faculty Senate', now(), now(), 'University Committee, elective');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1061', 'Directory:UniversityCommittee','0', 'University Committee on Elections', now(), now(), 'University committee, appointive, Chair of the Library Faculty Elections Committee.');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1062', 'Directory:UniversityCommittee','581', 'University Committee on Libraries (UCL)', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1068', 'Directory:LibraryCommittee','116', 'Special Collections Exhibits Committee', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1064', 'Directory:UniversityCommittee','0', 'University Committee on Women Faculty and Students', now(), now(), 'University Committee, elective');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1078', 'Directory:LibraryCommittee','616', 'Serials Working Group (SWG)', now(), now(), 'Sue Wiegand: SMC member');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1079', 'Directory:LibraryCommittee','616', 'Aleph Upgrade Team', now(), now(), 'Kitty Marschall, Saint Marys, MALC representative');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1095', 'Directory:LibraryCommittee','616', 'MetaSearch Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1084', 'Directory:LibraryCommittee','0', 'Library Faculty', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1085', 'Directory:LibraryCommittee','616', 'Aleph Working Group (AWG)', now(), now(), 'Kevin Blowers: Bethel College; Sara Kolda: Holy Cross College; Kitty Marschall: St. Mary’s College');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1087', 'Directory:LibraryCommittee','132', 'Library Materials Budget Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1090', 'Directory:LibraryCommittee','581', 'Task Force on University Libraries Participation In the IN Light Archive', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1092', 'Directory:LibraryCommittee','616', 'OCLC Services Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1096', 'Directory:LibraryCommittee','616', 'SFX Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1097', 'Directory:LibraryCommittee','581', 'Christmas Party Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1123', 'Directory:LibraryCommittee','581', 'Hesburgh Library Staff Advocacy Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1130', 'Directory:UniversityCommittee','581', 'University  Committee on Research, Library, and Special Professional Faculty  Appeals', now(), now(), 'In addition to the four faculty from Hesburgh Libraries, there are also two faculty from the Kresge Law Library.');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1103', 'Directory:UniversityCommittee','616', 'Software Committee', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1114', 'Directory:LibraryCommittee','581', 'Library Sustainability Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1118', 'Directory:LibraryCommittee','616', 'E-Book Steering Team', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1119', 'Directory:LibraryCommittee','616', 'E-Book Steering Team: Batch Record Set Working Group', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1120', 'Directory:LibraryCommittee','616', 'E-Book Steering Team: Licensing/Acquisitions Working Group', now(), now(), '');
INSERT INTO directory_organizational_units (id, type, parent_organizational_unit_id, name, created_at, updated_at, about_text) 
	VALUES ('1126', 'Directory:LibraryCommittee','616', 'Wiki Oversight Team', now(), now(), '');
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('49', '1002', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('42', '1002', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('67', '1008', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('155', '1008', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('30', '1008', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('25', '1079', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('222', '1007', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('23', '1002', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('172', '1005', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('72', '1003', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('30', '1001', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('25', '1119', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('100', '1005', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('135', '1021', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('165', '1021', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('23', '1023', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('165', '1023', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('178', '1023', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('169', '1003', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('94', '1025', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('142', '1025', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('178', '1025', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('231', '1025', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('73', '1030', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('57', '1103', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('142', '1034', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('41', '1035', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('123', '1035', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('73', '1037', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('116', '1037', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('169', '1037', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('49', '1038', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('133', '1038', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('30', '1039', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('137', '1039', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('221', '1039', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('222', '1039', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('30', '1040', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('137', '1040', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('221', '1040', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('222', '1040', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('72', '1043', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('206', '1043', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('244', '1043', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('30', '1044', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('137', '1044', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('221', '1044', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('222', '1044', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('30', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('41', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('42', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('23', '1060', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('100', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('73', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('116', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('89', '1094', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('137', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('165', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('169', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('230', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('132', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('132', '1015', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('94', '1048', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('42', '1118', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('67', '1007', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('73', '1007', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('87', '1007', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('215', '1007', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('30', '1049', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('206', '1068', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('98', '1061', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('580', '1130', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('73', '1032', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('222', '1032', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('30', '1035', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('246', '1094', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('230', '1037', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('73', '1045', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('169', '1044', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('116', '1043', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('118', '1048', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('175', '1066', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('558', '1066', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('23', '1067', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('30', '1067', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('73', '1067', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('87', '1067', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('91', '1067', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('172', '1067', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('230', '1067', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('244', '1068', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('72', '1068', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('116', '1068', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('91', '1034', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('166', '1032', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('25', '1033', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('30', '1070', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('166', '1048', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('41', '1008', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('581', '1062', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('94', '1072', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('218', '1068', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('72', '1074', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('211', '1074', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('169', '1075', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('166', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('25', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('40', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('28', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('56', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('91', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('94', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('98', '1004', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('121', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('142', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('150', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('221', '1004', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('178', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('102', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('211', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('231', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('100', '1079', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('165', '1079', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('178', '1079', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('199', '1078', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('67', '1080', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('222', '1080', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('25', '1080', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('95', '1080', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('41', '1048', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('67', '1082', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('222', '1082', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('172', '1083', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('550', '1058', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('223', '1072', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('513', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('25', '1085', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('174', '1085', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('95', '1085', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('165', '1085', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('94', '1085', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('231', '1085', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('56', '1094', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('138', '1048', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('230', '1129', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('150', '1129', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('504', '1087', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('67', '1086', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('222', '1033', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('100', '1100', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('165', '1118', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('57', '1004', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('25', '1086', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('71', '1086', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('87', '1129', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('205', '1033', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('81', '1129', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('65', '1129', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('52', '1129', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('67', '1091', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('215', '1091', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('40', '1092', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('46', '1092', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('209', '1092', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('133', '1092', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('222', '1092', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('29', '1094', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('25', '1095', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('67', '1095', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('94', '1095', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('123', '1095', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('73', '1095', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('215', '1096', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('138', '1096', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('67', '1096', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('95', '1096', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('82', '1096', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('603', '1056', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('222', '1128', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('216', '1128', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('572', '1128', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('542', '1034', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('174', '1034', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('216', '1034', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('116', '1015', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('512', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('67', '1128', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('118', '1097', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('56', '1097', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('53', '1097', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('79', '1097', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('81', '1098', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('30', '1098', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('57', '1098', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('222', '1098', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('529', '1099', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('42', '1099', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('199', '1099', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('87', '1099', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('221', '1081', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('547', '1081', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('164', '1100', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('222', '1100', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('244', '1100', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('172', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('547', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('98', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('513', '1101', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('41', '1101', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('67', '1101', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('155', '1101', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('172', '1101', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('221', '1086', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('98', '1102', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('130', '1102', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('206', '1102', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('152', '1102', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('230', '1102', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('513', '1102', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('172', '1102', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('42', '1102', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('598', '1114', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('23', '1062', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('166', '1114', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('42', '1130', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('123', '1130', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('529', '1128', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('222', '1005', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('30', '1003', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('54', '1097', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('132', '1098', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('215', '1102', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('42', '1075', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('132', '1087', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('49', '1092', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('513', '1099', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('30', '1090', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('23', '1057', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('507', '1052', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('230', '1130', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('76', '1106', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('81', '1106', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('73', '1106', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('547', '1106', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('169', '1106', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('165', '1106', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('230', '1106', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('169', '1107', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('529', '1108', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('546', '1108', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('541', '1109', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('222', '1109', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('199', '1109', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('133', '1109', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('29', '1110', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('106', '1110', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('132', '1110', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('61', '1111', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('67', '1112', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('100', '1112', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('174', '1112', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('230', '1112', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('81', '1113', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('73', '1113', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('132', '1113', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('554', '1066', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('216', '1094', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('73', '1094', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('106', '1094', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('601', '1056', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('215', '1055', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('23', '1003', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('41', '1055', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('152', '1059', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('581', '1057', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('581', '1005', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('172', '1060', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('81', '1114', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('65', '1114', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('230', '1114', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('150', '1114', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('87', '1114', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('52', '1114', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('132', '1106', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('98', '1055', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('551', '1113', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('116', '1117', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('123', '1117', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('132', '1128', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('222', '1057', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('89', '1119', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('542', '1119', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('231', '1119', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('102', '1120', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('150', '1120', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('161', '1081', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('65', '1081', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('123', '1081', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('155', '1128', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('554', '1056', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('123', '1121', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('133', '1121', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('166', '1121', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('230', '1005', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('215', '1122', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('541', '1097', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('568', '1081', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('163', '1097', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('582', '1123', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('606', '1123', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('95', '1123', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('600', '1123', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('209', '1054', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('94', '1119', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('46', '1119', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('546', '1046', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('568', '1125', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('73', '1125', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('164', '1125', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('166', '1125', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('169', '1125', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('507', '1125', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('546', '1125', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('222', '1125', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('554', '1125', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('542', '1085', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('235', '1085', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('57', '1126', 1, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('142', '1126', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('230', '1126', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('504', '1127', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('532', '1127', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('165', '1127', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('231', '1127', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('30', '1127', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('550', '1003', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('138', '1123', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('591', '1123', 0, now(), now());
INSERT INTO directory_employee_units (employee_id, organizational_unit_id, chair, created_at, updated_at) 
	VALUES ('590', '1123', 0, now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '21', 'Directory::Employee', 'sandrzej@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '23', 'Directory::Employee', 'jarcher@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '25', 'Directory::Employee', 'abales@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '26', 'Directory::Employee', 'pbales@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '28', 'Directory::Employee', 'mpershin@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '29', 'Directory::Employee', 'tbauters@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '30', 'Directory::Employee', 'lbayard@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '33', 'Directory::Employee', 'dbernhar@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '40', 'Directory::Employee', 'rboyd@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '41', 'Directory::Employee', 'fboze@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '42', 'Directory::Employee', 'cszambel@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '43', 'Directory::Employee', 'bbradfor@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '46', 'Directory::Employee', 'jbrcka@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '47', 'Directory::Employee', 'scurtis@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '48', 'Directory::Employee', 'pbrzezin@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '49', 'Directory::Employee', 'bburk1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '52', 'Directory::Employee', 'pchu@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '53', 'Directory::Employee', 'gclaeys@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '54', 'Directory::Employee', 'kclark@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '55', 'Directory::Employee', 'kcolbert@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '56', 'Directory::Employee', 'bjenning@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '57', 'Directory::Employee', 'scollin4@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '61', 'Directory::Employee', 'mcrabtr1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '65', 'Directory::Employee', 'sdavis1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '66', 'Directory::Employee', 'bdean1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '67', 'Directory::Employee', 'mdehmlow@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '71', 'Directory::Employee', 'ldoversb@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '72', 'Directory::Employee', 'ldube@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '73', 'Directory::Employee', 'sedwards@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '76', 'Directory::Employee', 'denyeart@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '79', 'Directory::Employee', 'sfeirick@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '81', 'Directory::Employee', 'rfergers@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '82', 'Directory::Employee', 'kferraro@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '84', 'Directory::Employee', 'rfox2@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '85', 'Directory::Employee', 'bfrelas@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '87', 'Directory::Employee', 'lfuderer@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '89', 'Directory::Employee', 'mgiles@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '91', 'Directory::Employee', 'dgram@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '92', 'Directory::Employee', 'lgregory@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '94', 'Directory::Employee', 'aguimara@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '95', 'Directory::Employee', 'hanstra@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '97', 'Directory::Employee', 'nhashil@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '98', 'Directory::Employee', 'mhavert@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '100', 'Directory::Employee', 'shayes1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '102', 'Directory::Employee', 'bhoffma2@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '106', 'Directory::Employee', 'dhuyvaer@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '116', 'Directory::Employee', 'ljordan@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '117', 'Directory::Employee', 'ikahal@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '118', 'Directory::Employee', 'nbennett@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '121', 'Directory::Employee', 'bkarol@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '123', 'Directory::Employee', 'jkayongo@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '129', 'Directory::Employee', 'sluthy@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '130', 'Directory::Employee', 'kkinslow@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '132', 'Directory::Employee', 'kkoski1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '133', 'Directory::Employee', 'akrieger@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '134', 'Directory::Employee', 'pkrivan@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '135', 'Directory::Employee', 'rkusmer@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '137', 'Directory::Employee', 'jladwig@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '138', 'Directory::Employee', 'mlakin@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '142', 'Directory::Employee', 'klanser@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '150', 'Directory::Employee', 'rlisek@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '151', 'Directory::Employee', 'clistenb@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '152', 'Directory::Employee', 'ploghry@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '155', 'Directory::Employee', 'nlyandre@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '156', 'Directory::Employee', 'dmacon@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '161', 'Directory::Employee', 'dmassa@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '162', 'Directory::Employee', 'lmccune@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '163', 'Directory::Employee', 'pmcdona1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '164', 'Directory::Employee', 'lthiel@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '165', 'Directory::Employee', 'menglis1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '166', 'Directory::Employee', 'jmcmanu1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '169', 'Directory::Employee', 'tmiller5@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '172', 'Directory::Employee', 'emorgan@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '174', 'Directory::Employee', 'tmorton@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '175', 'Directory::Employee', 'tharrier@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '178', 'Directory::Employee', 'pnichola@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '180', 'Directory::Employee', 'porourke@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '181', 'Directory::Employee', 'dorlowsk@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '191', 'Directory::Employee', 'rrodts@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '199', 'Directory::Employee', 'rprice@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '205', 'Directory::Employee', 'jross@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '206', 'Directory::Employee', 'grugg@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '209', 'Directory::Employee', 'ssarber@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '211', 'Directory::Employee', 'jschlutt@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '213', 'Directory::Employee', 'gscott1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '215', 'Directory::Employee', 'lsharp1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '216', 'Directory::Employee', 'mshaw@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '218', 'Directory::Employee', 'dsikorsk@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '220', 'Directory::Employee', 'wsill@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '221', 'Directory::Employee', 'msimons@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '222', 'Directory::Employee', 'csmith@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '223', 'Directory::Employee', 'msmyth@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '228', 'Directory::Employee', 'mstenber@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '230', 'Directory::Employee', 'msteven1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '231', 'Directory::Employee', 'lstienba@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '232', 'Directory::Employee', 'mszekend@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '234', 'Directory::Employee', 'ctaylor2@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '235', 'Directory::Employee', 'ltaylor2@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '244', 'Directory::Employee', 'sweber@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '245', 'Directory::Employee', 'lweeks@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '246', 'Directory::Employee', 'nweindli@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '294', 'Directory::Employee', 'tmccomb@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '552', 'Directory::Employee', 'rjohns14@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '504', 'Directory::Employee', 'charris9@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '507', 'Directory::Employee', 'lmorgan1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '508', 'Directory::Employee', 'preimer1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '511', 'Directory::Employee', 'cjohns19@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '512', 'Directory::Employee', 'aclemen1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '513', 'Directory::Employee', 'jarnott@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '515', 'Directory::Employee', 'dminarik@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '517', 'Directory::Employee', 'cford@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '518', 'Directory::Employee', 'tzmudzin@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '551', 'Directory::Employee', 'mwolff@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '529', 'Directory::Employee', 'tbergstr@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '531', 'Directory::Employee', 'rhenry2@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '532', 'Directory::Employee', 'rmalott@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '534', 'Directory::Employee', 'jyates2@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '623', 'Directory::Employee', 'pherr@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '541', 'Directory::Employee', 'kshreve@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '542', 'Directory::Employee', 'jrittenh@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '545', 'Directory::Employee', 'aheet@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '546', 'Directory::Employee', 'jparker9@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '547', 'Directory::Employee', 'cmak@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '550', 'Directory::Employee', 'alanghur@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '554', 'Directory::Employee', 'bpietras@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '558', 'Directory::Employee', 'dbrubak1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '557', 'Directory::Employee', 'plawton@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '559', 'Directory::Employee', 'prader@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '561', 'Directory::Employee', 'blakshmi@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '562', 'Directory::Employee', 'rbalekai@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '563', 'Directory::Employee', 'bloprete@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '565', 'Directory::Employee', 'jcachey@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '566', 'Directory::Employee', 'dsulli10@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '568', 'Directory::Employee', 'dgura@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '573', 'Directory::Employee', 'rkolic@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '572', 'Directory::Employee', 'ddressin@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '571', 'Directory::Employee', 'ljenny@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '575', 'Directory::Employee', 'skorlan@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '609', 'Directory::Employee', 'apapson@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '607', 'Directory::Employee', 'jtanaka1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '584', 'Directory::Employee', 'jkennel@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '582', 'Directory::Employee', 'adixon4@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '612', 'Directory::Employee', 'jmarkham@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '585', 'Directory::Employee', 'vpattiso@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '576', 'Directory::Employee', 'gkrivan@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '579', 'Directory::Employee', 'mmackey1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '580', 'Directory::Employee', 'rsimon1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '591', 'Directory::Employee', 'lpurdy1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '616', 'Directory::Employee', 'zwang8@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '581', 'Directory::Employee', 'dwalker6@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '587', 'Directory::Employee', 'kflemin4@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '590', 'Directory::Employee', 'jschneid@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '593', 'Directory::Employee', 'tsharp@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '594', 'Directory::Employee', 'jchlebek@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '595', 'Directory::Employee', 'aschmid2@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '596', 'Directory::Employee', 'mkirk1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '597', 'Directory::Employee', 'hjuhn@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '598', 'Directory::Employee', 'mzeiger1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '599', 'Directory::Employee', 'awetheri@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '600', 'Directory::Employee', 'tclark5@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '601', 'Directory::Employee', 'lajamie@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '602', 'Directory::Employee', 'avandewa@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '603', 'Directory::Employee', 'mmoore18@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '604', 'Directory::Employee', 'dbrower@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '605', 'Directory::Employee', 'ewelty@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '606', 'Directory::Employee', 'jfriesen@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '608', 'Directory::Employee', 'pblasko@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '610', 'Directory::Employee', 'msuhovec@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '611', 'Directory::Employee', 'toleary2@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '613', 'Directory::Employee', 'sdias1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '614', 'Directory::Employee', 'msimpson@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '615', 'Directory::Employee', 'mmuelle7@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '617', 'Directory::Employee', 'nmunn@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '618', 'Directory::Employee', 'jhartzle@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '619', 'Directory::Employee', 'msisk1@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '620', 'Directory::Employee', 'jng2@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '621', 'Directory::Employee', 'qestes@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '622', 'Directory::Employee', 'mdefrees@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactEmail', '624', 'Directory::Employee', 'sroddick@nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactEmail', '41', 'Directory::Employee', 'Boze.1@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactEmail', '42', 'Directory::Employee', 'brach.10@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactEmail', '501', 'Directory::Employee', 'Caroline.Beavers.3@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactEmail', '553', 'Directory::Employee', 'dolores.w.tantoco-stauder@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactEmail', '505', 'Directory::Employee', 'fsmith3@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactEmail', '93', 'Directory::Employee', 'Griffen.1@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactEmail', '120', 'Directory::Employee', 'Joni.E.Warner.29@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactEmail', '132', 'Directory::Employee', 'Kelly.A.McNally.28@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactEmail', '129', 'Directory::Employee', 'king.100@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactEmail', '137', 'Directory::Employee', 'ladwig.1@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactEmail', '571', 'Directory::Employee', 'Laura.A.Sill.4@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactEmail', '507', 'Directory::Employee', 'morgan.59@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactEmail', '617', 'Directory::Employee', 'natalie.meyers@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactEmail', '577', 'Directory::Employee', 'nathaniel.campbell@gmail.com', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactEmail', '564', 'Directory::Employee', 'ohmer.1@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactEmail', '533', 'Directory::Employee', 'Pamela.J.Scofield.3@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactEmail', '73', 'Directory::Employee', 'sherri.l.jones@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactEmail', '610', 'Directory::Employee', 'suhovecky@nd.edu', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '21', 'Directory::Employee', '119 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '23', 'Directory::Employee', '117A Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '25', 'Directory::Employee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '26', 'Directory::Employee', '123 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '28', 'Directory::Employee', '213 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '29', 'Directory::Employee', '124A Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '30', 'Directory::Employee', '111 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '33', 'Directory::Employee', '222B Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '40', 'Directory::Employee', '123C Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '41', 'Directory::Employee', '208A Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '42', 'Directory::Employee', '149A Fitzpatrick Hall of Engineering', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '43', 'Directory::Employee', '125 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '46', 'Directory::Employee', '123D Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '47', 'Directory::Employee', '231 Nieuwland Science Hall', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '48', 'Directory::Employee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '49', 'Directory::Employee', '123A  Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '52', 'Directory::Employee', '149A Fitzpatrick Hall of Engineering', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '53', 'Directory::Employee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '54', 'Directory::Employee', '119 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '55', 'Directory::Employee', '120 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '56', 'Directory::Employee', 'L002A Mendoza College of Business', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '57', 'Directory::Employee', '220 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '61', 'Directory::Employee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '65', 'Directory::Employee', '221 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '66', 'Directory::Employee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '67', 'Directory::Employee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '71', 'Directory::Employee', '116 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '72', 'Directory::Employee', 'B005 Reyniers Building', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '73', 'Directory::Employee', '117C Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '76', 'Directory::Employee', '119 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '79', 'Directory::Employee', '119 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '81', 'Directory::Employee', '235 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '82', 'Directory::Employee', '203 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '84', 'Directory::Employee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '85', 'Directory::Employee', '220 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '87', 'Directory::Employee', '1202C Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '89', 'Directory::Employee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '91', 'Directory::Employee', '231 Nieuwland Science Hall', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '92', 'Directory::Employee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '94', 'Directory::Employee', '123 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '95', 'Directory::Employee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '97', 'Directory::Employee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '98', 'Directory::Employee', '110 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '100', 'Directory::Employee', 'L012 Mendoza College of Business', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '102', 'Directory::Employee', '115A Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '106', 'Directory::Employee', '120 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '116', 'Directory::Employee', '221E Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '117', 'Directory::Employee', '123 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '118', 'Directory::Employee', '208O Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '121', 'Directory::Employee', '102 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '123', 'Directory::Employee', '115 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '129', 'Directory::Employee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '130', 'Directory::Employee', '121B Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '132', 'Directory::Employee', '221B Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '133', 'Directory::Employee', '1201H Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '134', 'Directory::Employee', '122 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '135', 'Directory::Employee', '123B  Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '137', 'Directory::Employee', 'B009 Hayes-Healy Center<br>100 Galvin Life Science', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '138', 'Directory::Employee', '149A Fitzpatrick Hall of Engineering', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '142', 'Directory::Employee', 'B011 Hayes-Healy Center', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '150', 'Directory::Employee', '115A Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '151', 'Directory::Employee', '122 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '152', 'Directory::Employee', '205 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '155', 'Directory::Employee', '217 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '156', 'Directory::Employee', '123 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '161', 'Directory::Employee', '216 Riley Hall', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '162', 'Directory::Employee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '163', 'Directory::Employee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '164', 'Directory::Employee', '208B Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '165', 'Directory::Employee', '207 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '166', 'Directory::Employee', '1201 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '169', 'Directory::Employee', '231 Nieuwland Science Hall', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '172', 'Directory::Employee', '131 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '174', 'Directory::Employee', '119 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '175', 'Directory::Employee', '1201A Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '178', 'Directory::Employee', '115A Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '180', 'Directory::Employee', '115A Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '181', 'Directory::Employee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '191', 'Directory::Employee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '199', 'Directory::Employee', 'B001H  Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '205', 'Directory::Employee', '102 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '206', 'Directory::Employee', '102 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '209', 'Directory::Employee', '213 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '211', 'Directory::Employee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '213', 'Directory::Employee', 'B010 Hayes-Healy Center', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '215', 'Directory::Employee', '117B Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '216', 'Directory::Employee', 'L001C Mendoza College of Business', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '218', 'Directory::Employee', 'B010 Reyniers Building', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '220', 'Directory::Employee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '221', 'Directory::Employee', '223 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '222', 'Directory::Employee', '117D Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '223', 'Directory::Employee', '714 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '228', 'Directory::Employee', '245 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '230', 'Directory::Employee', '243 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '231', 'Directory::Employee', '213 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '232', 'Directory::Employee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '234', 'Directory::Employee', '222C Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '235', 'Directory::Employee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '244', 'Directory::Employee', '102 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '245', 'Directory::Employee', '213 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '246', 'Directory::Employee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '294', 'Directory::Employee', 'B005 Reyniers Building', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '552', 'Directory::Employee', '210 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '504', 'Directory::Employee', '224 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '507', 'Directory::Employee', '112 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '508', 'Directory::Employee', '117 Bond Hall', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '511', 'Directory::Employee', '213 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '512', 'Directory::Employee', '1202A Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '513', 'Directory::Employee', '244 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '515', 'Directory::Employee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '517', 'Directory::Employee', '222B Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '518', 'Directory::Employee', '235 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '551', 'Directory::Employee', '221 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '529', 'Directory::Employee', '131 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '531', 'Directory::Employee', '125 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '532', 'Directory::Employee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '534', 'Directory::Employee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '623', 'Directory::Employee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '541', 'Directory::Employee', '220 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '542', 'Directory::Employee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '545', 'Directory::Employee', '117 Bond Hall', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '546', 'Directory::Employee', '117 Bond Hall', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '547', 'Directory::Employee', '219 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '550', 'Directory::Employee', '115B Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '554', 'Directory::Employee', 'L001D Mendoza College of Business', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '558', 'Directory::Employee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '557', 'Directory::Employee', '206 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '559', 'Directory::Employee', '113 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '561', 'Directory::Employee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '562', 'Directory::Employee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '563', 'Directory::Employee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '565', 'Directory::Employee', '102 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '566', 'Directory::Employee', '1224B Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '568', 'Directory::Employee', '102 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '573', 'Directory::Employee', '220 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '572', 'Directory::Employee', '1201E Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '571', 'Directory::Employee', '124 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '575', 'Directory::Employee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '609', 'Directory::Employee', '131 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '607', 'Directory::Employee', '102 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '584', 'Directory::Employee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '582', 'Directory::Employee', '221 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '612', 'Directory::Employee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '585', 'Directory::Employee', '117 Bond Hall', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '576', 'Directory::Employee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '579', 'Directory::Employee', '123 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '580', 'Directory::Employee', '201 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '591', 'Directory::Employee', '221 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '616', 'Directory::Employee', '221D Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '581', 'Directory::Employee', '221G Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '587', 'Directory::Employee', '121A Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '590', 'Directory::Employee', '715B Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '593', 'Directory::Employee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '594', 'Directory::Employee', '222B Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '595', 'Directory::Employee', 'L002A Mendoza College of Business', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '596', 'Directory::Employee', '225 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '597', 'Directory::Employee', '1201D Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '598', 'Directory::Employee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '599', 'Directory::Employee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '600', 'Directory::Employee', '118 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '601', 'Directory::Employee', '108 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '602', 'Directory::Employee', '119 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '603', 'Directory::Employee', '109 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '604', 'Directory::Employee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '605', 'Directory::Employee', '1224C Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '606', 'Directory::Employee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '608', 'Directory::Employee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '610', 'Directory::Employee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '611', 'Directory::Employee', '221A Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '613', 'Directory::Employee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '614', 'Directory::Employee', '221C Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '615', 'Directory::Employee', '220 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '617', 'Directory::Employee', '204 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '618', 'Directory::Employee', '208 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '619', 'Directory::Employee', '131 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '620', 'Directory::Employee', '114 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '621', 'Directory::Employee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '622', 'Directory::Employee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactAddress', '624', 'Directory::Employee', '104 Hesburgh Library', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '21', 'Directory::Employee', '574 631-2261', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '23', 'Directory::Employee', '574 631-6656', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '25', 'Directory::Employee', '574 631-4035', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '26', 'Directory::Employee', '631-7620', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '28', 'Directory::Employee', '631-1014', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '29', 'Directory::Employee', '574 631-6188', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '30', 'Directory::Employee', '574 631-8570', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '33', 'Directory::Employee', '574 631-4566', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '40', 'Directory::Employee', '574 631-6243', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '41', 'Directory::Employee', '574 631-8708', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '42', 'Directory::Employee', '631-5070', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '43', 'Directory::Employee', '574 631-7437', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '46', 'Directory::Employee', '574 631-2512', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '47', 'Directory::Employee', '574 631-4548', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '48', 'Directory::Employee', '574 631-4496', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '49', 'Directory::Employee', '574 631-6904', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '52', 'Directory::Employee', '574 631-6665', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '53', 'Directory::Employee', '574 631-7642', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '54', 'Directory::Employee', '574 631-6318', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '55', 'Directory::Employee', '574 631-6169', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '56', 'Directory::Employee', '574 631-2907', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '57', 'Directory::Employee', '574 631-6428', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '61', 'Directory::Employee', '574 631-2516', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '65', 'Directory::Employee', '574 631-5271', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '66', 'Directory::Employee', '574 631-5629', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '67', 'Directory::Employee', '574 631-3092', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '71', 'Directory::Employee', '574 631-6104', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '72', 'Directory::Employee', '574 631-4643', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '73', 'Directory::Employee', '574 631-4034', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '76', 'Directory::Employee', '631-7578', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '79', 'Directory::Employee', '574 631-6318', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '81', 'Directory::Employee', '574 631-6361', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '82', 'Directory::Employee', '574 631-7438', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '84', 'Directory::Employee', '574 631-3353', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '85', 'Directory::Employee', '574 631-7176', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '87', 'Directory::Employee', '574 631-5233', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '89', 'Directory::Employee', '574 631-4496', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '91', 'Directory::Employee', '574 631-7203', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '92', 'Directory::Employee', '574 631-6260', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '94', 'Directory::Employee', '631-3558', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '95', 'Directory::Employee', '574 631-4686', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '97', 'Directory::Employee', '574 631-6260', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '98', 'Directory::Employee', '631-6189', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '100', 'Directory::Employee', '574 631-5268', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '102', 'Directory::Employee', '574 631-2643', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '106', 'Directory::Employee', '574 631-6360', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '116', 'Directory::Employee', '574 631-3778', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '117', 'Directory::Employee', '574 631-3240', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '118', 'Directory::Employee', '574 631-2889', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '121', 'Directory::Employee', '574 631-7139', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '123', 'Directory::Employee', '574 631-5176', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '129', 'Directory::Employee', '574 631-9374', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '130', 'Directory::Employee', '574 631-9832', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '132', 'Directory::Employee', '574 631-6429', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '133', 'Directory::Employee', '574 631-6663', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '134', 'Directory::Employee', '574 631-5261', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '135', 'Directory::Employee', '574 631-8649', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '137', 'Directory::Employee', '631-3617<br>631-1354', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '138', 'Directory::Employee', '574 631-6665', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '142', 'Directory::Employee', '574 631-4550', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '150', 'Directory::Employee', '574 631-3818', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '151', 'Directory::Employee', '574 631-5614', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '152', 'Directory::Employee', '574 631-7456', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '155', 'Directory::Employee', '574 631-3009', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '156', 'Directory::Employee', '574 631-6218', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '161', 'Directory::Employee', '631-4273', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '162', 'Directory::Employee', '574 631-4489', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '163', 'Directory::Employee', '574 631-2584', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '164', 'Directory::Employee', '574 631-4406', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '165', 'Directory::Employee', '574 631-5739', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '166', 'Directory::Employee', '631-1703', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '169', 'Directory::Employee', '574 631-4549', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '172', 'Directory::Employee', '631-8604', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '174', 'Directory::Employee', '574 631-6824', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '175', 'Directory::Employee', '574 631-6257', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '178', 'Directory::Employee', '574 631-7577', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '180', 'Directory::Employee', '574 631-6374', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '181', 'Directory::Employee', '574 631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '191', 'Directory::Employee', '631-3255', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '199', 'Directory::Employee', '574 631-4563', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '205', 'Directory::Employee', '574 631-5835', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '206', 'Directory::Employee', '574 631-6506', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '209', 'Directory::Employee', '574 631-4038', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '211', 'Directory::Employee', '574 631-4046', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '213', 'Directory::Employee', '574 631-7278', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '215', 'Directory::Employee', '574 631-6818', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '216', 'Directory::Employee', '574 631-4584', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '218', 'Directory::Employee', '574 631-4077', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '220', 'Directory::Employee', '574 631-7892', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '221', 'Directory::Employee', '574 631-2871', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '222', 'Directory::Employee', '574 631-4271', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '223', 'Directory::Employee', '574 631-7420', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '228', 'Directory::Employee', '574 631-3972', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '230', 'Directory::Employee', '631-7665', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '231', 'Directory::Employee', '574 631-4631', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '232', 'Directory::Employee', '574 631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '234', 'Directory::Employee', '574 631-4566', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '235', 'Directory::Employee', '574 631-4045', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '244', 'Directory::Employee', '574 631-5610', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '245', 'Directory::Employee', '574 631-6043', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '246', 'Directory::Employee', '574 631-1580', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '294', 'Directory::Employee', '631-7734', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '552', 'Directory::Employee', '631-1086', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '504', 'Directory::Employee', '631-9487', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '507', 'Directory::Employee', '631-8764', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '508', 'Directory::Employee', '631-8424', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '511', 'Directory::Employee', '631-5262', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '512', 'Directory::Employee', '631-0497', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '513', 'Directory::Employee', '631-0872', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '515', 'Directory::Employee', '631-6260', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '517', 'Directory::Employee', '631-4566', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '518', 'Directory::Employee', '631-8439', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '551', 'Directory::Employee', '631-7780', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '529', 'Directory::Employee', '631-1763', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '531', 'Directory::Employee', '631-7437', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '532', 'Directory::Employee', '631-1575', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '534', 'Directory::Employee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '623', 'Directory::Employee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '541', 'Directory::Employee', '631-6640', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '542', 'Directory::Employee', '631-3065', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '545', 'Directory::Employee', '631-3371', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '546', 'Directory::Employee', '631-9401', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '547', 'Directory::Employee', '631-7392', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '550', 'Directory::Employee', '631-9809', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '554', 'Directory::Employee', '631-9099', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '558', 'Directory::Employee', '631-2305', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '557', 'Directory::Employee', '631-1324', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '559', 'Directory::Employee', '631-3099', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '561', 'Directory::Employee', '631-1847', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '562', 'Directory::Employee', '631-1298', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '563', 'Directory::Employee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '565', 'Directory::Employee', '631-5636', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '566', 'Directory::Employee', '631-9036', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '568', 'Directory::Employee', '631-6489', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '573', 'Directory::Employee', '631-3940', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '572', 'Directory::Employee', '631-2472', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '571', 'Directory::Employee', '574 631-4036', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '575', 'Directory::Employee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '609', 'Directory::Employee', '631-3282', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '607', 'Directory::Employee', '631-7845', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '584', 'Directory::Employee', '631-0876', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '582', 'Directory::Employee', '631-5252', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '612', 'Directory::Employee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '585', 'Directory::Employee', '631-6654', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '576', 'Directory::Employee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '579', 'Directory::Employee', '631-8136', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '580', 'Directory::Employee', '631-2447', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '591', 'Directory::Employee', '631-4037', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '616', 'Directory::Employee', '631-6495', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '581', 'Directory::Employee', '631-7790', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '587', 'Directory::Employee', '631-0899', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '590', 'Directory::Employee', '631-5724', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '593', 'Directory::Employee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '594', 'Directory::Employee', '631-4566', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '595', 'Directory::Employee', '631-9097', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '596', 'Directory::Employee', '631-5685', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '597', 'Directory::Employee', '631-6121', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '598', 'Directory::Employee', '631-4039', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '599', 'Directory::Employee', '631-9445', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '600', 'Directory::Employee', '631-8727', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '601', 'Directory::Employee', '631-4329', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '602', 'Directory::Employee', '631-6318', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '603', 'Directory::Employee', '631-2987', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '604', 'Directory::Employee', '631-1566', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '605', 'Directory::Employee', '631-9820', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '606', 'Directory::Employee', '631-8569', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '608', 'Directory::Employee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '610', 'Directory::Employee', '631-9269', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '611', 'Directory::Employee', '631-1856', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '613', 'Directory::Employee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '614', 'Directory::Employee', '631-2938', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '615', 'Directory::Employee', '631-8291', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '617', 'Directory::Employee', '631-1546', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '618', 'Directory::Employee', '631-9931', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '619', 'Directory::Employee', '631-7313', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '620', 'Directory::Employee', '631-9038', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '621', 'Directory::Employee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '622', 'Directory::Employee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '624', 'Directory::Employee', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactPhone', '81', 'Directory::Employee', '574 850-6208', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '1', 'Directory::OrganizationalUnit', '631-5252', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '90', 'Directory::OrganizationalUnit', '631-6258', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '4', 'Directory::OrganizationalUnit', '631-5252', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '6', 'Directory::OrganizationalUnit', '631-6361', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '100', 'Directory::OrganizationalUnit', '631-5252', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '17', 'Directory::OrganizationalUnit', '631-4036', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '26', 'Directory::OrganizationalUnit', '631-6257', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '101', 'Directory::OrganizationalUnit', '631-3353', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '32', 'Directory::OrganizationalUnit', '631-3092', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '34', 'Directory::OrganizationalUnit', '574 631-3940', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '35', 'Directory::OrganizationalUnit', '631-3009', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '38', 'Directory::OrganizationalUnit', '631-6350', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '98', 'Directory::OrganizationalUnit', '631-5252', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '42', 'Directory::OrganizationalUnit', '631-6318', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '44', 'Directory::OrganizationalUnit', '631-7278', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '71', 'Directory::OrganizationalUnit', '631-4273', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '60', 'Directory::OrganizationalUnit', '631-4566', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '62', 'Directory::OrganizationalUnit', '631-6260', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '86', 'Directory::OrganizationalUnit', '631-1086', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '91', 'Directory::OrganizationalUnit', '631-6258', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '97', 'Directory::OrganizationalUnit', '631-5252', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '106', 'Directory::OrganizationalUnit', '631-3558', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '105', 'Directory::OrganizationalUnit', '631-2871', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactPhone', '114', 'Directory::OrganizationalUnit', '631-7437', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactFax', '1', 'Directory::OrganizationalUnit', '631-6772', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactFax', '4', 'Directory::OrganizationalUnit', '631-6772', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactFax', '11', 'Directory::OrganizationalUnit', '631-6367', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactFax', '100', 'Directory::OrganizationalUnit', '631-6772', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactFax', '17', 'Directory::OrganizationalUnit', '631-8273', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactFax', '18', 'Directory::OrganizationalUnit', '631-4422', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactFax', '19', 'Directory::OrganizationalUnit', '631-6308', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactFax', '26', 'Directory::OrganizationalUnit', '631-6772', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactFax', '32', 'Directory::OrganizationalUnit', '631-6772', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactFax', '33', 'Directory::OrganizationalUnit', '631-9208', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactFax', '39', 'Directory::OrganizationalUnit', '631-9662', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactFax', '44', 'Directory::OrganizationalUnit', '631-9660', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactFax', '71', 'Directory::OrganizationalUnit', '631-6312', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactFax', '62', 'Directory::OrganizationalUnit', '631-8887', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '1', 'Directory::OrganizationalUnit', 'http://libstaff.library.nd.edu/administration/director/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '2', 'Directory::OrganizationalUnit', 'http://libstaff.library.nd.edu/isda/index.shtml', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '90', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '4', 'Directory::OrganizationalUnit', 'http://libstaff.library.nd.edu/administration/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '10', 'Directory::OrganizationalUnit', 'https://libstaff.library.nd.edu/lib_only/rcs/index.shtml', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '11', 'Directory::OrganizationalUnit', 'http://bic.library.nd.edu/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '100', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu/about/departments/adminoff/index.shtml', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '17', 'Directory::OrganizationalUnit', 'https://wiki.nd.edu/display/libmonacq/Monographic+Acquisitions', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '18', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu/preservation/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '19', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu/rarebooks/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '26', 'Directory::OrganizationalUnit', 'https://wiki.nd.edu/display/libcolldev/Collection+Development+Department', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '120', 'Directory::OrganizationalUnit', 'http://library.nd.edu/business', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '101', 'Directory::OrganizationalUnit', 'http://library.nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '32', 'Directory::OrganizationalUnit', 'http://library.nd.edu/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '33', 'Directory::OrganizationalUnit', 'http://engineering.library.nd.edu/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '34', 'Directory::OrganizationalUnit', 'https://wiki.nd.edu/display/libdcns/Home', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '35', 'Directory::OrganizationalUnit', 'https://wiki.nd.edu/display/libersa/Home', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '38', 'Directory::OrganizationalUnit', 'http://libstaff.library.nd.edu/monitors/index.shtml', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '39', 'Directory::OrganizationalUnit', 'http://architecture.library.nd.edu/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '98', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '42', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu/circulation/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '119', 'Directory::OrganizationalUnit', 'http://library.nd.edu/chemistry/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '44', 'Directory::OrganizationalUnit', 'http://mathematics.library.nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '71', 'Directory::OrganizationalUnit', 'http://vrc.library.nd.edu/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '60', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu/stacks/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '62', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu/ill/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '86', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu/about/departments/digital-library.shtml', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '91', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu/reference', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '103', 'Directory::OrganizationalUnit', 'https://wiki.nd.edu/display/libersa/Home', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '97', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '96', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '102', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '104', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '1003', 'Directory::OrganizationalUnit', 'https://wiki.nd.edu/display/libcap/Home', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '1004', 'Directory::OrganizationalUnit', 'https://wiki.nd.edu/display/libltd/Home', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '1005', 'Directory::OrganizationalUnit', 'https://wiki.nd.edu/display/libelf/Home', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '1035', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu/diversity/index.shtml', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '1083', 'Directory::OrganizationalUnit', 'http://committees.nd.edu/committees-a-z/university-council-for-academic-technologies-ucat', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '1048', 'Directory::OrganizationalUnit', 'https://wiki.nd.edu/display/liborientation/Home', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '1054', 'Directory::OrganizationalUnit', 'http://www.nd.edu/%7Estaffcou/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '1055', 'Directory::OrganizationalUnit', 'https://wiki.nd.edu/display/libelect', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '1056', 'Directory::OrganizationalUnit', 'https://wiki.nd.edu/display/libpdc/Home', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '1062', 'Directory::OrganizationalUnit', 'http://library.nd.edu/ucl/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '1078', 'Directory::OrganizationalUnit', 'http://libstaff.library.nd.edu/committees/swg/index.shtml', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '1079', 'Directory::OrganizationalUnit', 'http://www.nd.edu/~aleph/upgrade/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '1084', 'Directory::OrganizationalUnit', 'http://libstaff.library.nd.edu/committees/libfac/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '1090', 'Directory::OrganizationalUnit', 'http://libstaff.library.nd.edu/committees/INlightarchives.shtml', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '1123', 'Directory::OrganizationalUnit', 'http://wiki.nd.edu/x/FACXAQ', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '1103', 'Directory::OrganizationalUnit', 'http://committees.nd.edu/committees-a-z/software-committee', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '1114', 'Directory::OrganizationalUnit', 'https://wiki.nd.edu/display/libsuscom/', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at, primary_method) 
	VALUES ('Directory::ContactWebpage', '1118', 'Directory::OrganizationalUnit', 'https://wiki.nd.edu/display/libebooks/Home', now(), now(), 1);
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactWebpage', '6', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu/about/departments/building-services.shtml', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactWebpage', '10', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu/rcs/', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactWebpage', '17', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu/acquisitions/', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactWebpage', '26', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu/about/departments/coll_dev.shtml', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactWebpage', '34', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu/about/departments/dcns.shtml', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactWebpage', '35', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu/ards/', now(), now());
INSERT INTO directory_contact_informations (type, contactable_id, contactable_type, contact_information, created_at, updated_at) 
	VALUES ('Directory::ContactWebpage', '38', 'Directory::OrganizationalUnit', 'http://www.library.nd.edu/about/departments/building-services.shtml', now(), now());
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
	VALUES ('550', '15', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('572', '23', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('123', '25', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('206', '26', now(), now());
INSERT INTO directory_selector_subjects (employee_id, subject_id, created_at, updated_at) 
	VALUES ('230', '27', now(), now());
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
