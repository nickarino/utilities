* Simple Moving Average Crossover

SimpleMovingAvg(Length = 9) crosses above SimpleMovingAvg(Length = 20)

* Exponential Moving Average Crossover

MovAvgExponential(Length = 9) crosses above MovAvgExponential(Length = 20)

* Close Over Simple Moving Average

Close() > SimpleMovingAvg(Length = 200)

* Close Over Exponential Moving Average

Close() > MovAvgExponential(Length = 200)

* Heavy Volume

Volume() > (Average(Volume,14)[1] * 2)

ATR Stop

low < (close[1] – ATR()[1])

ATR Profit

high > (close[1] + ATR()[1] * 2)    