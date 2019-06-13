SET FOREIGN_KEY_CHECKS = 0; 
TRUNCATE table visit_type; 
TRUNCATE table visit;
TRUNCATE table patient;
TRUNCATE table doctor;
SET FOREIGN_KEY_CHECKS = 1;

-- INSERT FOR VISIT TYPE TABLE
INSERT INTO `eclinic`.`visit_type` (`name`) VALUES ('Check');
INSERT INTO `eclinic`.`visit_type` (`name`) VALUES ('Allergies');
INSERT INTO `eclinic`.`visit_type` (`name`) VALUES ('Therapy');
INSERT INTO `eclinic`.`visit_type` (`name`) VALUES ('Surgery');
INSERT INTO `eclinic`.`visit_type` (`name`) VALUES ('Regular examination');

-- INSERT FOR DOCTOR TABLE
INSERT INTO `eclinic`.`doctor` (`first_name`, `last_name`, `email`, `born_at`) VALUES ('Pera', 'Peric', 'pperic@bolnica.local', '1977-11-11');
INSERT INTO `eclinic`.`doctor` (`first_name`, `last_name`, `email`, `born_at`) VALUES ('Laza', 'Lazic', 'llazic@bolnica.local', '1977-11-12');
INSERT INTO `eclinic`.`doctor` (`first_name`, `last_name`, `email`, `born_at`) VALUES ('Mika', 'Mikic', 'mmikic@bolnica.local', '1977-11-13');
INSERT INTO `eclinic`.`doctor` (`first_name`, `last_name`, `email`, `born_at`) VALUES ('Zivan', 'Zivanovic', 'zzivanovic@bolnica.local', '1977-11-14');
INSERT INTO `eclinic`.`doctor` (`first_name`, `last_name`, `email`, `born_at`) VALUES ('Todor', 'Todorovic', 'ttodorovic@bolnica.local', '1977-11-15');

-- INSERT FOR PATIENT TABLE
INSERT INTO `eclinic`.`patient` (`first_name`, `last_name`, `born_at`, `email`, `contact_phone`, `doctor_id`) VALUES ('Radomir', 'Radomirovic', '1978-11-11', 'rradomirovic@home.local', '+38160000001', '1');
INSERT INTO `eclinic`.`patient` (`first_name`, `last_name`, `born_at`, `email`, `contact_phone`, `doctor_id`) VALUES ('Uros', 'Urosevic', '1978-11-12', 'uurosevic@home.local', '+38160000002', '2');
INSERT INTO `eclinic`.`patient` (`first_name`, `last_name`, `born_at`, `email`, `contact_phone`, `doctor_id`) VALUES ('Ivan', 'Ivanovic', '1978-11-13', 'iivanovic@home.local', '+38160000003', '3');
INSERT INTO `eclinic`.`patient` (`first_name`, `last_name`, `born_at`, `email`, `contact_phone`, `doctor_id`) VALUES ('Djuka', 'Djukic', '1978-11-14', 'djukadjukic@home.local', '+38160000004', '4');
INSERT INTO `eclinic`.`patient` (`first_name`, `last_name`, `born_at`, `email`, `contact_phone`, `doctor_id`) VALUES ('Bogdan', 'Bogdanovic', '1978-11-15', 'bbogdanovic@home.local', '+38160000005', '5');
INSERT INTO `eclinic`.`patient` (`first_name`, `last_name`, `born_at`, `email`, `contact_phone`, `doctor_id`) VALUES ('Ivica', 'Ivic', '1978-11-16', 'iivic@home.local', '+38160000006', '1');
INSERT INTO `eclinic`.`patient` (`first_name`, `last_name`, `born_at`, `email`, `contact_phone`, `doctor_id`) VALUES ('Radovan', 'Radovanovic', '1978-11-17', 'rradovanovic@home.local', '+38160000007', '2');
INSERT INTO `eclinic`.`patient` (`first_name`, `last_name`, `born_at`, `email`, `contact_phone`, `doctor_id`) VALUES ('Aleksandar', 'Aleksandrovic', '1978-11-18', 'aaleksandrovic@home.local', '+38160000008', '3');
INSERT INTO `eclinic`.`patient` (`first_name`, `last_name`, `born_at`, `email`, `contact_phone`, `doctor_id`) VALUES ('Aleksa', 'Aleksic', '1978-11-19', 'aaleksic@home.local', '+38160000009', '4');
INSERT INTO `eclinic`.`patient` (`first_name`, `last_name`, `born_at`, `email`, `contact_phone`, `doctor_id`) VALUES ('Djura', 'Djuric', '1978-11-20', 'djuradjuric@home.local', '+38160000010', '5');

-- INSERT FOR VISIT TABLE
INSERT INTO `eclinic`.`visit` (`title`, `description`, `visited_at`, `patient_id`, `visit_type_id`) VALUES ('First check', 'First check', '2018-09-01', '1', '1');
INSERT INTO `eclinic`.`visit` (`title`, `description`, `visited_at`, `patient_id`, `visit_type_id`) VALUES ('Regular check', 'Second check', '2018-09-02', '2', '1');
INSERT INTO `eclinic`.`visit` (`title`, `description`, `visited_at`, `patient_id`, `visit_type_id`) VALUES ('Knee surgery', 'Broken knee surgery', '2018-09-03', '3', '4');
INSERT INTO `eclinic`.`visit` (`title`, `description`, `visited_at`, `patient_id`, `visit_type_id`) VALUES ('Testing on allergies', 'Pollen allergy', '2018-09-04', '4', '2');
INSERT INTO `eclinic`.`visit` (`title`, `description`, `visited_at`, `patient_id`, `visit_type_id`) VALUES ('Antibiotics therapy', 'Flu', '2018-09-05', '5', '3');
INSERT INTO `eclinic`.`visit` (`title`, `description`, `visited_at`, `patient_id`, `visit_type_id`) VALUES ('Second check', 'Second check', '2019-01-04', '1', '1');
INSERT INTO `eclinic`.`visit` (`title`, `description`, `visited_at`, `patient_id`, `visit_type_id`) VALUES ('Check on stomach pain', 'Stomach pain', '2019-01-05', '2', '1');
INSERT INTO `eclinic`.`visit` (`title`, `description`, `visited_at`, `patient_id`, `visit_type_id`) VALUES ('Arm surgery', 'Broken elbow', '2019-01-06', '3', '4');
INSERT INTO `eclinic`.`visit` (`title`, `description`, `visited_at`, `patient_id`, `visit_type_id`) VALUES ('Allergy test', 'Dust', '2019-01-07', '4', '2');
INSERT INTO `eclinic`.`visit` (`title`, `description`, `visited_at`, `patient_id`, `visit_type_id`) VALUES ('Antibiotics therapy', 'Fever', '2019-01-08', '5', '3');

