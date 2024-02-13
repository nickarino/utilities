import unittest

def moving_average(data, window_size):
    """
    Calculate the moving average for a given data set and window size.
    
    Parameters:
        data (list): List of numerical data points.
        window_size (int): Number of intervals to consider for the moving average.
    
    Returns:
        list: List of moving averages.
    """
    moving_averages = []
    for i in range(len(data) - window_size + 1):
        window = data[i:i + window_size]
        average = sum(window) / window_size
        moving_averages.append(average)
    return moving_averages

class TestMovingAverage(unittest.TestCase):
    def test_moving_average(self):
        data = [1, 2, 3, 4, 5]
        window_size = 3
        expected_result = [2, 3, 4]
        self.assertEqual(moving_average(data, window_size), expected_result)

if __name__ == '__main__':
    unittest.main()
