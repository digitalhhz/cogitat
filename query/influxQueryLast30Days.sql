influx -database 'digitalhhz2' -execute "SELECT temperature, illuminance, occupancy FROM digitalhhz2.autogen.mqtt_consumer WHERE occupancy = 1 OR occupancy = 0 AND time <= '2022-03-28T17:40:03Z' and time >= '2022-02-26T17:40:03Z'  AND topic='DHHZ/024/EntryArea/Motion1'"  -format csv > influxData.csv
