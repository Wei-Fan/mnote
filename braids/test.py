from math import tan, atan2, cos, sin, pi, sqrt

def max_min_radius(v1, v2):
    k1 = tan(v1[2])
    k2 = tan(v2[2])

    xa = (v1[1] - v1[0] * k1 - v2[1] + v2[0] * k2) / (k2 - k1)
    ya = (v1[0] - v1[1] / k1 - v2[0] + v2[1] / k2) / (1 / k2 - 1 / k1)

    # check if valid for intersection area
    check1 = (xa - v1[0]) + (ya - v1[1]) * k1
    check2 = (xa - v2[0]) + (ya - v2[1]) * k2
    if check1 < 0 or check2 > 0:
        return -1.0

    theta = v2[2] - atan2(v2[1] - v1[1], v2[0] - v1[0])
    delta = (v2[2] - v1[2]) / 2
    d = sqrt((v2[0] - v1[0])**2 + (v2[1] - v1[1])**2)
    R = d / (2 * sin(delta))
    r1 = R * cos(theta + delta / 2) / cos(delta / 2)
    r2 = R * sin(theta) / sin(delta)
    print(f"r1: {r1}")
    print(f"r2: {r2}")

    return r1 if r1 > r2 else r2

def main():
    # Sample test vectors
    v1 = [1.0, 1.0, pi/4]  # example values
    v2 = [4.0, 6.0, pi/3]  # example values

    result = max_min_radius(v1, v2)
    print(f"Result: {result}")

if __name__ == "__main__":
    main()