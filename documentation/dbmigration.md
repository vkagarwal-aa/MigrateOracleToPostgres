## [Setting up Environment](https://ora2pg.darold.net/documentation.html)
1. [Download and Install Strawberry Perl](http://strawberryperl.com/)
2. [Download and Install Ora2PG](https://sourceforge.net/projects/ora2pg/)
3. [Download Oracle DB and Install](https://www.oracle.com/database/technologies/oracle-database-software-downloads.html#19c)
4. Setup environment variable with same value for LD_LIBRARY_PATH and ORACLE_HOME

## Installing Ora2Pg
    cd ora2pg-x.x/
    perl Makefile.PL
    gmake && gmake install

## Install DBD Oracle
    perl -MCPAN -e "install DBD::Oracle"
    perl -MCPAN -e shell
    cpan> get DBD::Oracle
    cpan> quit

## Build and install Make File
    perl Makefile.PL
    make
    make install

## Configuration of ora2pg.conf file to export SCHEMA
    Go to location C:\ora2pg_tool\ora2pg-22.1\
    
    Create project base directory and run this to create test project
            ora2pg --project_base  --init_project test_project
    
    Add the Oracle DB connection settings
    
    Edit the SCHEMA we would like to export
    
    Edit the export type - TYPE		TABLE, SEQUENCE, GRANT, TABLESPACE, TYPE, SYNONYM
            ora2pg -c config\ora2pg.conf

## Configuration of ora2pg.conf file to export data and import directly into Postgres SCHEMA Tables
    Edit the EXCLUDE when you want to run the INSERT export type to exclude large tables
    
    Edit the Postgres DB Configuration
    
    Command to run : ora2pg -c config\ora2pg.conf -t INSERT
    

