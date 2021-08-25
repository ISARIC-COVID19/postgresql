\cd :isaric_data_dir/
\COPY demographics FROM 'DM.csv' DELIMITER ',' CSV HEADER NULL ''
\COPY disposition FROM 'DS.csv' DELIMITER ',' CSV HEADER NULL ''
\COPY healthcare_encounters FROM 'HO.csv' DELIMITER ',' CSV HEADER NULL ''
\COPY inclusion_exclusion_criteria FROM 'IE.csv' DELIMITER ',' CSV HEADER NULL ''
\COPY treatments_and_interventions FROM 'IN.csv' DELIMITER ',' CSV HEADER NULL ''
\COPY microbiology_specimen FROM 'MB.csv' DELIMITER ',' CSV HEADER NULL ''
\COPY disease_response_and_clinical_classification FROM 'RS.csv' DELIMITER ',' CSV HEADER NULL ''
\COPY clinical_and_adverse_events FROM 'SA.csv' DELIMITER ',' CSV HEADER NULL ''
\COPY subject_visits FROM 'SV.csv' DELIMITER ',' CSV HEADER NULL ''
\COPY vital_signs FROM 'VS.csv' DELIMITER ',' CSV HEADER NULL ''

