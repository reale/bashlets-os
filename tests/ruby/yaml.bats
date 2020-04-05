#!/usr/bin/env bats

source bashlets glue::ruby::yaml

@test "glue/ruby/yaml: parse a YAML fragment" {
  result=$(bash$$ yaml parse sample.yml User)
  expected="ed"
  [[ $result == $expected ]]
}
