Gradle

https://medium.com/gradeup/the-simplest-guide-to-understanding-gradle-758d9924e6ca

— applicationId: This is used for identifying unique id for publishing of the app.
— minSdkVersion: This defines the minimum API level required to run the application.
— targetSdkVersion: This defines the API level used to test the app.
— versionCode: This defines the version code of the app. Everytime an update needs to be of the app, the version code needs to be increased by 1 or more.
— versionName: This defines the version name for the app. this could be increased by any much while creating an update.
* 		buildTypes(release/debug):
— minifyEnabled: this will enable code shrinking for release build.
— proguardFiles: this will specify the Proguard settings file.
* 		dependencies: This specifies the dependencies that are needed to build the project.

org.gradle.daemon=true
org.gradle.parallel=true
android.injected.testOnly=false
android.enableR8=true
android.useAndroidX=true
android.enableJetifier=true
org.gradle.configureondemand=false
systemProp.apollographql.useGlobalApolloCodegen=true

org.gradle.jvmargs=-Dfile.encoding=UTF-8 -Xmx8g -Xms8g -XX:+UseStringDeduplication -XX:+UseStringCache -XX:+HeapDumpOnOutOfMemoryError -XX:+PrintGC -XX:MinHeapFreeRatio=40 -XX:MaxHeapFreeRatio=70 -d64 -XX:+OptimizeStringConcat

# Kotlin optimizations
kotlin.incremental.usePreciseJavaTracking=true
kotlin.parallel.tasks.in.project=true
kapt.include.compile.classpath=false
kapt.incremental.apt=true
kapt.use.worker.api=true

# Android optimizations
android.useAndroidX=true
android.enableJetifier=true
android.databinding.incremental=true

# Flag to enable AIDL compilation. Determines whether to generate binder classes for your AIDL files
android.defaults.buildfeatures.aidl=true
# Flag to enable/disable generation of the BuildConfig class
android.defaults.buildfeatures.buildconfig=true
# Flag to enable Compose feature
android.defaults.buildfeatures.compose=false
# Flag to enable Data Binding
# Note that the dataBinding.enabled property is now deprecated
android.defaults.buildfeatures.dataBinding=false
# Flag to enable/disable import of Prefab dependencies from AARs
android.defaults.buildfeatures.prefab=false
# Flag to enable RenderScript compilation
android.defaults.buildfeatures.renderscript=true
# Flag to enable Resource Values generation. Determines whether to support injecting custom variables into the module’s R class.
android.defaults.buildfeatures.resvalues=true
# Flag to enable Shader AOT compilation
android.defaults.buildfeatures.shaders=true
# Flag to enable View Binding
# Note that the dataBinding.enabled property is now deprecated
android.defaults.buildfeatures.viewBinding=false

