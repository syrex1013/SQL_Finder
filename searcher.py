from google import google
num_page = input('Enter number of google pages to search: ')
query = raw_input('Enter query: ')
search_results = google.search(query, num_page)
for result in search_results:
	with open("scraped.txt", "a") as myfile:
    		myfile.write(result.link+"\n")
