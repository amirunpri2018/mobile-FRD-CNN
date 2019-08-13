#!/bin/sh
#latest=/home/willee/MobileNet-SSD-master
latest=$(ls -t /home/willee/mobile-FRD-CNN/snapshot/mobilenet_iter_140000.caffemodel | head -n 1)
if test -z $latest; then
	exit 1
fi
/home/willee/caffe-ssd/build/tools/caffe train -solver="mobile-FRD-CNN_solver_test.prototxt" \
--weights=$latest \
-gpu 0
