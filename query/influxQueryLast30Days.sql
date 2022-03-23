influx -database 'digitalhhz2' -execute "SELECT temperature, illuminance, occupancy FROM digitalhhz2.autogen.mqtt_consumer WHERE occupancy = 1 OR occupancy = 0 AND time <= '2022-03-23T13:20:02Z' and time >= '2022-02-21T13:20:02Z'  AND topic='DHHZ/024/EntryArea/Motion1'"  -format csv > influxData.csv
