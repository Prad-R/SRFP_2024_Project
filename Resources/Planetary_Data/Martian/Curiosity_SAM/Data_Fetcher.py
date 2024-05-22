import requests as req
from bs4 import BeautifulSoup as BS
import re # regex
import os # for making directories

session = req.Session()
retry = req.packages.urllib3.util.retry.Retry(total = 5, backoff_factor = 0.1, status_forcelist = [500, 502, 503, 504])
req.adapters.HTTPAdapter(max_retries = retry)

url = "https://pds-geosciences.wustl.edu/msl/msl-m-sam-2-rdr-l0-v1/mslsam_1xxx/data/"
response = session.get(url)

if response.status_code == 200:
    soup = BS(response.content, 'html.parser')

    links = soup.find_all('a')
    eid_regex = re.compile(r'eid\d{5}')

    eid_links = []

    for link in links:
        href = link.get('href')

        if href and re.search(eid_regex, href):
            eid_links.append(href)
else:
    print(f"Failed to retrieve the webpage. Status code: {response.status_code}")

print("Obtained EID Links")

level_2_links = []

for eid_link in eid_links:
    eid_url = "https://pds-geosciences.wustl.edu" + eid_link
    eid_response = session.get(eid_url)

    if eid_response.status_code == 200:
        eid_soup = BS(eid_response.content, 'html.parser')

        links = eid_soup.find_all('a')
        level_2_regex = re.compile(r'/level2')
        level_2 = False
        
        for link in links:
            href = link.get('href')
            
            if href and re.search(level_2_regex, href):
                level_2_links.append(href)
                level_2 = True

        if not level_2:
            level_2_links.append("NO_LEVEL_2_DATA")
    else:
        print(f"Failed to retrieve the webpage. Status code: {response.status_code}")

print("Obtained Level 2 Links")

csv_links = []

for level_2_link  in level_2_links:
    if level_2_link == "NO_LEVEL_2_DATA":
        continue
    else:
        level_2_url = "https://pds-geosciences.wustl.edu" + level_2_link
        level_2_response = session.get(level_2_url)

    if level_2_response.status_code == 200:
        level_2_soup = BS(level_2_response.content, 'html.parser')

        links = level_2_soup.find_all('a')
        csv_regex = re.compile(r'qms_atmcomp_\d{1}.csv$')
        csv = False

        for link in links:
            href = link.get('href')

            if href and re.search(csv_regex, href):
                csv_links.append(href)
                csv = True

        if not csv:
            csv_links.append("NO_ATMCOMP_CSV_DATA")
    else:
        print(f"Failed to retrieve the webpage. Status code: {response.status_code}")

print("Obtained CSV Links")
        
csv_links_full = []

for csv_link in csv_links:
    if csv_link == "NO_ATMCOMP_CSV_DATA":
        continue
    else:
        csv_links_full.append("https://pds-geosciences.wustl.edu" + csv_link)

for csv_link_full in csv_links_full:
    eid_name = re.compile(r'eid\d{5}')
    dir_name = re.findall(eid_name, csv_link_full)[0] # re.findall() returns an array
    os.mkdir(dir_name)

    csv_response = session.get(csv_link_full)
    file_content = csv_response.content
    file_name_regex = re.compile(r'sm\d{5}.*$')
    file_name = re.findall(file_name_regex, csv_link_full)[0]

    with open(r'./' + dir_name + r'/' + file_name, 'wb') as file:
        file.write(file_content)