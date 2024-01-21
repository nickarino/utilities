# test_app.py
import unittest
from app import calculate_area

class TestAreaCalculation(unittest.TestCase):
    def test_square_area(self):
        result = calculate_area(4)
        self.assertEqual(result, 16)