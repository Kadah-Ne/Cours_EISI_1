import json
from os import path

filename = './employees.json'
listObj = []
employees1 = {"name":"Alice","age":35,"job":"dev","team":"front"}
employees2 = {"name":"Bob","age":34,"job":"market","team":"market"}

if path.isfile(filename) is False:
  raise Exception("File not found")

with open(filename) as fp:
  listObj = json.load(fp)

print(listObj)
print(type(listObj))
listObj.append(employees1)
listObj.append(employees2)
for i in listObj:
   if i['name'] == "Maxime" and  i['age'] == 36:
      listObj.remove(i)

 
with open(filename, 'w') as json_file:
    json.dump(listObj, json_file, 
                        indent=4,  
                        separators=(',',': '))
    

 
print('Successfully appended to the JSON file')
