import typer
from scipy.stats import binomtest

app = typer.Typer(no_args_is_help=True)


@app.command()
def test_coin(times_flipped: int = 10, heads_observed: int = 1) -> None:
    print()
    print(f"Flipping a coin {times_flipped} times, observe {heads_observed} head(s).")
    print("Is the coin biased?")
    print("H0: coin is fair")
    print("H1: coin is biased (two-tailed)")
    print(f"{binomtest(n=times_flipped, p=0.5, k=heads_observed).pvalue = :0.03f}")
    print()


@app.command()
def test_dice(times_rolled: int = 100, sixes_observed: int = 1) -> None:
    print()
    print(f"Rolling a dice {times_rolled} times, observe {sixes_observed} six(s).")
    print("Is the dice fair?")
    print("H0: dice is fair")
    print("H1: dice is biased (two-tailed)")
    print(f"{binomtest(n=times_rolled, p=1/6, k=sixes_observed).pvalue = :0.03f}")
    print()


if __name__ == "__main__":
    app()
