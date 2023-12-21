import pytest
from calculator import add

def test_add():
    assert add(5, 3) == 8
