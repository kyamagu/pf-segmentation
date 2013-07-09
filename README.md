PF Segmentation
===============

Matlab interface for the image segmentation algorithm of

    Efficient Graph-Based Image Segmentation
    Pedro F. Felzenszwalb and Daniel P. Huttenlocher
    International Journal of Computer Vision, 59(2) September 2004.

This package adds Matlab wrapper of the original C++ implementation at
http://cs.brown.edu/~pff/segment/

The code is distributed under GPLv2 License.

Usage
-----

The package contains two functions.

    pf.make     Compile the code.
    pf.segment  Run the segmentation algorithm.

Here is an example.

    addpath('/path/to/pf-segmentation');
    pf.make; % Only once.
    segmentation = pf.segment(rgb_image, 0.5, 200, 20);

Check `help pf.segment` for the explanation of the parameters.
