sudo python3 -m pip install -U ../
echo ""
echo "==========TEST WITHOUT FLAG=========="
echo "EXPECTED PRINTS:"
echo 'test-cases.py:25: error: Argument 1 to "f6" has incompatible type "int"; expected "bool",
test-cases.py:28: error: Incompatible return value type (got "int", expected "bool")'
echo 'Found 2 errors in 1 file (checked 1 source file)'
echo "-------------------------------------"
echo 'ACTUAL PRINTS:'
mypy test-cases.py
mypy test-cases.py > mypy_actual_1.txt
echo "====================================="
echo ''
echo "======TEST WITH STRICT BOOL FLAG======"
echo "EXPECTED PRINTS:"
echo 'test-cases.py:3: error: Incompatible return value type (got "bool", expected "int"),'
echo 'test-cases.py:9: error: Argument 1 to "f2" has incompatible type "bool"; expected "int",'
echo 'test-cases.py:12: error: Incompatible return value type (got "bool", expected "int"),'
echo 'test-cases.py:16: error: Incompatible return value type (got "bool", expected "int"),'
echo 'test-cases.py:20: error: Incompatible return value type (got "bool", expected "int"),'
echo 'test-cases.py:25: error: Argument 1 to "f6" has incompatible type "int"; expected "bool",'
echo 'test-cases.py:28: error: Incompatible return value type (got "int", expected "bool"),'
echo 'Found 2 errors in 1 file (checked 1 source file)'
echo "-------------------------------------"
echo 'ACTUAL PRINTS:'
mypy test-cases.py --strict-bool
mypy test-cases.py > mypy_actual_2.txt
echo "====================================="
echo ""
python3 result-compare.py


