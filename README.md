# Goal

Complete the following tasks

## Prerequisites

1.  Docker installed on your system.
2.  Python installed on your system.

# Task 1
Starting in the /opt directory ( I made the assumption that this means we need to only check in subdirectories of /opt)  
1. Locate directories containing a file named ".prune-enable."
2. Delete any "crash.dump" files in those directories.
3. Replace large ".log" files with the last 2 lines in each file.

A Dockerfile is create so that one can test the script and not change anything in the local system.
`task_1.sh` is the script that performs the goal of this task as described above.  

## Running the solution

To run the script, follow these steps:

1. Make sure you have Docker installed on your system.

3. Navigate to the project directory `task1/``.

4. Run the script:

   ```bash
   ./start.sh


# Task 3

This script serves JSON data from a file using a FastAPI web server.

## Running the Script

To run the script, follow these steps:

1. "fact.json" file contains the JSON contains sample data. You can customize the "fact.json" file to include your own data.

2. Open a terminal and navigate to the project directory `task3/`

3. Build the Docker image and run the Docker container using the provided start.sh script:

   ```bash
   ./start.sh

# Task 2

This script sends a GET request to an API and filters programs meeting specific criteria.

## Running the Script

To run the script, follow these steps:

1. Open a terminal and navigate to the project directory `task2/`.

2. Ensure that the API endpoint URL is correctly set in the app.py script. By default, the script is configured to work with "http://localhost:8000/". If you want to use a different API endpoint, update the `url` variable in app.py accordingly.

3. Run the script using the provided start.sh script:

   ```bash
   ./start.sh