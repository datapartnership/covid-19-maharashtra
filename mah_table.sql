CREATE TABLE MH_DATA_v1
WITH
(
     partitioned_by = ARRAY['location_dt']
     ) 
     as SELECT
  *
     FROM outlogic_proj_data_v1
WHERE ISO_REGION='IN-MH'
AND location_dt > CAST('2021-07-01' AS DATE) and location_dt < CAST('2021-07-31' AS DATE)

