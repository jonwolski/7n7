#!/usr/bin/env bats

@test "invoking an io program from file" {
  run io day1.io
  [ "$status" -eq 0 ]
  [ "${lines[0]}" -eq "2" ]
}
