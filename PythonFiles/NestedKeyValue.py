def getKey(obj: dict):
    keys = list(obj)
    if len(keys) == 1:
        return keys[0]
    
def getKeyValue(obj: dict, key: str):
    if ((key in obj.keys())) :
        if type(obj[key]) is dict:
            return getKeyValue(obj[key], getKey(obj[key]))
        else:
            return obj[getKey(obj)]
    else:
        nestedKey = getKey(obj)
        return getKeyValue(obj[nestedKey], key)

if __name__ == '__main__':
    obj = {'a': {'b': {'c': 'd'}}}
    value = getKeyValue(obj, 'c')
    print("Value is : ", value)
    
if __name__ == '__main__':
    obj = {'x': {'y': {'z': 'a'}}}
    value = getKeyValue(obj, 'z')
    print("Value is : ", value)