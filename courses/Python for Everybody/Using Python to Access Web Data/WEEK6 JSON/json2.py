import json
import urllib

# input = '''
# [
#   { "id" : "001",
#     "x" : "2",
#     "name" : "Chuck"
#   } ,
#   { "id" : "009",
#     "x" : "7",
#     "name" : "Chuck"
#   }
# ]'''

while True:
    url = raw_input('Enter location:')
    if len(url) < 1:
        print 'entry a valid url!'
        continue
    sum = 0
    print 'Retrieving ',url
    uh = urllib.urlopen(url)
    input = uh.read()
    info = json.loads(input)
    print 'Count:', len(info['comments'])

    for item in info['comments']:
        sum = sum + int(item['count'])

    print 'sum:',sum