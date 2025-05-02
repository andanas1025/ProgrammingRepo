folders=("RecursionAndBacktracking/N-queens" "RecursionAndBacktracking/SudokuSolver" "RecursionAndBacktracking/Permutations" "RecursionAndBacktracking/SubsetSum")

for folder in "${folders[@]}"; do
  mkdir -p "$folder"
  touch "$folder"/.gitkeep

git add .
git commit -m "Added folder"
git push origin main 
done
