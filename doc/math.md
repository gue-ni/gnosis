# Math

## Haversine Formula

```cpp
#include <glm/glm.hpp>
#include <iostream>

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

int main(void)
{
    const glm::vec2 vienna = {48.2082f, 16.3738f};
    const glm::vec2 graz = {47.0707f, 15.4395f};
    float d = haversine_distance(vienna.x,  vienna.y, graz.x, graz.y);
    std::cout << "distance = " << d << " ~ " << 144.56 << std::endl;
    return 0;
}
```
