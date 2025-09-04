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


if __name__ == "__main__":
    app()
