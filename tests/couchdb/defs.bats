#!/usr/bin/env bats

source bashlets nosql::couchdb::defs

@test "nosql/couchdb/defs: server url" {
  [[ -n $BASHLETS_NOSQL_COUCHDB_URL ]]
}
