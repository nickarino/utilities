# Single SMA slope strategy

## Principles

* As the length of your period for your SMA increases, the smoothness of the graph increases. 

## References

* [SMA Study](../Studies/hackStudies/SMA.md)

## Interesting Points

* In Wolfram there are about 10 different moving average functions: MovingAverageConvergenceDivergence,MovingAverageConvergenceDivergenceHistogram,SimpleMovingAverage,HullMovingAverage,DoubleExponentialMovingAverage,ExponentialMovingAverage,WeightedMovingAverage,VariableMovingAverage,TriangularMovingAverage,TripleExponentialMovingAverage,MovingAverageEnvelopes, and WildersMovingAverage.

## Process

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

# Relationship between the timeframe chosen and the aggregation period of the SMA

Yes, the timeframe and aggregation period are indeed relative to one another, and the choice between them can affect the smoothness and sensitivity of the moving average curve. Here are some general guidelines:

1. **Longer Timeframes for Aggregation Periods:** A moving average will generally be smoother if you use a longer aggregation period relative to your chart's timeframe because it averages out more data points. If you are viewing a 1-minute chart and use a 5-minute moving average, the curve will be smoother than a 1-minute moving average because it considers more data points.

2. **Multiples of the Timeframe:** It's a common practice to choose aggregation periods that are multiples of the base timeframe. For example, if you're looking at a 1-minute chart, you might use a 5, 10, or 15-minute moving average. This ensures that each point on the moving average represents a fixed number of periods of the underlying chart, reducing noise and making trends easier to spot.

3. **Aggregation Less Than Timeframe:** If the aggregation period is less than the chart's timeframe, the moving average will react more quickly to price changes, but this scenario is less common because it can lead to a very noisy average that might not be very useful.

4. **Consistency and Non-Overlap:** For a smoother moving average, ensure that the aggregation periods do not overlap from one point to the next. For instance, with a 1-hour chart, a 2-hour moving average would overlap, but a 4-hour moving average would not, leading to a smoother curve.

5. **Experimentation and Context:** The best settings can depend on the trading context (e.g., day trading vs. swing trading) and the volatility of the stock. It may be necessary to experiment with different combinations to find the one that best suits your trading strategy and the market conditions.

In summary, for a smoother moving average curve that is less sensitive to individual price changes, choose an aggregation period that is a multiple of the chart's timeframe, ensuring there's no overlap between the periods used to calculate successive points on the moving average. This method averages out more data for each point and reflects a broader view of price movements, filtering out short-term volatility.

# Research
* Nested Folds
  * https://usethinkscript.com/threads/nested-fold-function-debugging.15685/#post-126268
  * https://usethinkscript.com/threads/largest-gain-range-since-uptrend.2418/#post-135368
  * https://usethinkscript.com/threads/workaround-for-passing-a-variable-to-fold.15791/#post-126717 


# Try RSI, MACD, time of day with and without distribution, news, volume,


# Thinkscript Research
* https://tlc.thinkorswim.com/center/reference/thinkScript/Reserved-Words/switch

* https://chat.openai.com/share/dcc733bb-e17c-498a-b288-fc1e7cacf7d8