mkdir $SRC_DIR/gromacs_4.5.5/build
cd $SRC_DIR/gromacs_4.5.5/build

cmake -DGMX_X11=OFF \
        -DGMX_GSL=OFF \
        -DGMX_MPI=OFF \
        -DGMX_BUILD_OWN_FFTW=ON \
        -DCMAKE_C_COMPILER=${PREFIX}/bin/x86_64-conda_cos6-linux-gnu-gcc \
        -DCMAKE_CXX_COMPILER=${PREFIX}/bin/x86_64-conda_cos6-linux-gnu-g++ \
        -DGMX_PREFER_STATIC_LIBS=ON \
        -DCMAKE_INSTALL_PREFIX=$(pwd) ..
make
make install

cp $SRC_DIR/gromacs_4.5.5/build/bin/* $PREFIX/bin