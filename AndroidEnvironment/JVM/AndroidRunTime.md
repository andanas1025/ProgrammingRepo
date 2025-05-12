## What is Android Runtime?
We write code in Kotlin/Java, and when we build the APK, it gets converted to bytecode.

In our APK, we will have the .dex files that contain bytecode.

Our Android devices can't run the bytecode directly, so it needs to be translated to the machine code. This translation is done by Android Runtime.

There are two types of AR

## Dalvik
Dalvik, our first Android Runtime is based on the JIT compilation.

JIT compilation means Just In Time compilation.

As the .dex contain the bytecode, it needs to be translated to the machine code to be run.

In Dalvik Android Runtime, as it is JIT based, it gets translated when we run the app. As we keep on using the app, only that part of the bytecode gets converted to the machine code. Also, the most frequently used code gets cached so that we don't have to translate them again.

This process is repeated every single time when we open the app using the CPU cycles and hence impacting the battery life.

Disadvantage: Low performance and decreases battery performance.

In Android L, we were introduced to the new Android Runtime: ART.

## ART

ART, our next Android Runtime is based on the AOT compilation.

AOT compilation means Ahead of Time compilation.

Again, as the .dex contain the bytecode, it needs to be translated to the machine code to be run.

In ART Android Runtime, as it is AOT based, it gets translated before we run the app. It gets translated at the time of app installation only. Basically, when we install the app, it translates the bytecode into the machine code and stores it on the disk.

So, by ART, the problem related to the low performance of Dalvik got solved. Now we have a high-performance application because there is no need for translation during the app run.

Advantage: High Performance

But, we should also talk about the disadvantages.

One disadvantage is more installation time as it translates the bytecode to the machine code at the time of app installation only.
Also, it needs more space. 

Now, let's get back to the discussion regarding the solution.

And we all know that users use 20% of the Apps present on their devices 80% of the time. And also, 20% part of an application is used 80% of the time. So, it is unnecessary to keep the translation of the complete bytecode of all the apps. It's a complete waste of space and time.

We could have a better solution.

In Android N, Just In Time compilation was introduced back with the profile-guided compilation.

## Profile-guided compilation

In profile-guided compilation, the translation is done using the Just In Time compilation which means when we are using the app. Then, as it learns which part of the apps or which apps are being very frequently used, it caches the translated code for that part only and stores it on disk.

This profile-guided compilation is hybrid ART with both JIT and AOT.

<b>Advantages:</b>

Less install time
Less space on the disk
Less boot time
Improved performance but only after the first few application usages.

<b>Disadvantages:</b>

Low performance in the initial few runs of the application.

## Baseline Profiles
In this process, we create baseline profile data before the app release and upload it along with the APK, making this data available for the initial new users as well.

Previously: Upload APK/AAB

Now: Upload APK/AAB + Baseline Profiles

Now, the Android Runtime (ART) can optimize specified code paths through Ahead-of-Time (AOT) compilation, providing performance enhancements for every new user.
