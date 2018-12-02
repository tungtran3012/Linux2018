#!/bin/bash
ls /etc | grep -E "^ap.*$" > output1.txt
more output1.txt
ls /etc | grep -E "^[^t]*t[^t]*$" | grep -E "^[^a]*a[^a]*$" > output2.txt
more output2.txt
