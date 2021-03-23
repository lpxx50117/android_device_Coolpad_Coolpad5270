# 酷派5270 编译TWRP 基础device tree

PS:由于酷派5270奇葩的分区设定（userdata与内置存储分离，分别位于23和24分区），因此在源码内新增了真正的内置存储选项“Internal SDcard”
所以在使用过程中如果需要刷入内置储存里的文件则需要选择切换到“Internal SDcard”才能读取
PS2:请使用Ubuntu18.04及以下系统编译，Ubuntu20.04实测gcc会报错，切换gcc版本无法解决

## 操作步骤： 

```
mkdir twrp
cd twrp  
repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-5.1 
repo sync 
git clone https://github.com/lpxx50117/android_device_Coolpad_Coolpad5270.git device/Coolpad/Coolpad5270 
. build/envsetup.sh 
lunch omni_Coolpad5270-userdebug 
export LC_ALL=C 
mka recoveryimage
```
