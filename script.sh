folders=(
"Firebase/Authentication" "Firebase/Crashlytics" "Firebase/RemoteConfig" "Firebase/CloudMessanging" "Firebase/Firestore" 
"Interviews/QuestionsHelper" "Interviews/Resources" "Interviews/SoftSkills" "Interviews/HardSkills" "Interviews/AppliedCases(Behavioral)"
"Leadership/OKRs" "Leadership/KPI"
"Design/Material3" "Design/Figma"
"DesignPrinciples/SSOT" "DesignPrinciples/UDF" "DesignPrinciples/CleanArchitecture" "DesignPrinciples/KISS" "DesignPrinciples/SOLID" "DesignPrinciples/DRY" "DesignPrinciples/WYSIWYG"
"CI-CD/GithubActions" "CI-CD/Jenkins" "CI-CD/TravisCI" "CI-CD/Bitrise" "CI-CD/Fastlane" "CI-CD/CircleCI"
"VersionControl/git" "VersionControl/Github" "VersionControl/Gitlab" "VersionControl/bitbucket"
"Fundamentals/IDE" "Fundamentals/KotlinBasics" "Fundamentals/OOP"
)

for folder in "${folders[@]}"; do
  mkdir -p "$folder"
  touch "$folder"/.gitkeep

git add .
git commit -m "Added folder"
git push origin main
done
