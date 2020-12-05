#!/bin/sh

cd ./sets/

rm flowdepth*.dat

# Height of mesh
height=2.0

for dir in `ls . | sort -g`;
do

echo $dir;

octave -q << EOF

for i = 1:1004

format short

filename = sprintf('$dir/line%d_alpha1.xy', i);

d = dir(filename);
  if d.bytes == 0 
    continue;
  endif

dlmread(filename);

a = ans(:,2);
b = sum(a)/length(a) * $height;
x = 0.0125 + (i-1)*0.125;
c = [x b];

dlmwrite ("flowdepth${dir}.dat", c, "\t", "-append")

endfor

EOF

done
