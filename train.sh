#!/bin/sh
mkdir -p snapshot
/home/willee/caffe-ssd/build/tools/caffe train -solver="mobile-FRD-CNN_solver.prototxt" \
-weights="mobile-FRD-CNN_pretrained.caffemodel" \
-gpu 0 
