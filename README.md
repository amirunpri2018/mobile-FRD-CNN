# A caffe implementation of mobile-FRD-CNN network.

### Run
1. Download [SSD](https://github.com/weiliu89/caffe/tree/ssd) source code and compile (follow the SSD README).
2. Download the pretrained deploy weights from the [link](https://drive.google.com/open?id=0B3gersZ2cHIxVFI1Rjd5aDgwOG8).
3. Put all the files in caffe-ssd_HOME/examples/

### Train mobile-FRD-CNN
1. Convert the VOC dataset to lmdb database (follow the SSD README), and create symlinks to current directory.
```
ln -s PATH_TO_YOUR_TRAIN_LMDB trainval_lmdb
ln -s PATH_TO_YOUR_TEST_LMDB test_lmdb
```
2. Create the labelmap.prototxt file and put it into current directory.
3. Use gen_model.sh to generate the training prototxt.
4. Download the training weights from the link above, and run train.sh.
5. Run test.sh to evaluate the result.
