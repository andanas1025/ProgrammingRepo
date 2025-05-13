## Enable Memory Indicator and Adjust IDE Heap Size
What & Why: Android Studio runs on a Java Virtual Machine (JVM) with a maximum heap size (memory limit). 
By default this is around 1280 MB for the IDE. If the heap is too small, the IDE will frequently garbage-collect 
(free memory) to stay within the limit, causing slowdowns. If it’s too large, the IDE might consume more RAM than 
needed and could lead to longer garbage collection pauses. On a 16 GB system, you have headroom to increase the heap 
moderately for better performance. In fact, Android Studio will even warn you when it’s running low on memory 
(less than 5% free heap) and suggest increasing the heap size. Some developers report that upping the IDE heap to 4 GB or 
even 8 GB dramatically improves responsiveness on large projects -though you likely won’t need the full 8 GB unless your project is huge.
```
Increase the -Xmx value (the max heap size). For example, set it to 4096m for ~4 GB. Save and restart
Android Studio for changes to take effect.
```

## Optimize Gradle Daemon Settings for Builds
What & Why: The Gradle Daemon is a background Java process that builds your project. By default, Gradle uses a daemon to 
speed up builds. The daemon stays alive after a build (for up to 3 hours idle by default), caching project data and avoiding the 
slow JVM startup for each build. This dramatically reduces build times because successive builds can reuse the warmed-up 
Gradle process, cached classpaths, etc. In short, the Gradle Daemon trades a bit of memory for a lot of speed.

On a 16 GB RAM system, you can comfortably keep the Gradle Daemon enabled. 
The daemon will consume some memory even when idle, but the benefit is that when you hit “Run” or “Build”, the process is 
much faster than starting from scratch each time. The Gradle team notes the daemon provides caching and JIT optimizations that 
significantly cut down build times.
```
# Inside gradle.properties
org.gradle.daemon=true
org.gradle.jvmargs=-Xmx2048m -XX:MaxMetaspaceSize=512m -Dfile.encoding=UTF-8
```

## Enable Parallel Project Builds
 By default, Gradle executes tasks serially (one at a time), even if your project has multiple independent modules. 
 Enabling parallel builds allows Gradle to compile modules in parallel, utilizing multiple CPU cores. 
 This can significantly reduce build time for multi-module projects
 <br>
<code>org.gradle.parallel=true</code>

## Use Gradle Offline Mode and Build Cache
These settings don’t directly reduce memory usage, but they speed up build processes and avoid unnecessary work, which 
indirectly means Android Studio spends less time doing heavy tasks. On a 16 GB machine, faster builds and less 
background activity can make the IDE feel snappier and free memory sooner.
```
File > Settings > Build, Execution, Deployment > Gradle, and check Offline work.
Command-line: --offline flag
```
**How to Enable Build Cache:**
Gradle Properties: Add org.gradle.caching=true to your gradle.properties 

## Manage the Android Emulator’s Memory Usage (or Use a Physical Device)
If you use the Android Emulator alongside Android Studio, it can be a major memory consumer. The emulator is essentially a virtual machine running Android, which means it can easily use 1–2 GB of RAM (or more) for the virtual device (memory — Android emulator performance is extremely unstable — Super User). On a 16 GB system, running both the IDE and one or more emulators can push memory to the limit. Here’s how to optimize this:. Use a Physical Device When Possible

