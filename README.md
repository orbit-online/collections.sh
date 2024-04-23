# collections.sh

Functions for handling bash arrays

## Installation

See [the latest release](https://github.com/orbit-online/collections.sh/releases/latest) for instructions.

## Usage

### `contains_elements(element, ...array)`

Checks if an element is in an array

```
local arr=(1 "a b" 2)
if contains_element "a b" "${arr[@]}"; then
  printf "'a b' is in arr"
else
  printf "'a b' is not in arr"
fi
```

### `join_by(separator, ...array)`

Joins all elements in the array into a single string using `separator`

```
local arr=(1 "a b" 2)
printf "arr joined with - is '%s'" "$(join_by - "${arr[@]}")"
```
