# Math

## Vector From Spherical Coordinates

In this reference system, `y` 

```cpp
glm::vec3 vector_from_spherical(float pitch, float yaw)
{
    return {
        std::cos(yaw) * std::sin(pitch),
        std::cos(pitch),
        std::sin(yaw) * std::sin(pitch)
     };
}
```

## Haversine Formula

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


