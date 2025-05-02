folders=(
"AndroidEnvironment/package/apk" "AndroidEnvironment/package/aab"
"AndroidEnvironment/DependencyProvider/Gradle" "AndroidEnvironment/DependencyProvider/Proguard" "AndroidEnvironment/DependencyProvider/R8" 
"AndroidEnvironment/AppComponents/Activity" "AndroidEnvironment/AppComponents/Intent" "AndroidEnvironment/AppComponents/Service" "AndroidEnvironment/AppComponents/BroadcastReceiver" "AndroidEnvironment/AppComponents/ContentProvider"
"AndroidEnvironment/interface/xml" "AndroidEnvironment/interface/JetpackCompose" "AndroidEnvironment/interface/CustomViews" 
"AndroidEnvironment/Storage/SharedPreferences" "AndroidEnvironment/Storage/DataStore" "AndroidEnvironment/Storage/Room" "AndroidEnvironment/Storage/FileSystem"
"AndroidEnvironment/Network/Retrofit" "AndroidEnvironment/Network/OkHttp" "AndroidEnvironment/Network/Retro" "AndroidEnvironment/Network/Apollo" "AndroidEnvironment/Network/GraphQL"
"AndroidEnvironment/Asynchronism/Coroutines" "AndroidEnvironment/Asynchronism/Threads"
"AndroidEnvironment/Asynchronism/RxJava" "AndroidEnvironment/Asynchronism/RxKotlin" "AndroidEnvironment/Asynchronism/WorkManager"
"AndroidEnvironment/Testing/Espresso" "AndroidEnvironment/Testing/JUnit" "AndroidEnvironment/Testing/RoboElectric" "AndroidEnvironment/Testing/MockK" "AndroidEnvironment/Testing/Kluent" "AndroidEnvironment/Testing/KEspresso")

for folder in "${folders[@]}"; do
  mkdir -p "$folder"
  touch "$folder"/.gitkeep

git add .
git commit -m "Added folder"
git push origin main
done
