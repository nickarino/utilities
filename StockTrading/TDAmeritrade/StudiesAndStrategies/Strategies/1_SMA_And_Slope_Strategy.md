# Single SMA slope strategy

* If the slope of the N day SMA is > X per timeframe then buy and if it is less < Y per timeframe then short the stock.

```
for timeframe constant in MIN, TWO_MIN, THREE_MIN, FOUR_MIN, FIVE_MIN, TEN_MIN, FIFTEEN_MIN, TWENTY_MIN, THIRTY_MIN, HOUR

for N between 3 and 20
   calculate sma = SMA(N)
   
   for slope_ between .5,1,1.5,2

   if slope(sma) > slope_ then buy
     calculate cost of purchase
     if you are making money, hold
     if you lose 10%, sell. 

   if slope(sma) < slope_ then short



# Define inputs
input length = 20;

# Reference daily close
def dailyClose = close(period = "day");

# Calculate moving average based on daily data
def ma = Average(dailyClose, length);

# Plot the moving average on the lower time frame chart
plot MA = ma;
```

# Try RSI, MACD, time of day with and without distribution, news, volume,
