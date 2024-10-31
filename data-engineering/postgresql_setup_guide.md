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

_______________________________________________________________________________
