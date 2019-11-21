# ImageRandomizerApp

> The application that randomizes provided images written with Swift, MVP, clean architecture and RxSwift

## Motivation
Refresh knowledge about clean architecture, MVP and RxSwift.

## Design
![Design](docs/images/design.jpeg?raw=true)

## Requirements
1. Xcode 11.0
2. Bundler 2.0.1
3. Swift 5.1

## Installation
1. Clone repo.
2. Open up Terminal, `cd` into your top-level project directory, and run the following command:

```bash
bundle install
bundle exec pod repo update
bundle exec pod install
```

3. Open the project folder, and run `ImageRandomizerApp.xcworkspace`
4. Build and Run (with CMD + R)

## TODO's
- [ ] Check negative use case (no internet connection, error fetching DB, etc).
- [ ] Add SwiftLint.
- [ ] Add Unit tests.
- [ ] Add UI tests.
- [ ] Add DI framework (Swinject or Weaver).


## Inspirations
#### MVP & Other presentation patterns

* [iOS Architecture Patterns](https://medium.com/ios-os-x-development/ios-architecture-patterns-ecba4c38de52#.67lieoiim)
* [Architecture Wars - A New Hope](https://swifting.io/blog/2016/09/07/architecture-wars-a-new-hope/)
* [VIPER to be or not to be?](https://swifting.io/blog/2016/03/07/8-viper-to-be-or-not-to-be/?utm_source=swifting.io&utm_medium=web&utm_campaign=blog%20post)
* [Improve your iOS Architecture with FlowControllers](http://merowing.info/2016/01/improve-your-ios-architecture-with-flowcontrollers/)
* [GUI Architectures, by Martin Fowler](https://martinfowler.com/eaaDev/uiArchs.html)

#### Clean Architecture
* [The Clean Architecture, by Uncle Bob](https://8thlight.com/blog/uncle-bob/2012/08/13/the-clean-architecture.html)
* [Architecture: The Lost Years, by Uncle Bob](https://www.youtube.com/watch?v=HhNIttd87xs)
* [Clean Architecture, By Uncle Bob](https://8thlight.com/blog/uncle-bob/2011/11/22/Clean-Architecture.html)
* [Uncle Bob's clean architecture - An entity/model class for each layer?](http://softwareengineering.stackexchange.com/questions/303478/uncle-bobs-clean-architecture-an-entity-model-class-for-each-layer)
