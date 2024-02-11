# Certainly! Let's walk through the Python lifecycle of the provided file:

# 1. **Module Import**: When you run this Python script, the interpreter begins by importing any necessary modules. In this case, the script imports the `random` module, which is used for generating random numbers.

# 2. **Function Definitions**: After importing modules, the Python interpreter moves to the function definitions in the script. Here, it defines two functions:
#    - `coin_toss()`: This function simulates a single coin toss, returning either 'Heads' or 'Tails'.
#    - `monte_carlo_coin_toss(num_trials)`: This function performs a Monte Carlo simulation of a specified number of coin tosses (`num_trials`) and returns the counts of heads and tails.

# 3. **Main Execution**: The interpreter then checks if the `__name__` variable is equal to `"__main__"`, indicating that the script is being run directly, not imported as a module. Since this condition is true, the following code in the main section is executed:
#    - `num_trials = 10000`: This sets the number of trials for the Monte Carlo simulation.
#    - `heads_count, tails_count = monte_carlo_coin_toss(num_trials)`: This line invokes the `monte_carlo_coin_toss()` function with the specified number of trials and assigns the counts of heads and tails returned by the function to variables `heads_count` and `tails_count`.

# 4. **End of Execution**: Once the main section finishes executing, the Python script terminates.

# So, when you run this Python file, it will simulate the specified number of coin tosses, print out the counts of heads and tails, and calculate and print the probabilities of heads and tails.

import random

def coin_toss():
    """Simulate a coin toss."""
    return random.choice(['Heads', 'Tails'])

def monte_carlo_coin_toss(num_trials):
    """Perform Monte Carlo simulation of coin toss."""
    heads_count = 0
    tails_count = 0

    for _ in range(num_trials):
        result = coin_toss()
        if result == 'Heads':
            heads_count += 1
        else:
            tails_count += 1
    
    return heads_count, tails_count

if __name__ == "__main__":
    num_trials = 10000
    heads_count, tails_count = monte_carlo_coin_toss(num_trials)
    print(f"After {num_trials} trials:")
    print(f"Heads: {heads_count}")
    print(f"Tails: {tails_count}")
    print(f"Probability of Heads: {heads_count / num_trials}")
    print(f"Probability of Tails: {tails_count / num_trials}")

