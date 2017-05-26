# Comp3100 SecTrainDev
Sec-Training
(The purpose of this product)

Common Setup:
  1. Install Mysql and setup the databases: existing tables here:
  2. Setup the AMI for the new virtual machine
  3. Check the keyfile path in the code: Selection.java and path on server or local if the SSH connection needs the keyfile

Database Setup:
```  Database: "account"
  +-------------------+  
  | Tables_in_account |
  +-------------------+
  | challenge         |
  | token             |
  | usergrade         |
  | userinfo          |
  +-------------------+
  
  Table: "challenge"
  +----------+-------------------+
  | username | challenge         |
  +----------+-------------------+
  | aaaaa    | M8 Path traversal |
  | test     | M8 Path traversal |
  +----------+-------------------+
  
  Table: "token"
  +---------------------------------+-------+-----------------------------+
  | token                           | score | challenge                   |
  +---------------------------------+-------+-----------------------------+
  | flag{0ff3nsiVE_cY6eR_0pERAT1oN} |     5 | M1 Authentication bypasses  |
  | flag{5Th_H1D0en_h3rE}           |     5 | M2 XXE                      |
  | flag{Aa3Nc0DE_I5_gR3@t}         |     5 | M5 RCE – EL interpolation   |
  | flag{an0n5m@0s}                 |     5 | M4 RCE – XSL extensions     |
  | flag{awy8GkY00}                 |     5 | NULL                        |
  | flag{b1oL0l#gY}                 |     5 | NULL                        |
  | flag{c$m@t3ry}                  |     5 | NULL                        |
  | flag{c1_1eM5trY}                |     5 | NULL                        |
  | flag{CaN_u_5OIuE_This_Pr08l3m}  |     5 | M8 Path traversal           |
  | flag{d3@t&_m3t@l}               |     5 | NULL                        |
  | flag{ed23gP9V}                  |     5 | NULL                        |
  | flag{fe$&a1}                    |     5 | NULL                        |
  | flag{FFys12is}                  |     5 | NULL                        |
  | flag{gE0_Gr@pHy}                |     5 | NULL                        |
  | flag{h15toR1Ca1}                |     5 | NULL                        |
  | flag{i5fe&n0}                   |     5 | NULL                        |
  | flag{Mu5iC_!s_@mA2INg}          |     5 | NULL                        |
  | flag{p0L1tIc_S}                 |     5 | NULL                        |
  | flag{pg69hr5f}                  |     5 | NULL                        |
  | flag{ys98yaaFG}                 |     5 | NULL                        |
  +---------------------------------+-------+-----------------------------+
  
  Table: "usergrade"
  +------------+-------+
  | username   | score |
  +------------+-------+
  | aaaaa      |    40 |
  | admin%20   |     0 |
  | newuser123 |     5 |
  | pitch      |     0 |
  | dfj        |     0 |
  | test       |     5 |
  +------------+-------+
  
  Table: "userinfo"
  +------------+-------------+
  | username   | password    |
  +------------+-------------+
  | aaaaa      | 11111       |
  | admin%20   | password    |
  | newuser123 | password123 |
  | pitch      | 1234567890  |
  | dfj        | password    |
  | test       | test        |
  +------------+-------------+
```
Environment Setup for localhost:
  1. Install the IntelliJ
  2. Install the IDE for tomcat server in IntelliJ
  
Environment Setup for server:
  1. Setup the main server on AWS
  2. Install the tomcat in the main server
  
To build:
  1. Menu: File > Project Structure > Artifacts
  2. Click the green + icon and create a "Web Application: Archive", then OK
  3. Menu: Build > Build Artifacts ... > Web: war
  By default it should generate it under your <project>/out/artifacts/web_war.war
  
To run on localhost:
  Just click the run button in IntelliJ
  
To run on the AWS:
  1. upload the .war file to the main server
  2. put it into the tomcat server's directory: /webapps

[This link](https://github.com/u5454208/Comp3100/blob/master/document/Technologies%20in%20SecTrainDev.txt) Technologies in STD
