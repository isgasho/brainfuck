SOURCE=${1//.bf/.${2}}
TARGET=`basename ${1//.bf/}`

make bf2rs
make $SOURCE
make $TARGET
time ./$TARGET

rm $TARGET `basename $SOURCE`