# Comp3100 SecTrainDev
Sec-Training
(The purpose of this product)

Common Setup:
  1. Install Mysql and setup the databases: existing tables here:
  2. Setup the AMI for the new virtual machine
  3. Check the keyfile path in the code: Selection.java and path on server or local if the SSH connection needs the keyfile

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
