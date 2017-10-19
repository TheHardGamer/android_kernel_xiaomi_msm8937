export ARCH=arm64
export CROSS_COMPILE=
export KBUILD_BUILD_USER="MayankBali"
export KBUILD_BUILD_HOST="VarunVaishnav"
mkdir -p out
make O=out santoni_defconfig
make O=out -j10

