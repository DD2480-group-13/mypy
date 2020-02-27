sudo python3 -m pip install -U ../
echo ''
echo "!==========STARTED THE TESTS==========!"
echo ''
echo "==========TEST WITHOUT FLAG=========="
echo "EXPECTED PRINTS:"
cat mypy_expected_1.txt
echo "-------------------------------------"
echo 'ACTUAL PRINTS:'
mypy test-cases.py
mypy test-cases.py > mypy_actual_1.txt
echo "====================================="
echo ''
echo "======TEST WITH STRICT BOOL FLAG======"
echo "EXPECTED PRINTS:"
cat mypy_expected_2.txt
echo "-------------------------------------"
echo 'ACTUAL PRINTS:'
mypy test-cases.py --strict-bool
mypy test-cases.py --strict-bool > mypy_actual_2.txt
echo "====================================="
echo ""
python3 result-compare.py


