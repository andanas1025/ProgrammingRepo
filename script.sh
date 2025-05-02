folders=(
"AndroidEnvironment/Linting/Ktlint" "AndroidEnvironment/Linting/Detekt"
"AndroidEnvironment/Debugging/Timber" "AndroidEnvironment/Debugging/LeakCanary"
"AndroidEnvironment/Debugging/Chucker" "AndroidEnvironment/Debugging/JetpackBenchmark"
"AndroidEnvironment/Debugging/Profiler"
"AndroidEnvironment/Distribution/FirebaseDistribution" "AndroidEnvironment/Distribution/GooglePlayStore"
"AndroidEnvironment/Encryption/Cipher/AES" "AndroidEnvironment/Encryption/Cipher/RSA" "AndroidEnvironment/Encryption/Cipher/DES-3DES" "AndroidEnvironment/Encryption/KeyGenerator/AES" "AndroidEnvironment/Encryption/KeyPairGenerator/RSA" "AndroidEnvironment/Encryption/KeyPairGenerator/EC" "AndroidEnvironment/Encryption/Keystore" "AndroidEnvironment/Encryption/EncryptedSharedPreferences" "AndroidEnvironment/Encryption/EncryptedFile"
"AndroidEnvironment/ImageHandler/Coil" "AndroidEnvironment/ImageHandler/Picasso"
"AndroidEnvironment/ImageHandler/Glide"
"AndroidEnvironment/Animations/Lottie" "AndroidEnvironment/Animations/ValueAnimator"
"AndroidEnvironment/Animations/Transitions" "AndroidEnvironment/Animations/ObjectAnimator" "AndroidEnvironment/Animations/MaterialMotion"
)

for folder in "${folders[@]}"; do
  mkdir -p "$folder"
  touch "$folder"/.gitkeep

git add .
git commit -m "Added folder"
git push origin main
done
