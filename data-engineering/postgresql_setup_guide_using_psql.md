# PostgreSQL Setup Guide
_______________________________________________________________________________

### Step 1: Login to the PostgreSQL cli as the user called `postgres`

Think of the `postgres` user as the admin or root user that has full
permission to all the functionality in postgres

```
sudo -u postgres psql
```

You will be prompted for your system password and then your terminal prompt 
should look like this now:

```
postgres=#
```
_______________________________________________________________________________

You can run commands using the backslash `\` followed by a letter.
_______________________________________________________________________________

The first thing I recommend is to enable `expanded display mode` with
the following command:

```
\x
```

or 

```
\x auto
```

Auto will let the the cli choose what it thinks is the best output based 
on the data output;

This will format the output vertically, which will make it easier to read
things.
_______________________________________________________________________________

To see a list of avaiable databases:
```
\l
```
_______________________________________________________________________________

How to display the users and their

```
\du
```

_______________________________________________________________________________

To view more of these commands:

```
\?
```

_______________________________________________________________________________

To exit PostgreSQL, type this:
```
\q
```
_______________________________________________________________________________

### Step 2: Create a role (Think of this a user account)

Use this:
Please note, that the password must be something new.
It is a password for that specific user. It is NOT your system password.

Also pay attention to the quotes:
"Double quotes" for indentifiers like a role name.
'Single quotes' for string literals like a password.

```
CREATE ROLE "your-user-name" LOGIN PASSWORD 'think-of-a-password';
```

_______________________________________________________________________________

### Step 3: Give your user permission to create databases

ALTER ROLE "dezly-macauley" CREATEDB;

Login as the user and connect to the default postgres database
```
psql -U "dezly-macauley" -d postgres
```

To confirm that you are logged in as that user:

```
SELECT current_user;
```

_______________________________________________________________________________

### How to create a database

This is a database called `video-sales`
```
CREATE DATABASE "video-sales" OWNER "dezly-macauley";
```
_______________________________________________________________________________

### How to connect to a database

If you are already logged in as a user then do this:
```
\c name-of-database
```

If it is a new session then do this:

```
psql -U "dezly-macauley" -d video-sales
```

You should see a message that looks like this:

```
postgres=> \c video-sales
You are now connected to database "video-sales as user "dezly-macauley".
```

_______________________________________________________________________________

### How to delete a database

```
DROP DATABASE database_name;
```

_______________________________________________________________________________

### How to import a database

First make sure that you are in the same directory as the database
file is.

```
cd location-of-where-the--database-file-is
```
_______________________________________________________________________________

First create a name for the database, before importing it. 

```
CREATE DATABASE demo OWNER "dezly-macauley";
```

_______________________________________________________________________________

Confirm that the empty database was created.

```
\x
\l
```

_______________________________________________________________________________

Import the database file

The `-f` stands for file
The `-s` stands for echo (This will display the commands that are being 
executed during the import)

Note: This command should be run from your regular shell, and 
NOT the postgres interactive shell:
```
psql -U "dezly-macauley" -d "demo" -f ./mp_demo_data -e
```

_______________________________________________________________________________

To login to the import database

```
psql -U "dezly-macauley" -d "demo";
```

To confirm that you are logged as the correct user and connected to the 
correct database do the following.

```
\c
```

You should see a message like this:

You are now connected to database "demo" as user "dezly-macauley".

_______________________________________________________________________________

### How to view a list of the tables in a database

The `d` stands for describe

```
\d
```

An example of the output:
```
demo=> \d
                List of relations
 Schema |     Name      | Type  |     Owner
--------+---------------+-------+----------------
 public | bookmarks     | table | dezly-macauley
 public | categories    | table | dezly-macauley
 public | movies        | table | dezly-macauley
 public | users         | table | dezly-macauley
 public | users_archive | table | dezly-macauley
(5 rows)
```
_______________________________________________________________________________

### How to view the structure of a specific table in the database 

```
\d name-of-table 
```

E.g.

```
\d users
```

_______________________________________________________________________________

## SQL Queries

Display the entire table
```
select * from categories;
```
_______________________________________________________________________________

Display the first 3 items from a table

```
select * from categories limit 3;
```
_______________________________________________________________________________

select specific data from certain collumns

```
select * id, first_name from users limit 10;
```

_______________________________________________________________________________
