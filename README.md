# Software Company Database Project

This project involves setting up a MySQL database for a software development company managing projects for various clients. The database includes tables for clients, projects, employees, team members, and project teams. It also includes views, functions, stored procedures, and triggers to manage and query the data.

## Files

- `create_database.sql`: Script to create the database.
- `create_tables.sql`: Script to create the necessary tables.
- `insert_data.sql`: Script to insert sample data into the tables.
- `queries.sql`: Script containing various queries to interact with the database.
- `views.sql`: Script to create views.
- `functions.sql`: Script to create functions.
- `procedures.sql`: Script to create stored procedures.
- `triggers.sql`: Script to create triggers.

## Setup

### Requirements

- MySQL Server
- MySQL Workbench
- Visual Studio Code

### Steps to Setup in Visual Studio Code

1. **Install MySQL Server and Workbench:**
   - Download and install [MySQL Server](https://dev.mysql.com/downloads/mysql/) and [MySQL Workbench](https://dev.mysql.com/downloads/workbench/).

2. **Install MySQL Extension in VS Code:**
   - Open Visual Studio Code.
   - Go to the Extensions view by clicking the Extensions icon in the Activity Bar on the side of the window or by pressing `Ctrl+Shift+X`.
   - Search for "MySQL" and install the "MySQL" extension by Jun Han.

3. **Set Up MySQL Connection in VS Code:**
   - Open the MySQL extension in VS Code.
   - Add a new connection by providing the required connection details (hostname, port, username, password).
   - Save the connection.

4. **Run SQL Scripts:**
   - Open the `create_database.sql` file in VS Code.
   - Right-click inside the editor and select "Run MySQL Query".
   - Repeat this step for the `create_tables.sql`, `insert_data.sql`, `queries.sql`, `views.sql`, `functions.sql`, `procedures.sql`, and `triggers.sql` files to execute all scripts.

### Steps to Setup in MySQL Workbench

1. **Open MySQL Workbench.**
2. **Connect to your MySQL server instance.**
3. **Execute Scripts:**
   - Open the SQL Editor tab.
   - Copy and paste the contents of `create_database.sql` and execute.
   - Repeat for `create_tables.sql`, `insert_data.sql`, `queries.sql`, `views.sql`, `functions.sql`, `procedures.sql`, and `triggers.sql`.

## Usage

### Running Queries

1. **Open the `queries.sql` file in VS Code or MySQL Workbench.**
2. **Execute individual queries or the entire file to interact with the database.**

### Creating and Managing Views, Functions, Procedures, and Triggers

1. **Open the respective SQL files (`views.sql`, `functions.sql`, `procedures.sql`, `triggers.sql`).**
2. **Execute the scripts to create views, functions, procedures, and triggers in the database.**

## Conclusion

By following the steps above, you will set up and manage a MySQL database for a software development company using Visual Studio Code and MySQL Workbench. This project includes various database objects such as tables, views, functions, procedures, and triggers to handle and query the data efficiently.
