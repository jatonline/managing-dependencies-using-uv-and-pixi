from scipy.stats import binomtest

print("Flipping a coin 10 times, only obeserve 1 head")
print("H0: coin is fair")
print("H1: coin is bias (two-tailed)")
print(f"{binomtest(n=10, p=0.5, k=1).pvalue = }")
