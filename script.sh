folders=("DesignPatterns/Architecture/Repository" "DesignPatterns/Creational/Builder" "DesignPatterns/Creational/Factory" "DesignPatterns/Behavioral/Observer/Flow" "DesignPatterns/Behavioral/Observer/Rx" "DesignPatterns/Behavioral/Observer/Command" "DesignPatterns/Behavioral/Observer/Mediator" "DesignPatterns/Behavioral/Observer/LiveData" "DesignPatterns/DependencyInjection/Dagger" "DesignPatterns/DependencyInjection/Hilt" "DesignPatterns/DependencyInjection/Koin" "DesignPatterns/DependencyInjection/Kodein" "DesignPatterns/Creational/Singleton" "DesignPatterns/Structural/Adapter" "DesignPatterns/Behavioral/Strategy" "DesignPatterns/Structural/Facade" "DesignPatterns/Structural/Decorator" "DesignPatterns/Architecture/MVVM" "DesignPatterns/Architecture/MVI" "DesignPatterns/Architecture/MVP" "DesignPatterns/Architecture/MVC" "DesignPatterns/Architecture/CleanArchitecture")

for folder in "${folders[@]}"; do
  mkdir -p "$folder"
  touch "$folder"/.gitkeep

git add .
git commit -m "Added folder"
git push origin main
done

