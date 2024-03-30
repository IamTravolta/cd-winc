# from flask import lib

# def test_power():
#     assert lib.power(2, 2) == 4
#     assert lib.power(2, 3) == 8


# test_app.py

from lib import power

def test_power():
    assert power(2, 2) == 4
    assert power(2, 3) == 8