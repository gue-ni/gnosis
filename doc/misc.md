# Misc

## Math

### Map Range

To map any range `[in_min, in_max]` to `[out_min, out_max]` we can use this function:

```cpp
template<typename T>
T map_range(T s, T in_min, T in_max, T out_min, T out_max)
{
    assert(in_min <= s && s <= in_max);
    return out_min + (s - in_min) * (out_max - out_min) / (in_max - in_min);
}
```

There are a few special cases where we can simplify this function.  
 

## HTML Entities

| HTML Entity | Symbol   | Description    |
| ----------- | -------- | -------------- |
| `&forall;`  | &forall; |                |
| `&isin;`    | &isin;   |                |
| `&notin;`   | &notin;  |                |
| `&exist;`   | &exist;  |                |
| `&sum;`     | &sum;    |                |
| `&infin;`   | &infin;  | undendlich     |
| `&cap;`     | &cap;    | intersection   |
| `&cup;`     | &cup;    | union          |
| `&not;`     | &not;    | negation       |
| `&and;`     | &and;    | logisches und  |
| `&or; `     | &or;     | logisches oder |
| `&times;`   | &times;  | cross product  |
| `&sdot;`    | &sdot;   | dot product    |
| `&#9989;`   | &#9989;  | done           |
| `&sup;`     | &sup;    |                |
| `&sub;`     | &sub;    |                |
| `&sube;`    | &sube;   |                |
| `&supe;`    | &supe;   |                |
| `&harr;`    | &harr;   |                |

## popular hackernews abbreviations

| abbreviation | meaning                                      |
| ------------ | -------------------------------------------- |
| PEBKAC       | Problem exists between keyboard and computer |
| YMMV         | Your mileage may vary                        |
| SOL          | shit outta luck                              |

## chrome

| Function          | Shortcut      |
| ----------------- | ------------- |
| Open Task manager | `Shift + Esc` |

## Spotify

| Function   | Shortcut       |
| ---------- | -------------- |
| Next track | `Ctrl + Right` |


