#!/bin/bash

# books-prd keeps its data
for db in S443543-books-dev S443543-books-tst S443543-books-acc
do
    echo "Dropping $db"
    mongo $db --eval "db.dropDatabase()"
    echo "Restoring $db"
    mongorestore -d $db seed
done
