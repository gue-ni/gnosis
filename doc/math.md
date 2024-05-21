# Math

A collection of useful formulas & functions I don't want to look up again.

## Content

- [Math](#math)
  - [Content](#content)
  - [Trigonometry](#trigonometry)
  - [Inverse Lerp](#inverse-lerp)
  - [Mapping a Cube to a Sphere](#mapping-a-cube-to-a-sphere)
  - [Map Numeric Ranges](#map-numeric-ranges)
  - [Vector From Spherical Coordinates](#vector-from-spherical-coordinates)
  - [Haversine Formula (Distance Between Points on Sphere)](#haversine-formula-distance-between-points-on-sphere)
  - [Boolean Algebra](#boolean-algebra)



## Inverse Lerp

```cpp
float inverse_lerp(float min, float max, float value) {
    return (value - min) / (max - min);
}
```

## Mapping a Cube to a Sphere

[Source](https://mathproofs.blogspot.com/2005/07/mapping-cube-to-sphere.html?m=1)

```cpp
#include <glm/glm.hpp>

#define sq(x) (x * x)

// Point on Cube is in range [-1, 1]
// https://mathproofs.blogspot.com/2005/07/mapping-cube-to-sphere.html
inline glm::vec3 map_cube_to_sphere(const glm::vec3& point_on_cube) {
    float x = point_on_cube.x, y = point_on_cube.y, z = point_on_cube.z;

    glm::vec3 point_on_sphere;
    point_on_sphere.x = x * std::sqrt(1.0f - (sq(y) / 2.0f) - (sq(z) / 2.0f) + ((sq(y) * sq(z)) / 3.0f));
    point_on_sphere.y = y * std::sqrt(1.0f - (sq(z) / 2.0f) - (sq(x) / 2.0f) + ((sq(z) * sq(x)) / 3.0f));
    point_on_sphere.z = z * std::sqrt(1.0f - (sq(x) / 2.0f) - (sq(y) / 2.0f) + ((sq(x) * sq(y)) / 3.0f));
    return point_on_sphere;
}
```

## Map Numeric Ranges

To map any range `[in_min, in_max]` to `[out_min, out_max]` we can use this function:

```cpp
template <typename T>
inline T map_range(const T& value, const T& in_min, const T& in_max, const T& out_min, const T& out_max)
{
  return out_min + (value - in_min) * (out_max - out_min) / (in_max - in_min);
}

// Map from [in_min, in_max] to [0.0, 1.0]
float map_range(float value, float in_min, float in_max)
{
  return (value - in_min) / (in_max - in_min);
}

// Map from [0, 1] to [out_min, out_max]:
float map_range(float value, float out_min, float out_max)
{
    assert(0 <= value && value <= 1);
    return out_min + value * (out_max - out_min);
}

// Map from [-1, 1] to [0, 1]:
float map_range(float value)
{
    assert(-1.0f <= value && value <= 1.0f);
    return (value + 1.0f) / 2.0f;
}

// Map from [-0.5, 0.5] to [0, 1]:
float map_range(float value)
{
    assert(-0.5f <= value && value <= 0.5f);
    return value + 0.5f;
}

// Map from [0, 1] to [-1, 1]:
float map_range(float value)
{
    assert(0.0f <= value && value <= 1.0f);
    return value * 2.0f - 1.0f;
}
```

## Vector From Spherical Coordinates

In this reference system, `y` is up.

```cpp
#include <glm/glm.hpp>

glm::vec3 vector_from_spherical(float pitch, float yaw)
{
    return {
        std::cos(yaw) * std::cos(pitch),
        std::sin(pitch),
        std::sin(yaw) * std::cos(pitch)
    };
}
```

## Haversine Formula (Distance Between Points on Sphere)

```cpp
#include <glm/glm.hpp>

// Distance between two coordinates
// https://en.wikipedia.org/wiki/Haversine_formula
float haversine_distance(float lat_1, float lon_1, float lat_2, float lon_2)
{
    float radius = 6371.0f;
    float delta_lat = glm::radians(lat_2 - lat_1);
    float delta_lon = glm::radians(lon_2 - lon_1);

    return 2 * radius * std::asin(
        std::sqrt(
            std::pow(std::sin(delta_lat / 2), 2) +
            std::cos(glm::radians(lat_1)) * std::cos(glm::radians(lat_2))  *
            std::pow(std::sin(delta_lon / 2), 2)));
}
```

## Boolean Algebra

```cpp
typedef bool(*logic_function)(bool, bool);
void truth_table(logic_function func) {
    for (int a = 0; a < 2; ++a)
        for (int b = 0; b < 2; ++b)
            printf("%d, %d -> %d\n", a, b, func(a, b));
}

// Material Condition (Implies)
bool implies(bool a, bool b) { return (!a) || (b); }

// Iff (If and only  if)
bool if_and_only_if(bool a, bool b) { return implies(a, b) && implies(b, a); }

// Exclusive OR
bool xor_v1(bool a, bool b) { return (a || b) && !(a || b); }
bool xor_v2(bool a, bool b) { return ((!a) != (!b)); }
bool xor_v3(bool a, bool b) { return (!a && b) || (a && !b); }
```

## Trigonometry

![Trigonometry Cheat Sheet](../img/trig-cheat-sheet.png)

