CREATE TABLE 
GEOCODED_MH_OUTLOGIC_V1
WITH
(
     partitioned_by = ARRAY['location_dt']
     ) 
AS
SELECT b.name AS district,
  obfuscated_advertiser_id,
  platform,
  location_at,
  local_location_at,
  latitude,
  longitude,
  altitude,
  horizontal_accuracy,
  vertical_accuracy,
  heading,
  speed,
  user_agent,
  publisher_id,
  wifi_ssid,
  wifi_bssid,
  carrier,
  device_model,
  location_dt
FROM MH_DATA_v1
  CROSS JOIN boundaries AS b
WHERE ST_Contains(ST_GeometryFromText(b.coordinates),ST_POINT(longitude,latitude)) 
AND ISO_REGION='IN-MH'
