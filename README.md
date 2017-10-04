# BankAccount_ModelUnitTestingExample
From Chapter 4 of iOS Code Testing Test-Driven Development and Behavior-Driven Development with Swift.

This chapter goes through an example of a Bank and writing tests for it. I'm disappointed about the cycle of writing numerous tests, writing some production code, letting some tests fail for a while, writing some more production code, then fixing the tests. This goes against the practice of Red-Green-Refactor. Ideally you would ignore tests if you couldn't fix them immediately instead of letting them continue to fail and you would write one failing test and change your code to make it pass. This would accomplish small incremental improvements in the code and your tests.
