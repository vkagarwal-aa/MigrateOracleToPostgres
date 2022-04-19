# MigrateOracleToPostgres
This repository is build to automate the process of migrating from Oracle to Postgres in Azure using Github actions.
The migration is set up by building a docker image.

## STEP-BY-STEP Process
### 1. Create Postgres Database server in Azure by running GitHub actions to run terraform scripts.
		a. Create DB Server
		b. Add Admin credentials
		c. Add firewall rules
		d. Allow access to azure services.
		e. Configure Time zone
		f. Configure replication 

### 2. Create Database
	
### 3. Build Schema
		
### 4. Export data from Oracle and Import in Postgres tables
[Manual Steps to setup ora2pg in local machine](documentation/dbmigration.md)

    Automation to Build docker image and run it to perform migration
        a. Create GitHub secrets to connect to Oracle DB hat need to be migrated
        b. Build Docker Image
        c. Run the image with input parameter
    


