import sys,json,pandas
print pandas.DataFrame(json.load(sys.stdin)['resultValues']).to_csv(index=False, encoding='utf-8')
