#!/bin/bash
awk '{print $3}' sinhvien.txt | sort | uniq | wc -l
