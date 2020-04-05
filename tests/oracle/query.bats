#!/usr/bin/env bats

source bashlets rdbms::oracle::query

@test "rdbms/oracle/query: execute a query" {
  result="$(bash$$ query execute 'select * from dual')"
  expected=X
  [[ $result == $expected ]]
}
