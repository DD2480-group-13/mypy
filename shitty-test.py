def f(x: int) -> int:
    if x:= x > 0:
        return x  # E: Incompatible return value type (got "bool", expected "int")
    return 0
print (f(7))