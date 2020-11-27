from nsetools import Nse
from pprint import pprint

nse = Nse()

# print(nse.get_fno_lot_sizes())
pprint(nse.get_quote('RIL'))
# pprint(nse.get_top_fno_gainers())
