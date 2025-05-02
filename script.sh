folders=(
"Algorithms/Hashing-Encryption/HashFunction" "Algorithms/Hashing-Encryption/RSA-AES"  )
for folder in "${folders[@]}"; do
  mkdir -p "$folder"
  touch "$folder"/.gitkeep

git add .
git commit -m "Added folder"
git push origin main 
done
