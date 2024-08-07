
# BLUF

* Since options just allow more leverage, then we first trade just the stock and later add options.
* Delta - a delta of 50% means ( that the option will move 50% of whatever the underlying stock moved).
* As a general rule of thumb, I would go with an option that is at-the-money or one in-the-money [- 50-90% of Stock options expire worthless](../../../stock_trading_notes.md#meta-stock-ideas)
* You are looking for more volatility while having plenty of volume.  
* Volume and open interest. The volume (number of options traded) and open interest (the number of held contracts) should be very high, in at least the thousands. This means that there are a lot of people who are participating in the trading of these options, meaning we increase our likelihood of our order being filled quickly.
* [The first and last hour of the day are usually the most volatile but also it can vary per stock.  See Volatility Definition](../../../stock_trading_notes.md#important-definitions)
* Volatility usually brings volume. And volume reduces the bid-ask spread of the option.
* Time Interval - I have found that a 2-minute chart works best for this strategy as it provides a good balance of high-fidelity, short-term information while smoothing out the variance of micro-fluctuations in the stock that are not indicative of a larger trend.

* [Started with this article on Scalping](https:/ /medium.com/@nicknikravesh/a-foolproof-strategy-to-make-money-day-trading-no-really-7896e365fd40)
  * [He does have a repo on technical analysis but it is 3 years old](https://github.com/nikolas-nikravesh/technical-analysis-tool)

# [Article in Medium by Nikravesh](https://medium.com/@nicknikravesh/a-foolproof-strategy-to-make-money-day-trading-no-really-7896e365fd40)

* Trading is like any other skill that takes time. The people who are looking to get rich quick and don’t want to put the work in to learn the market and the skills are the ones who lose money.
* On 12/16/23 I signed up for https://trade.thinkorswim.com via Ameritrade and used PaperMoney.  This involves real-time data.  This is better than back-testing because back-testing can be subject to hindsight bias, where you only test your theory on situations that you believe will prove the strategy.
* <ins>When day trading, you should only bet what you are willing to lose completely. Don’t bet the farm.</ins>
* If you choose to day trade, you will need at least $25,000 in your brokerage order to avoid any penalties associated with being a [Pattern Day Trader](https://www.investopedia.com/terms/p/patterndaytrader.asp). (6 trades a day)
* What we will be doing is technically labeled [scalping](https://www.investopedia.com/articles/trading/05/scalping.asp). Scalping is a form of day trading in which you profit off of very small movements of a stock over the course of a couple seconds, minutes, or hours (usually not hours)
* **Volatility** The first hour of the day is the most volatile time of the day in the market. Volatility usually brings volume. And volume reduces the bid-ask spread of the option.
* <ins>When selecting options, there is no one right choice, but there is a wrong choice.</ins>
* For example, <ins> a delta of 50% means that the option will move 50% of whatever the underlying stock moved.</ins> While delta is a somewhat complicated concept, what is important to us is that it’s high, at least 30% but preferably much higher. This is usually found with in-the-money options. As a general rule of thumb, I would go with an option that is at-the-money or one in-the-money.
* **Date of expiration**. The longer the date of expiration, the more expensive the option. Choose one that is expiring within a week (but not the same day). Since we’re going in and out on the same day, we don’t need to buy longer out options as that will only cost us more.
* **Time Interval** I have found that a 2-minute chart works best for this strategy as it provides a good balance of high-fidelity, short-term information while smoothing out the variance of micro-fluctuations in the stock that are not indicative of a larger trend.
* The overarching theme that we are aiming to uncover by using these indicators is momentum
* As it turns out, it may be hard to predict where a stock will go in a few hours, days, or years, but it is pretty easy to predict where a stock will go in a few minutes.
* 5–8–13 Simple Moving Average (SMA) OR 3,6,9 for tesla. Do those numbers look familiar? They are fibonacci numbers. **The idea is that you superimpose the 5, 8, and 13 <ins>DAY</ins> (could use MIN, 5MIN...)--bar SMA lines on top of the stock you are trading. When all three of these lines are in agreement, it indicates that the stock has momentum in that direction. Conversely, a disagreement indicates that the momentum is not strong or is shifting.**
![Sample Image](../../md_file_assets/Nikravesh1.png)
* Ideally, choose options that are at-the-money or in-the-money, with high volume and open interest, a narrow bid-ask spread, and expiring within a week.
* Choosing the right price is important. As a scalper, you want to be able to get in and out of trades as quickly as possible. In order to do that, your best bet is to buy at the ask price and sell at the bid price. The caveat is that you will lose money if you try to buy and sell an option without a positive change in the price of the premium, so keep that in mind.<ins> Minimizing this spread is key to maximize profits and minimize risk.</ins>
* Trend of underlying stock. This one is easy, if the stock is going up, we want to buy a CALL, if it’s going down, we want to buy a PUT.
* You should always have a STOP loss in place in the case of sudden volatile movements. As the price goes up, adjust your STOP loss up so that you may retain profits by selling if the price starts to drop.
* Use your judgement. The strategy is designed to help inform your judgement, not to be applied blindly. Watch the stock, watch how it moves. Use your judgement if there is a disagreement between the technicals and the movement of the stock.
* Keep in mind the trading fees. On ThinkOrSwim, this is $0.65 per option you buy or sell. If you buy 30 options, that $19.50 to buy, and another $19.50 to sell. This means you must clear $40 in your trade just to break even. You pay this whether you win or lose the trade.
* Keep a running tab of your taxes owed. If you’re like me and you want to use this money for fun, make sure you’re keeping track of how much you’ll owe Uncle Sam at the end of the year for your capital gains.

# ChatGPT summmary 

* Technical Indicators: The strategy uses Simple Moving Averages (SMAs) and the Moving Average Convergence Divergence (MACD) to identify momentum and make trading decisions.
* 5-8-13 SMA: These Fibonacci sequence numbers are used for SMAs. When these lines agree in their direction, it indicates strong momentum.
* Trading Advice: The strategy emphasizes quick entry and exit from trades, suggesting buying at the ask price and selling at the bid price. It also advises on setting stop-loss orders to manage risk.
* Volume of Trades: To increase profits, it suggests increasing the number of contracts rather than the risk level.
* Judgment and Fees: The strategy should support, not replace, your judgment. It also reminds traders to account for trading fees and taxes on capital gains.
To replicate this strategy in ThinkOrSwim, you would need to:
* Set up 2-minute interval candlestick charts.
* Apply the 5-8-13 SMAs and MACD indicators to the charts.
* Practice identifying the patterns and signals described using the PaperMoney feature.
Follow the guidelines for selecting options and managing trades.

# Strategies for Scalping

* [watch the RSI and Vix](https://www.youtube.com/watch?v=AVIGYXcbeas) getting in and out quickly.  See her log links in.  She uses a 30 second chart. 

## Gap strategies

* 
