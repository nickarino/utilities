import numpy as np

def kelly_criterion(p: float, b: float, q: float) -> float:
    """
    p: probability of winning
    b: payout ratio
    q: probability of losing
    """
    return (b * p - q) / b

# Test case
def test_kelly_criterion():
    assert np.isclose(kelly_criterion(0.6, 2, 0.4), 0.2)

test_kelly_criterion()