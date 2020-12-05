#!/bin/sh

for i in {1..1004}
do

echo    line$i
echo    {
echo        type        uniform\;
echo        axis        distance\;
echo        start       \(
echo        "0.0125+($i-1)*0.025" | bc
echo        1.05
echo        0
echo        \)\;
echo        end         \(
echo        "0.0125+($i-1)*0.025" | bc
echo        1.05
echo        2
echo        \)\;
echo        nPoints     80\;
echo    }
echo

done 
