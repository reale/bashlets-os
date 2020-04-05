#!/usr/bin/env bats

source bashlets rdbms::oracle::datetime

@test "rdbms/oracle/datetime: convert Unix timestamp to Oracle date string" {
  result="$(bash$$ datetime from_unixts)"
  expected="[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}"
  [[ $result =~ $expected ]]
}
