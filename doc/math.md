# Math

## Vector From Spherical Coordinates

```cpp
glm::vec3 vector_from_spherical(float theta, float phi)
{
    float sin_phi = std::sin(phi);
    float cos_phi = std::cos(phi);
    float sin_theta = std::sin(theta);
    float cos_theta = std::cos(theta);
    return { cos_phi * sin_theta, sin_phi * sin_theta, cos_theta };
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


