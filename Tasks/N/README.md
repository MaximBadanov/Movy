# Auto-testing

## Links:
- https://medium.com/adessoturkey/unit-testing-in-swift-c1607da61e13
- https://vc.ru/u/1274559-l-tech/736198-testirovanie-mobilnyh-prilozheniy-kak-ego-provodit-i-kakim-ono-byvaet
- https://habr.com/ru/articles/459220/
- https://www.swiftbysundell.com/articles/integration-tests-in-swift/
- https://habr.com/ru/articles/654591/

## Task A

- Implement mock NetowrkService for usage in unit-testing in future (PR for it), should be in folder MockServices in Test target

## Task B

- Implement unit-tests for View model in results screen, try to create a lot positive and negative test-cases, should be in folder Unit-tests in Test target
- Don't forget that @Published in SwiftUI can be used as Combine Publisher $someParam.sink(...)
- Use setUp and tearDown for init and deinit properties of tests
