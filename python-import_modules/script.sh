#!/bin/bash

# Create 0-add.py
cat > 0-add.py << 'EOF'
#!/usr/bin/python3
from add_0 import add

a = 1
b = 2
print("{} + {} = {}".format(a, b, add(a, b)))
EOF

# Create 1-calculation.py
cat > 1-calculation.py << 'EOF'
#!/usr/bin/python3
from calculator_1 import add, sub, mul, div

a = 10
b = 5
print("{} + {} = {}".format(a, b, add(a, b)))
print("{} - {} = {}".format(a, b, sub(a, b)))
print("{} * {} = {}".format(a, b, mul(a, b)))
print("{} / {} = {}".format(a, b, div(a, b)))
EOF

# Create 2-args.py
cat > 2-args.py << 'EOF'
#!/usr/bin/python3
import sys

num_args = len(sys.argv) - 1
if num_args == 0:
    print("0 arguments.")
elif num_args == 1:
    print("1 argument:")
else:
    print("{} arguments:".format(num_args))
for i in range(1, num_args + 1):
    print("{}: {}".format(i, sys.argv[i]))
EOF

# Create 3-infinite_add.py
cat > 3-infinite_add.py << 'EOF'
#!/usr/bin/python3
import sys

result = 0
for arg in sys.argv[1:]:
    result += int(arg)
print(result)
EOF

# Create 4-hidden_discovery.py
cat > 4-hidden_discovery.py << 'EOF'
#!/usr/bin/python3
import hidden_4

for name in dir(hidden_4):
    if not name.startswith("__"):
        print(name)
EOF

# Create 5-variable_load.py
cat > 5-variable_load.py << 'EOF'
#!/usr/bin/python3
from variable_load_5 import a

print(a)
EOF

# Create add_0.py
cat > add_0.py << 'EOF'
#!/usr/bin/python3
def add(a, b):
    """My addition function

    Args:
        a: first integer
        b: second integer

    Returns:
        The return value. a + b
    """
    return (a + b)
EOF

# Create calculator_1.py
cat > calculator_1.py << 'EOF'
#!/usr/bin/python3
def add(a, b):
    """My addition function

    Args:
        a: first integer
        b: second integer

    Returns:
        The return value. a + b
    """
    return (a + b)


def sub(a, b):
    """My subtraction function

    Args:
        a: first integer
        b: second integer

    Returns:
        The return value. a - b
    """
    return (a - b)


def mul(a, b):
    """My multiplication function

    Args:
        a: first integer
        b: second integer

    Returns:
        The return value. a * b
    """
    return (a * b)


def div(a, b):
    """My division function

    Args:
        a: first integer
        b: second integer

    Returns:
        The return value. a / b
    """
    return int(a / b)
EOF

# Create variable_load_5.py
cat > variable_load_5.py << 'EOF'
#!/usr/bin/python3
a = 98
"""Simple variable
"""
EOF

# Note: Make sure hidden_4.py is provided as it is a compiled file and cannot be generated here directly.

# Make all files executable
chmod +x 0-add.py 1-calculation.py 2-args.py 3-infinite_add.py 4-hidden_discovery.py 5-variable_load.py add_0.py calculator_1.py variable_load_5.py

echo "All scripts have been created and made executable!"

