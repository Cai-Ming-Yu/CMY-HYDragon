# CMY-HYDragon
ネイティブのJavaを使用してダウンロードする（Androidではより良い）

The commands "curl" and "wget" may not be available on some Android devices (I've seen many OPPO devices that don't carry these commands in the system, but they are available on devices like Xiaomi, for example).
Without these commands, it will be difficult to download the file using Shell, but there is a Java environment on Android that allows you to download the file by executing Java code via ```app_process```.
After actual testing, many third-party libraries can't be used on Android, only using Java native code can work properly, this Jar project uses ```java.io.File``` and ```java.net.URI``` to download files.
You can also treat this project as a regular Jar project, but it's pretty pointless elsewhere.
Since app_process should start a dex file, you need to use a tool such as dx for example to convert the jar to dex, this project has already done the conversion at the time of release.

## How to use
First, please download the dex file and store it in one place.
Then, use the command ```app_process -Djava.class.path=<path to dex file> ./ tokyo.caimingyu.hydragon.MainKt dl <url> <output file>```, note that ```<output file>``` is optional, if not provided, it will output the downloaded content directly.
The project also provides a sh file that can be downloaded via ```hydragon.sh dl <url> <output file>```, ```<output file>``` is again optional and ```hydragon.dex``` should be in the same directory as ```hydragon.sh```.

You can also build the Jar yourself by downloading the project's source code (e.g., via ```./gradlew proguard``` to build the Jar).

Debug CI Version: https://github.com/Cai-Ming-Yu/CMY-HYDragon/actions

## [License](https://github.com/Cai-Ming-Yu/CMY-HYDragon/blob/C-M-Y/LICENSE)