# Website for a Proteomics Research Facility

## Description

This repository contains a python-based web application built using the Flask framework, which interacts with a mariaDB database using SQLAlchemcy. The app allows facility users to submit samples to the facility and track their progress. The app allows facility staff to summarize quarterly income, income sources, and other usage data such as experiment types, sample-prep time, data-analysis time.  

This app reflects the pricing scheme of the facility for which it was written. This facility accepts three main types fo request:  

- samples requiring processing before injecting on to a mass spectrometer
- samples ready to inject on to a mass spectrometer
- data analysis requests, usually involving some bespoke programming  

Consequently, the app is built to record and calculates prices for four different activities:  
 - benchwork
 - instrument time
 - searching .raw files against databases (usually, but not exclusively, linked to instrument time)
 - advanced analysis  

 Within bench, instrument and database searching there are sub-categories with a set number of minutes associated. Costs are calculated by multiplying sub-category minutes against the price-per-minute for the bench, instrument and database-searching activities. In other words, the facility does not charge per injection, per minute of instrument time or per hour of benchwork as you might (reasonably) expect. Knowing this is imperative for understanding the complex structure of the app. Advanced analysis is charged per hour. Finally, prices are adjusted according to the type of user making the request:  
 - Internal (same university - extra discount applied to users with early-originating grants)
 - Other university
 - Industry  

This app is sectioned into different membership areas. The front pages have no access requirements. Other  pages require either User, Finance or Admin privileges, for which a detailed explanation is given in the accompanying tutorial.  
<br>

## Flask Application Structure
![](./app_structure_2024.png)

## Database structure  
The database tables are created in models.py.  
models.py contains a few import commands, two wrappers for flask_login functions used in routes.py and then the tables.   
Note that some tables autofill with 2024 committee settings. Reinitiating DB will revert subsequent additions to 2024 settings unless changed in models.py.
  
### Tables:  
**acquisition** : doesn't feature in app. included in anticipation of future requirement to set choices and/or prices to reflect different mass spec methods.  
**bench_hours**  : 1ry key 'key1'. No frgn key. Addition of bench hours in app affects only this table.   
**bench_methods**  : 1ry key 'bench_method'. No frgn key. @event.listens_for fills table with committee 2024 decision on minutes per method. Admins can add extra methods.    
**data_request** : 1ry key 'key 1'. Records users requests for bespoke data analysis, programming hours in-facility, plus spare columns for when Mike changes his mind.   
**expenses_summary** : 1ry key 'key1'. Frgn key 'key1' to experiment_request.key1.   
**experiment_request** : 1ry key 'email'. Frgn key 'key1' to users.email. Records meta-info for user requests. Initiating request triggers python function that fills downstream tables.  
**institute_type**  1ry key 'institute_type'. No frgn key. @event.listens_for fills table with 3 types w 3 price adjustments. No option for addition type but can change price adjustments.  
**instrument_data_methods**  
**instrument_details**  1ry key 'key1'. Frgn key 'key1' to experiment_request.key1. Filled by admin to show what methods, washes a sample was subject to on the instrument.  
**instruments**  doesn't feature in app. included in anticipation of future requirement to set choices for instruments.   
**price_per_min**  1ry key 'activity'. No frgn key. @event.listens_for fills table w 3 activities w 3 price settings. No option for addition activity but can change price adjustments.  
**pwds**  table structure pre-set by flask_login requirements. 'id' column must exist, must be primary key, autoincrements. Relates to Users 'user_id' column. Pwds contains wrapper for password reset.  
**sample_details**  1ry key 'key1'. Frgn key 'key1' to experiment_request.key1. Records in-facility benchwork, number instrument-injections generated (may be different from user-anticipated injections)  
**sample_request**  1ry key 'key1'. Frgn key 'key1' to experiment_request.key1. Records detailed info for user requests involving samples.  
**species**  1ry key 'species'. No frgn key. Accepts admin additions. Creates dropdown list for users to select database in expt request form.  
**users**  1ry key 'email', not user_id. Contains user info. User_id is requirement of flask_login. Autoincrement removed; setting manually w function in routes.py prevents asynchronicity w regist'n and login user-numbers.   
<br>  

