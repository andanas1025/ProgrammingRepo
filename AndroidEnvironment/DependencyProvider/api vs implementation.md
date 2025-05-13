## “api” vs “implementation”:
You can compile a dependency by using either “api”(previously called ‘compile’) or “implementation”. The difference is that when a dependency is compiled using api, the whole project tree gets the access to the dependency and so if any change is implemented inside the dependency, the whole tree is recompiled, while as in case of implementation, only the immediate module (the one in which the dependency is defined) has access to the dependency and so any change to the dependency recompiles the immediate parent only.

## Which one to use?
It’s always better and recommended to use ‘implementation’ as it saves you a lot of build time. Just replace all api with the implementation and try to build the project. If it builds successfully, well and good; otherwise look for any leaking dependency you might be using and import those libraries using api keyword.
