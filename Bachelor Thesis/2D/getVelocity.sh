#!/bin/sh

cd ./sets/

rm velocity*.dat

# Height of mesh
#height=2.0

for dir in `ls . | sort -g`;
do

echo $dir;

octave -q << EOF

for i = 1

format short

filename = sprintf('$dir/line%d_U.xy', i);

d = dir(filename);
  if d.bytes == 0 
    continue;
  endif

dlmread(filename);

u = ans(:,[2]);
x = ans(:,[1]);

c = [x u];

dlmwrite ("velocity${dir}.dat", c, "\t", "-append")

endfor

EOF

done
