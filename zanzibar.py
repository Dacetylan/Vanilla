import math
import pandas as pd
from datetime import datetime, date, timedelta
from meteostat import Point, Hourly

today = datetime.now()
yesterday = today - timedelta(days = 1)

zanzibar = Point(-6.1639, 39.1979)

data = Hourly(zanzibar, yesterday, today)
data = data.fetch()

rel_humidity = data['rhum'].loc[data.index[0]]
temp = data['temp'].loc[data.index[0]]
abs_humidity =round((rel_humidity*6.112*2.1674*math.e**((temp*17.67)/(temp+243.5))/(temp+273.15)), 2)

#print(rel_humidity, temp)
print(abs_humidity)
