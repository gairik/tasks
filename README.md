# Task 1

This script is designed to perform three tasks on directories:

1. Locate directories containing a file named ".prune-enable."
2. Delete any "crash.dump" files in those directories.
3. Replace large ".log" files with the last 2 lines in each file.

## Running the Script

To run the script, follow these steps:

1. Make sure you have Docker installed on your system.

2. Clone or download the project repository to your local machine.

3. Navigate to the project directory containing the script and start.sh.

4. Run the script inside a Docker container using the provided start.sh script:

   ```bash
   ./start.sh

# Task 2

This script sends a GET request to an API and filters programs meeting specific criteria.

## Prerequisites

Before running the script, make sure you have Python installed on your system.

## Running the Script

To run the script, follow these steps:

1. Clone or download the project repository to your local machine.

2. Open a terminal and navigate to the project directory containing the script (app.py) and the start script (start.sh).

3. Ensure that the API endpoint URL is correctly set in the app.py script. By default, the script is configured to work with "http://localhost:8000/". If you want to use a different API endpoint, update the `url` variable in app.py accordingly.

4. Run the script using the provided start.sh script:

   ```bash
   ./start.sh

# Task 3

This script serves JSON data from a file using a FastAPI web server.

## Prerequisites

Before running the script, make sure you have Docker installed on your system.

## Running the Script

To run the script, follow these steps:

1. Clone or download the project repository to your local machine.

2. Ensure that the "fact.json" file contains the JSON data you want to serve. You can customize the "fact.json" file to include your own data.

3. Open a terminal and navigate to the project directory containing the script (app.py), the Dockerfile, and the start script (start.sh).

4. Build the Docker image and run the Docker container using the provided start.sh script:

   ```bash
   ./start.sh
