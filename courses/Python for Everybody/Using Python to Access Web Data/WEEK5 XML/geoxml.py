import urllib
import xml.etree.ElementTree as ET

serviceurl = 'http://maps.googleapis.com/maps/api/geocode/xml?'

while True:
    url = raw_input('Enter location: ')
    if len(url) < 1 : break

    sum = 0
    print 'Retrieving', url
    uh = urllib.urlopen(url)
    data = uh.read()
    print 'Retrieved',len(data),'characters'
    tree = ET.fromstring(data)

    counts = tree.findall('.//count')
    print 'Count: ',len(counts)

    for item in counts:
        sum = sum + int(item.text)

    print 'Sum: ',sum

