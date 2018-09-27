#语言选项,这个必须设置,否则编译好后会出现一个HashTable的NPE错
export LANG=C
#Bootstrap JDK的安装路径。必须设置
export ALT_BOOTDIR=/usr/lib/jvm/java-6-openjdk-amd64/
export ALT_JDK_IMPORT_PATH=/usr/lib/jvm/java-6-openjdk-amd64/

#允许自动下载依赖
export ALLOW_DOWNLOADS=true

#并行编译的线程数,设置为和CPU内核数量一致即可
export HOTSPOT_BUILD_J0BS=6
export ALT_PARALLEL_COMPILE_JOBS=6 

#比较本次build出来的映像与先前版本的差异。这对我们来说没有意义, 
#必须设置为false,香则sanity检查会报缺少先前版本JDK的映像的错误提示。 
#如桌已经设置dev或者DEV_ONLY=true,这个不显式设置也行
export SKIP_COMPARE_IMAGES=true

#使用预编译头文件,不加这个编译会更慢一些
export USE_PRECOMPILED_HEADER=true

#要编译的内容
export BUILD_LANGTOOLS=true
export BUILD_JAXP=false
export BUILD_JAXWS=fa1se
export BUILD_CORBA=false
export BUILD_HOTSPOT=true
export BUILD_JDK=true

#要编译的版本
export SKIP_DEBUG_BUILD=false
export SKIP_FASTDEBUG_BUILD=true
export DEBUG_NAME=debug

#把它设置为false可以避开javaws和浏览器Java插件之类的部分的build
BUILD_DEPLOY=false

#把它设置为false就不会build出安装包。因为安装包里有些奇怪的依赖, 
#但即便不build出它也已经能得到完整的JDK映像,所以还是别build它好了
BUILD_INSTALL=false

#编译结果所存放的路径
export ALT_OUTPUTDIR=/home/openjdk/jdk7u-dev/build

#这两个环境变量必须去掉,不然会有很诡异的事情发生（我没有具体查过这些 "诡异的
#事情” ,Makefile脚本裣查到有这2个变量就会提示警告)
unset JAVA_HOME
unset CLASSPATH

export DISABLE_HOTSPOT_OS_VERSION_CHECK=OK

make 2>&1 | tee $ALT_OUTPUTDIR/build.log