# Note - this code must run in Python 2.x and you must download
# http://www.pythonlearn.com/code/BeautifulSoup.py
# Into the same folder as this program

import urllib
from BeautifulSoup import *

url = raw_input('Enter URL: ')
html = urllib.urlopen(url).read()
soup = BeautifulSoup(html)

count = raw_input('Enter count: ')
position = raw_input('Enter position: ')

# Retrieve all of the anchor tags
tags = soup('a')
for i in range(int(count)):
    url = tags[int(position)-1].get('href', None)
    print 'Retrieving: ',url
    html = urllib.urlopen(url).read()
    soup = BeautifulSoup(html)
    tags = soup('a')
