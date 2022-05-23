Creating a table with the Hive partition
CREATE EXTERNAL TABLE `unpart_test_2`(
  `obfuscated_advertiser_id` string, 
  `platform` string, 
  `location_at` bigint, 
  `local_location_at` binary, 
  `latitude` double, 
  `longitude` double, 
  `final_country` string, 
  `iso_region` string, 
  `altitude` double, 
  `horizontal_accuracy` double, 
  `vertical_accuracy` double, 
  `heading` double, 
  `speed` double, 
  `user_agent` string, 
  `publisher_id` string, 
  `wifi_ssid` string, 
  `wifi_bssid` string, 
  `carrier` string, 
  `device_model` string)
PARTITIONED BY ( 
  `location_dt` date)
  STORED AS PARQUET
LOCATION
  's3://outlogic-data-bucket/unpartitioned_outlogic_sample';