### Keys and information levels:  
There are three information levels in this database which need to be uniquely identified:  
 - the USER  
 - the EXPERIMENT (one user, many experiments)
 - the SAMPLE  (one experiment, many samples)  

Although there is a user-id columns in the User and Pwds tables, the primary key for users is their **email address**.  
Different users may want to choose the same experiment code, so the primary key for experiments is **email*exptcode**. This is refered to as **key1**.  
Different users may also use the same sample codes, though a unique-within-experiment restriction applies. The primary key for samples is **email\*exptcode*samplecode**. This is referred to as **key2**.   
  <br>  

## Prerequisites

Before you continue, ensure you have met the following requirements:  
- you are using a Linux machine running Ubuntu 22.04 or similar, to which you have root access.
- you have installed MariaDB, and have permission to create and delete databases
- you have installed python version 3.10.6 or later
- you have installed conda version 23.1.0 or later (www.anaconda.com/download/)
- you have an understanding of Python, SQL, HTML, Flask, Jinja and Javascript. 
- you have installed all the required dependencies
- you have a gmail address (for following the local config and building examples below)
- For remote access, Filezilla must be installed ans configured appropriately. You will need full permissions for directories in the above structure. 
<br>
<br>

## Installation for running locally  


### Dependencies

See 'environment_Dec2024_from_test_env.yml' in this repository. Version numbers for flask, sqlalchemy, pandas, numpy, wekzeug (at least, probably more) are critical.  
<br>  

### Configuration  

You will need to create a local virtual environment using the "environment_Dec2024_from_test_env.yml" file in the repository.  

Clone this repository by navigating to your desired directory and typing the following into a terminal window:  

```
$ git clone https://github.com/cimr-proteomics/facility_website.git  
```

Make sure the 'environment_Dec2024_from_test_env.yml' file is in your current directory. The 'requirements.txt' file contains the correct versions of packages required to build most of the virtual environment. Create a virtual conda environment. In the below example, the environment is called "flask_env":

```
$ conda create --name flask_env --file environment_Dec2024_from_test_env.yml
```

Emails, usernames, hostnames, databasenames, passwords and filepaths must be configured to your local and/or remote requirements. 

For local deployment, you must change all the email settings to a gmail address that you can access and get a app password from gmail. See <strong>support.google.com/mail/answer/185833?hl=en-GB</strong> for help on generating an app password. 

Emails, usernames, hostnames, databasenames, passwords and filepaths are defined in the following locations:
<br>  
&emsp; in '_ _ init.py _ _':
```
if hostname == "mylocalhostname":
	app.config['MAIL_SERVER']="smtp.gmail.com"
	app.config['MAIL_PORT'] = 465
	app.config['MAIL_USERNAME'] = "mygmailaddress@gmail.com"
	app.config['MAIL_PASSWORD'] = "my_gmail_app_password"  
    app.config['MAIL_USE_TLS'] = False
	app.config['MAIL_USE_SSL'] = True

```  

<br> 
&emsp; in 'models.py':  

```
@event.listens_for(Users.__table__, 'after_create')
def create_admin(tbl, conn, **kw):
     conn.execute(tbl.insert().values(user_id=[1], first_name='myFirstName', last_name='myLastName', email='myGmailAddress@gmail.com',  access_level='ADMIN', position='PI/Project_Lead', group_id='myGmailAddress@gmail.com', institute_name='Lawrence Berkeley National Laboratory', institute_type='Other Academia', grant_codes=['LBNL/00'], grant_years=['2020'], time_registered=datetime.now(), authenticated=0))
```
<br>  
&emsp; in 'routes.py':

```
if hostname == "mylocalhostname":
	db_url = 'mysql+pymysql://myusername:mypassword@localhost/mylocaldatabase' 
	email1 = 'mygmailaddress@gmail.com'
	local_path_start = 'my_root_dir/app/groups/'
	path_finance = f'/{local_path_start}/proteomics_finance'
	if not os.path.isdir(path_finance):
		os.mkdir(path_finance)
```  
<br>
&emsp; in 'config.py':  

