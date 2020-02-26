def f1(x: int) -> int:
    if x:= x > 0:
        return x  # E: Incompatible return value type (got "bool", expected "int")
    return 0
f1(7)

def f2(x: int):
    return
f2(True)  # E: Argument 1 to "f" has incompatible type "bool"; expected "int"

def f3() -> int:
    return (True) # E: Incompatible return value type (got "bool", expected "int")
f3()

def f4(x: int) -> int:
    return (x > 0)
f4(7)

def f5(x: int) -> int:
    return (x > 0)
f5(-5)  # E: Argument 1 to "f" has incompatible type "bool"; expected "int"

def f6(x: bool) -> int:
    return (x > 0)
f6(10)  # E: Argument 1 to "f" has incompatible type "bool"; expected "int"

def f7(x: int) -> bool:
    return x + 2
f7(10)  # E: Argument 1 to "f" has incompatible type "bool"; expected "int"
