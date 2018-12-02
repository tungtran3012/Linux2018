#!/bin/bash
sample_text="global variable"
foo()
{
	local sample_text="local variable"
	local sample_text1="local variable 1"
	echo "sample text = $sample_text"
}
echo "sample_text=$sample_text"
foo
echo "sample_text=$sample_text"
echo "sample_text1=$sample_text1"
