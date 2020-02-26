actual1=open("mypy_actual_1.txt","r").readlines()
actual2=open("mypy_actual_2.txt","r").readlines()
expected1=open("mypy_expected_1.txt","r").readlines()
expected2=open("mypy_expected_2.txt","r").readlines()

print("========!RESULTS!========")

if len(actual1) == len(expected1):
    error = False
    for i in range(len(actual1)):
        line1 = actual1[i]
        line2 = expected1[i]
        if line1!=line2:
            error = True
            print("---[ ! ] TEST FAILED---")
            print("ACTUAL:")
            print(line1)
            print("")
            print("EXPECTED:")
            print(line2)
            print("-----------------------")
            print("")
            break
        if error == False:
            print("Without flag tests SUCCESS!\n")
            error = True
else: 
    print("[!]TEST FAILED: Number of errors missmatch\n")

if len(actual2) == len(expected2):
    error = False
    for i in range(len(actual2)):
        line1 = actual1[i]
        line2 = expected1[i]
        if line1!=line2:
            error = True
            print("---[ ! ] TEST FAILED---")
            print("ACTUAL:")
            print(line1)
            print("")
            print("EXPECTED:")
            print(line2)
            print("-----------------------")
            break
        if error == False:
            print("With strict bool flag SUCCESS!")
            error = True
else: 
    print("[!]TEST FAILED: Number of errors missmatch")

print("=========================")
