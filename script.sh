folders=("Algorithms/String/KMP" "Algorithms/String/RabinKarp" "Algorithms/String/trie" "Algorithms/Scheduling/RoundRobin" "Algorithms/Scheduling/ExponentialBackoff" "Algorithms/Most-know/BigONotation" "Algorithms/Most-know/Memoization" "Algorithms/Most-know/DivideAndConquer" "Algorithms/Most-know/SlidingWindow" "Algorithms/Most-know/TwoPointers" "Algorithms/Most-know/Union-find")
for folder in "${folders[@]}"; do
  mkdir -p "$folder"
  touch "$folder"/.gitkeep

git add .
git commit -m "Added folder"
git push origin main 
done
