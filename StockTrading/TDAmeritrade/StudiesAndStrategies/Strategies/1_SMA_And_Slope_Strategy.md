# Single SMA slope strategy

* If the slope of the N day SMA is > X per timeframe then buy and if it is less < Y per timeframe then short the stock.

```
for timeframe constant in MIN, TWO_MIN, THREE_MIN, FOUR_MIN, FIVE_MIN, TEN_MIN, FIFTEEN_MIN, TWENTY_MIN, THIRTY_MIN, HOUR, TWO_HOURS, FOUR_HOURS, DAY

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

# Research
* Nested Folds
  * https://usethinkscript.com/threads/nested-fold-function-debugging.15685/#post-126268
  * https://usethinkscript.com/threads/largest-gain-range-since-uptrend.2418/#post-135368
  * https://usethinkscript.com/threads/workaround-for-passing-a-variable-to-fold.15791/#post-126717 


# Try RSI, MACD, time of day with and without distribution, news, volume,


# Thinkscript Research
* https://tlc.thinkorswim.com/center/reference/thinkScript/Reserved-Words/switch

* https://chat.openai.com/share/dcc733bb-e17c-498a-b288-fc1e7cacf7d8