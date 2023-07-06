import numpy as np
import matplotlib.pyplot as plt
from scipy.interpolate import BSpline

# Define the degree of the B-spline
k = 3

# Define the control points
control_points = np.array([[0, 0], [1, 1], [2, 0], [3, 1], [4, 0], [5, 1], [6, 0]])

# Define the knot vector
knots = np.array([0, 0, 0, 0, 1, 2, 3, 4, 4, 4, 4])

# Create the B-spline
bspline = BSpline(knots, control_points, k)

# Evaluate the B-spline at a set of points
t = np.linspace(0, np.max(knots), 100)
curve = bspline(t)

# Plot the B-spline curve
plt.plot(curve[:, 0], curve[:, 1])

# Plot the control points
plt.plot(control_points[:, 0], control_points[:, 1], 'ro-')

plt.show()
