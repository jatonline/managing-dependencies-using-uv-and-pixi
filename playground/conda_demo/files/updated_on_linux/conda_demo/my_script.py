from scipy.stats import binomtest

print()
print("Flipping a coin 10 times, observe only 1 head. Is the coin biased?")
print("H0: coin is fair")
print("H1: coin is bias (two-tailed)")
print(f"{binomtest(n=10, p=0.5, k=1).pvalue = :0.03f}")
print()
