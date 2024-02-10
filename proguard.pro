-keep class tokyo.caimingyu.hydragon.MainKt {
    public static void main(java.lang.String[]);
}

-optimizations !code/allocation/variable,!code/simplification/arithmetic,!field/*,!class/merging/*
-dontskipnonpubliclibraryclassmembers
-dontskipnonpubliclibraryclasses
-allowaccessmodification
-optimizationpasses 11
-overloadaggressively
-ignorewarnings
#-dontpreverify
-dontoptimize

-repackageclasses ''

-obfuscationdictionary 彩銘羽.txt
-classobfuscationdictionary 彩銘羽.txt
-packageobfuscationdictionary 彩銘羽.txt
-renamesourcefileattribute 彩銘羽.txt

-adaptclassstrings
-adaptresourcefilenames
-adaptresourcefilecontents