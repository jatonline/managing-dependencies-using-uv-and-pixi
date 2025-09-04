# /// script
# requires-python = "~=3.10.0"
# dependencies = [
#     "numpy",
# ]
#
# [tool.uv]
# exclude-newer = "2022-01-01T00:00:00Z"
# ///

import numpy as np

print()
print("This script is running in an isolated environment")
print("With numpy version", np.__version__ )
print()