```  
	if hostname == "mylocalhostname":  # Local development
		SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://myusername:mypassword@localhost/mylocaldatabase'
```  
<br>  
Make sure the above examples are filled in as per your personal settings.  
<br>  
<br>  

## Building  

Once the environment is set up and configured, set up the database:  

If you have not already installed mariaDB, you can do so as follows (root access required):  

```
$ sudo apt install mariadb-client mariadb-server  
```  
You will then need to create a username, with the IP address of the server from which you will connect and your desired password. You will also need to grant yourself appropriate priviledges:  

```  
CREATE USER 'username'@'hostname' IDENTIFIED BY 'password';  
CREATE USER 'username'@'%' IDENTIFIED BY 'supersecretpassword';  
GRANT choose_priv_type ON choose_priv_level TO 'username'@'hostname';
FLUSH PRIVILEGES;  
```   
Next, create the database of whatever name you chose above e.g. mylocaldatabase in another terminal window.    
  
```  
$ mariadb -u myusername -p 
$ ***enter password***
MariaDB [(none)]> DROP DATABASE IF EXISTS mylocaldatabase;
MariaDB [(none)]> CREATE DATABASE mylocaldatabase;
MariaDB [(none)]> USE mylocaldatabase;  
```  
  
**If you want to load the dummy database provided** then exit MariaDB [Ctrl+D] and run:  
  
```  
$ mariadb -u myusername -p mylocaldatabase < dummy_db_mashup.sql  
$ ***enter password***  
```  


In order to initialise the database and load the app, set the FLASK_APP environment variable and reactivate the environment, then navigate to the root directory.  

```  
(flask_env) myusername@localhost:~/root_dir$ conda activate flask_env
(flask_env) myusername@localhost:~/root_dir$ conda env config vars set FLASK_APP=flaskdefinition.py
To make your changes take effect please reactivate your environment
(flask_env) myusername@localhost:~/root_dir$ conda activate flask_env  
(flask_env) myusername@localhost:~/root_dir$ cd app
``` 

**If you are not using the dummy database**, you will need to initialise the database from models.py. This can be done in two ways.  
Most simply:  

```  
(flask_env) myusername@localhost:~/root_dir$ flask shell  
>>> from app import db, models  
>>> db.drop_all()
>>> db.create_all() 
```  
Alternatively, if you get errors about working outside of the app context:  

```  
(flask_env) myusername@localhost:~/root_dir$ python  
>>> from app import app
>>> from flask import current_app  
>>> ctx = app.app_context()  
>>> ctx.push()  
>>> from app import db, models
>>> db.drop_all()
>>> db.create_all()  
[Ctrl+D]
```  
'local_path_start_groups' and 'local_path_start_facility' (38, 39 in routes.py) must pre-exist.  
Load the app, db and db structure, switch to debug mode, then initialise the database (unless you are already using the dummy database): 
  
```  
(flask_env) myusername@llocalhost:~/root_dir/app$ export FLASK_DEBUG=1
(flask_env) myusername@llocalhost:~/root_dir/app$ flask run  
```  

**Now when you enter 'http://localhost:5000/' into your browser address bar, you should find yourself at the main home page of the CIMR proteomics facility website**  
<br>
  
## Testing 

A dummy database and tutorial has been provided in this repository. The web app involves different access levels to different pages, with different page views inherited depending on the access level of the current user. It is important to test that all plots and finance spreadsheets are showing correctly, can be downloaded and retrieved from the appropriate folder. It is recommended to familiarise yourself with the web app by following the tutorial. I can't guarantee every example in the tutorial will work as given - you may have to substitute your own example requests. Nonetheless, it is more than sufficient to discover all the features of this web app. The individuals mentioned in the tutorial refer to staff members of the facility for whom I wrote this app, in case you're wondering. 
<br>  

