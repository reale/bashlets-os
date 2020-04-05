#!/usr/bin/env bats

source bashlets rdbms::oracle::session

@test "rdbms/oracle/session: get the session's timezone" {
  result="$(bash$$ session get_timezone)"
  expected="[+-][0-9]{2}:[0-9]{2}"
  [[ $result =~ $expected ]]
}
