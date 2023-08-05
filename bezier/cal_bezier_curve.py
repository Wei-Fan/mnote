import numpy as np
import matplotlib.pyplot as plt

def calculate_bezier_curve(points, min_radius, num_points=100):
  t = np.linspace(0, 1, num_points)

  curve = np.zeros((num_points, 2))  # Initialize array to hold curve points

  # Ensure control points are not too close
  for i in range(1, len(points)):
    while np.linalg.norm(points[i-1] - points[i]) < min_radius:
      # Move the point further away along the line
      direction = (points[i] - points[i-1]) / np.linalg.norm(points[i] - points[i-1])
      points[i] = points[i-1] + direction * min_radius

  for i in range(num_points):
    curve[i] = (1 - t[i]) ** 3 * points[0] + 3 * (1 - t[i]) ** 2 * t[i] * points[1] + 3 * (1 - t[i]) * t[i] ** 2 * points[2] + t[i] ** 3 * points[3]

  return curve, points

# Define control points
control_points = np.array([[1, 1], [3, 1], [6, 4], [6, 6]])

curve, new_control_points = calculate_bezier_curve(control_points, min_radius=1)

# Plot curve
plt.plot(curve[:, 0], curve[:, 1])

# Plot control points
plt.plot(new_control_points[:, 0], new_control_points[:, 1], 'ro-')

plt.show()