influx -database 'digitalhhz2' -execute "SELECT temperature, illuminance, occupancy FROM digitalhhz2.autogen.mqtt_consumer WHERE occupancy = 1 OR occupancy = 0 AND time <= '2022-03-24T05:40:02Z' and time >= '2022-02-22T05:40:02Z'  AND topic='DHHZ/024/EntryArea/Motion1'"  -format csv > influxData.csv