## Remote Deployment  
I have not been personally responsible for remote deployment of this app, and have not written a wsgi file, so forgive my brevity here.  
  
**Variable and filepath changes**
Local vs Remote deployment is controlled by 'if...else' statement in __init\__.py (lines 21 - 35), config.py (lines 9 - 12) and routes.py (lines 23-70). The local and remote names will need changing as per the reader's requirements.  
'local_path_start_groups' and 'local_path_start_facility' paths (60, 61) must exist and contain the described subdirectories(see tree structure at top).  
Set email1 (facility email), authorised_for_data_signoff (facility bioinformatician) and authorised_for_instrument_signoff (facility manager) as appropriate.  

**Accessing downloaded files, uploading files to the group data areas:**  
No upload mechanism has been written into the app, intentionally. Facility staff copy results files into the relevant group's 'recent data' directories using Filezilla. Files are automatically transferred to 'old data' directories after 8 weeks. After 3 months, files are automatically deleted. Manual intervention is required if the server runs out of space before then. Files downloaded from Facility Stats and Finances pages go the self-named folders in the 'facility' directory; all finance and admin staff will need appropriate permissions. 
The **injection lists** folder contains text files, listed by owner initials and expt code, of all injections associated with an experiment. This folder should be visible on the desktop of all mass spec instrument computers, to facilitate correct file naming by facility staff.  

**Deployment as a update to a previous app version**  
<em>Users</em> and <em>Pwds</em> table structure have been kept the same in all version of this app. The creation of group directories and their subdirectories is dependent on a user logging in, not on registering and setting their password. Therefore any existing User and Pwd information should be easily to transfer. It is recommended that the group directory structure is started anew with every new version of the app, once users have been given the opportunity to download any relevant data files. 


## Code style and standards  

This webapp uses:  SQL, SQLalchemy, python, jinja2, javascript and html.  

RESTful APIs are used frequently throughout routes.py to transfer user-expt keys, and other dictionary keys, between pages. Retrospectively, using JSON, JQuery and AJAX would have been appropriate in some, circumstances but I didn't know about this until later, hence the heavy reliance on RESTful APIs.  

There is no CSS file to go with this app; styles are mostly written into the <style></style> section of the base templates for External, User and Finance/Facility pages that are inherited by the other hmtl pages. Occasionally, style formats will be specified inline on the hmtl page.  

Javascript functions are found in the <script></script> sections in the relevant html pages; there si no external javascript file.  

I have not used any nameable python code standard in routes.py, other than keep it as pythonic as I can within the remit of my experience and not to have too many characters per line.  

Database queries make use of the SQLalchemy Object Relational Mapper (ORM) in the app. The only exception to this is in the 'facility_stats_2' function where raw sql queries are combined with the pandas 'read_sql_query' method. The relationships between these tables may seem very basic to an SQLAlchemy user. I knew only rudimentary SQL and no SQLAlchemy when I started this. But it's just enough for it to work. An experienced web-developer may well want to change the relationship structures! 

## Contribution Guidelines  

This webapp and database was written during a fixed-term contract by a novice programmer who's prior experience in web development consisted of a single, static page of html that showed an image of a greenfinch. It's a heroic effort in relative terms but in the absolute terms through which user-experience should be viewed, there's scope for improvement. Please take a look at the CONTRIBUTIONS.md file for more details.  

## License information  

This app was published in December 2024 by Harriet Parsons, under a GNU General Public License. 

## Contributors and acknowledgements  

This app was written by Harriet Parsons (github.com/tempeparsons) with contributions from Tim Stevens (github.com/tjs23), who wrote the function for addition/deletion of rows in the request form, introduced me to javascript via the cascading dropdown menus found throughout the app, and explained to me the basics of jinja templating, RESTful APIs and wrapper functions. 
<br>  
I would like to acknowledge all those who completed the testing protocol, as well as Nic Mitchell and Jonathan Wilson for enabling the remote hosting of this webapp. Finally, I would like to thank Tim for giving the moral and technical support I needed for completing such a technically advanced task as a novice programmer with no prior web-development experience.  






