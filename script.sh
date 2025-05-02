folders=("DataStructure/arrays" "DataStructure/List" "DataStructure/Map" "DataStructure/Set" "DataStructure/Stack" "DataStructure/Queue" "DataStructure/Deque" "DataStructure/Trees" "DataStructure/Graph" "DataStructure/Collections" "DataStructure/Iterable" "DataStructure/Android/ArrayMap" "DataStructure/Android/SparseArray" "DataStructure/Android/SparseBooleanArray" "DataStructure/Android/Bundle" "DataStructure/Android/LruCache" "DataStructure/Android/Cursor" "DataStructure/Android/LiveData" )

for folder in "${folders[@]}"; do
  mkdir -p "$folder"
  touch "$folder"/.gitkeep

git add .
git commit -m "Added folder"
git push origin main
done
