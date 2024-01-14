# Math

A collection of useful formulas & functions I don't want to look up again.

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

## Map Numeric Ranges 

To map any range `[in_min, in_max]` to `[out_min, out_max]` we can use this function:

```cpp
float map_range(float s, float in_min, float in_max, float out_min, float out_max)
{
    assert(in_min <= s && s <= in_max);
    return out_min + (s - in_min) * (out_max - out_min) / (in_max - in_min);
}

// Map from [0, 1] to [out_min, out_max]:
float map_range(float s, float out_min, float out_max)
{
    assert(0 <= s && s <= 1);
    return out_min + s * (out_max - out_min);
}

// Map from [-1, 1] to [0, 1]:
float map_range(float s)
{
    assert(-1.0f <= s && s <= 1.0f);
    return (s + 1.0f) / 2.0f;
}

// Map from [-0.5, 0.5] to [0, 1]:
float map_range(float s)
{
    assert(-0.5f <= s && s <= 0.5f);
    return s + 0.5f;
}

// Map from [0, 1] to [-1, 1]:
float map_range(float s)
{
    assert(0.0f <= s && s <= 1.0f);
    return s * 2.0f - 1.0f;
}
```

## Vector From Spherical Coordinates

In this reference system, `y` is up.

```cpp
#include <glm/glm.hpp>

glm::vec3 vector_from_spherical(float pitch, float yaw)
{
    return {
        std::cos(yaw) * std::sin(pitch),
        std::cos(pitch),
        std::sin(yaw) * std::sin(pitch)
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


