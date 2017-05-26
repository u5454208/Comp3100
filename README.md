# Comp3100
Sec-Training
(The purpose of this product)

Environment Setup for localhost:
  1. Install the IntelliJ
  2. Install the IDE for tomcat server in IntelliJ
  3. Install Mysql and setup the databases

Environment Setup for localhost:
  1. Setup the main server on AWS
  2. Install Mysql and setup the databases
  3. Setup the AMI for webbank app
  4. check the keyfile path in the code: Selection.java
  5. Install the tomcat in the main server
  
To build:
  1. Menu: File > Project Structure > Artifacts
  2. Click the green + icon and create a "Web Application: Archive", then OK
  3. Menu: Build > Build Artifacts ... > Web: war
  By default it should generate it under your <project>/out/artifacts/web_war.war
  
To run on localhost:
  Just click the run button in IntelliJ
  
To run on the AWS:
  1. upload the .war file to the main server
  2. put it into the tomcat server's directory
