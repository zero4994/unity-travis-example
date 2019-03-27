export "IMAGE_NAME=gableroux/unity3d:2018.3.7f1"
export "BUILD_NAME=unity-text-example"
export "BUILD_TARGET=StandaloneOSX"

echo $IMAGE_NAME
echo $BUILD_NAME
export UNITY_LICENSE_CONTENT=`cat LOCATION_OF_YOUR_LICENCE_FILE.ulf`
set -e
set -x

set +x
echo 'Writing $UNITY_LICENSE_CONTENT to license file Unity_v2018.x.ulf'
./ci/docker_build.sh
