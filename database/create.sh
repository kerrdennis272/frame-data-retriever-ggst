#!/bin/bash
BASEDIR=$(dirname $0)
DATABASE=frame_data
psql -U postgres -f "$BASEDIR/dropdb.sql" &&
createdb -U postgres $DATABASE &&
psql -U postgres -d $DATABASE -f "$BASEDIR/schema.sql"
