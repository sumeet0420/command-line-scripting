#!/bin/bash

#Understanding Exit Status
# $? will gie the return value of previous command.

# exit status should be between 0 to 255
VAR1=20
let VAR1++

echo "INITIAL EXIT STATUS: $?"

exit 1
