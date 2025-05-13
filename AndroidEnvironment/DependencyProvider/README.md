## Improving gradle build times
https://blog.dipien.com/10-great-ideas-to-improve-your-gradle-build-times-2a6b281c69c6

1. Use the latest dependencies versions

2. Enable Gradle Build scans
A build scan is a shareable record of a build that provides insights into what happened and why.

3. Avoid mixing Java & Kotlin code
Mixing Java & Kotlin code in the same module is bad for build times.

5. Deactivate Android Gradle Plugin unused features [Android only]

6. Remove unused code

7. Remove unused resources [Android only]

8. Apply Gradle Doctor plugin
The Gradle Doctor plugin analyzes your Gradle configuration and automatically detects issues on build time.

9. Disable Jetifier [Android only]
Having Jetifier enabled on your project (android.enableJetifier = true on your gradle.properties) impacts on the build speed, because the Android Gradle Plugin has to transform all the support-library-dependent artifacts to AndroidX. So, disabling jetifier is a good idea for your android project if you want to speed up your build speed. But doing that is not always a trivial task. In this article, you will find a list of 6 steps to follow, so you can fully migrate your app to AndroidX and then safely disable Jetifier.

10. Apply Android cache fix Gradle plugin [Android only]
Some Android plugin versions have issues with Gradle’s build cache feature. When applied to an Android project, the Android cache fix Gradle plugin applies workarounds for these issues based on the Android plugin and Gradle versions.


