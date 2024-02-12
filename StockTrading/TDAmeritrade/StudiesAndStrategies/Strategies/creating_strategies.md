# Creating Strategies

* You CANNOT programmatically add a script to a "Added Studies and Strategies" area, like "Price", "Volume", "Lower", and "Lower".  You must assign them manually. But, once they are assigned and you change the script, then the changes are picked up.
* You cannot programattically get a list of all your orders.

<https://youtu.be/6sF39ekh16U?list=PLezJ3flwsE4dWV4ykg16z6TSvuIhbv2kz&t=170>

* It starts with [AddOrder](https://tlc.thinkorswim.com/center/reference/thinkScript/Functions/Others/AddOrder) and the order types

Certainly! Here's the previous answer formatted in Markdown:

---

In ThinkScript, which is used within the ThinkorSwim platform, there are several order types that traders can use within their scripts, particularly when defining conditions for automated trading strategies. Here's an explanation of the order types you've mentioned: [Here is another explanation from treyding](https://youtu.be/6sF39ekh16U?list=PLezJ3flwsE4dWV4ykg16z6TSvuIhbv2kz&t=251)

1. **BUY_AUTO**: This is a generic buy order used in strategies. It doesn't specify whether the buy order is for opening a new position or for covering a short position. **It's generally used in scripting for backtesting and strategy development, where the distinction between opening and closing a position is not critical.**

2. **SELL_AUTO**: Similar to BUY_AUTO, this is a generic sell order used in strategies for either exiting a long position or entering a short position. It's typically used in scripting for strategy testing where the specifics of opening or closing a position are not the main focus.

3. **BUY_TO_OPEN**: This order type is used when you want to initiate a new long position. Essentially, it's used to buy a security that you don't currently hold in your portfolio. For example, if you're bullish on a stock and want to go long, you would use a BUY_TO_OPEN order.

4. **SELL_TO_CLOSE**: This order type is used to close out an existing long position. If you own a security and want to sell it, you would use a SELL_TO_CLOSE order. It's the standard way to exit a long position.

5. **SELL_TO_OPEN**: This is used to initiate a new short position. In this case, you're selling a security you don't currently own with the intention of buying it back later (hopefully at a lower price). It's a less common strategy for retail investors but is used in various trading approaches, especially for hedging or speculation.

6. **BUY_TO_CLOSE**: This order type is used to close out or cover a short position. If you have previously sold a security short (meaning you borrowed and sold it with the intention of buying it back at a lower price), you use a BUY_TO_CLOSE order to buy back the security and close the short position.

It's important to note that while these order types can be specified in ThinkScript for strategy testing and development, actual order execution and management are handled through the ThinkorSwim trading platform interface, not directly within ThinkScript.

# Settings

* **Global Settings** This is where you set the number of trades that can happen while your buy condition is true and the number of contracts for that order, unless you override it in the ```AddOrder``` function.

![Global Settings](./md_file_assets/GlobalSettings.png)

# When does ```AddOrder``` get triggered?

* It gets triggered when the candle is done for that increment--the smallest being 1 min: the close of the candle. 

* By default, it buys at open[-1] but instead we are going to buy at the close of the candle instead of at the open of the next candle.  It may or may not be a big deal depending on the increment.

# Export your strategy as a CSV

![Export as CSV](./md_file_assets/exportAsCSV.png)

# Add FloatingPL shows if strategy is up or down

* You can add the FloatingPL to your lower list of strategies OR you can make a [setup script](./StudiesAndStrategies/Setup/FloatingPL_setup.thinkscript)

