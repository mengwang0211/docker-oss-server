1.如果db文件损坏,请使用oss1.1.sql重建数据库
2.数据库建好后,修改applicatio.properties配置文件中的jdbc连接地址,SQLIte是数据库url使用full-path
3.替换oss-server-1.1.jar中application.properties配置文件
4.运行 java -jar oss-server-1.1.jar