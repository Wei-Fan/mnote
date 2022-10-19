import nashpy as nash
import numpy as np
import axelrod as axl

P1 = np.array([[100, 35], [175, 50]])
P2 = np.array([[100, 175], [35, 50]])
game = nash.Game(P1, P2)
print(game)
equilibria = game.support_enumeration()
for eq in equilibria:
    print(eq)

sigma_r = np.array([.3, .7])
sigma_c = np.array([.6, .4])
print(game[sigma_r, sigma_c])

# players = (axl.Cooperator(), axl.Defector())
players = (axl.TitForTat(), axl.Alternator())
match = axl.Match(players, turns=12)
match.play()
print(match.sparklines())