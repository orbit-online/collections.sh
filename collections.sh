#!/usr/bin/env bash

# contains_elements(element, ...array)
contains_element() {
  local e match="$1"; shift
  for e; do [[ "$e" == "$match" ]] && return 0; done
  return 1
}

# join_by(separator, ...array)
join_by() {
  local IFS="$1"; shift; echo "$*"
}
