#!/bin/sh



for i in {1..1}
do

echo    line$i
echo    {
echo        type        uniform\;
echo        axis        distance\;
echo        start       \(
echo        0
echo        0.05
echo        0.5
echo        \)\;
echo        end         \(
echo        24.1
echo        0.05
echo        0.5
echo        \)\;
echo        nPoints     4820\;
echo    }
echo

done 
