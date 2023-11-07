import requests

# Define the API endpoint URL
#url = "https://example.com/api/v1/programs"
url = "http://localhost:8000/"

def filter_and_print_programs(programs):
    # Initialize counters
    total_programs = 0
    filtered_programs = 0

    # Loop through the programs
    for program in programs:
        total_programs += 1
        if program["plus_only"] and int(program["rating"]) <= 16:
            print("Program Name:", program["name"])
            filtered_programs += 1

    # Print the total programs found and how many met the criteria
    print("Total Programs Found:", total_programs)
    print("Programs Meeting Criteria:", filtered_programs)

def main():
    try:
        # Send a GET request to the API
        response = requests.get(url)

        # Check if the request was successful
        if response.status_code == 200:
            # Parse the JSON response
            programs = response.json()
            
            # Call the function to filter and print programs
            filter_and_print_programs(programs)
        else:
            print(f"Error: Unable to fetch data from the API. Status code: {response.status_code}")
    except requests.exceptions.RequestException as e:
        print(f"Error: Request to the API failed. {e}")

if __name__ == "__main__":
    main()
