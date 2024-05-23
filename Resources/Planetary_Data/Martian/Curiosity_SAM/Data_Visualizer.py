import matplotlib.pyplot as plt
import pandas as pd
import os # for operating on directories
import re # for regex

def extract_and_plot(root, file):
    path_to_file = os.path.join(root + r'/' + file)
    data = pd.read_csv(path_to_file)

    eid_regex = re.compile(r'eid\d{5}')
    eid = re.findall(eid_regex, path_to_file)[0].upper()

    columns = data.columns

    print("------------- Plotting ----------------- " + eid)

    plt.figure(figsize = (12, 9))
    plt.ioff()
    plt.barh(data[columns[0]], data[columns[1]], color = 'b', height = 0.4)
    plt.ylabel(columns[0] + "$\\longrightarrow$", fontsize = 15)
    plt.xlabel(columns[1] + "$\\longrightarrow$", fontsize = 15)
    plt.xticks([i/20 for i in range(21)])
    plt.grid()
    plt.title(eid, fontsize = 21)
    plt.savefig(root + '/' + eid + '.png')

for (root, dirs, files) in os.walk('.', topdown = True):
    file_regex = re.compile(r'sm\d{5}.*$')

    for file in files:
        if re.search(file_regex, file):
            extract_and_plot(root, file)

print("-------------- Plotted All ----------------")