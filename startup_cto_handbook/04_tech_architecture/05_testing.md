## Testing

Imagine that, instead of testing software code, your job was to be the inspector for a municipal bridge. The bridge is built and now it's your job to inspect it and decide whether or not to allow it to open to the public. Do you inspect every single bolt and rivet on the bridge? Doing so would probably give you high confidence the bridge was safe, but it would also take a long time and derail the mayor's plans to open the bridge next week.

Another reasonable strategy would be to decide exactly which elements of the bridge are essential to meet the designated safety factor and test/ inspect those. Maybe that's only every other rivet, plus all the cables and structural concrete.

Similarly, in software engineering testing, the goal isn't coverage for coverage's sake, but coverage that provides confidence that the software does what it is intended to do.

Effective software testing is not always about 100 percent code coverage. The bar for a good software test suite is that it gives your team confidence that, when the build is green and all tests pass, the software is ready to be released to end users. That may mean 100 percent code coverage, or it may mean 30 percent code coverage. The exact number is up to you to determine and monitor, and that amount of effort may change over time if you find the tests are not providing the same confidence they once were (and, conversely, if you find you're overinvesting i.e., you're spending a lot of resources on a test suite, yet bugs are still making it out too often).


### Testing/Quality Assurance Teams

Depending on the size of your team, you'll either have no dedicated test team, one test team working on one or many types of tests, or many test teams working on various kinds of software testing. No matter who is doing the test it's important to recognize that software testing is a complicated process, and nuance matters. To test software effectively, the tester, whether they wrote the code or it was thrown over the fence to them, has to deeply understand what the code/software should be doing. Your role is to set up your teams so that they can empathize with each other. To do this, ensure that the teams share goals/KPIs, that your process has robust and continuous communication between the developer and tester, and monitor that the teams have a healthy, productive relationship.

### Test Quality

Before jumping into the nuts and bolts of the different software testing paradigms, it's worth thinking about what the purpose of software testing is, and thus what makes a good test, and conversely what makes a bad test.

Defining bad tests is simple. Bad tests have a higher cost than benefit to your team. Some common characteristics of bad tests:

* It takes more time to maintain and fix tests for legitimate code changes than the pain you save by bugs found.

* The test has a high false positive rate or is inconsistent, which slows down CI and causes developers frustration and context-switching cost to re-run spurious failures.

* The test is poorly thought out and literally validates that the code does the wrong thing.

* The suite tests that the code does the right thing and has low false positives, but it's so convoluted and hard to understand that only the person who wrote the test can add a new one, and every other engineer who looks at it gets a migraine.

* The test does not instill confidence that the code under evaluation is ready to be shipped to end users.

With that picture in mind, it's relatively easy to see by contrast what attributes good tests should have. Good tests are:

* Easy and fast to run both locally and in a shared CI environment

* Capable of running reliably and consistently producing the same result Easy to augment

* Easy to refactor or update for underlying logical changes

* Appropriately coupled to the underlying code patterns, testing at the right altitude (so to speak) to capture breakages that matter

* Easy for any engineer to understand and work on

One of the best ways to evaluate your testing approach is also the most obvious: ask how your team feels about the tests with a simple sentiment analysis. The results tend to be very binary either tests are a source of security that teams rely on, and naturally augment them because they obviously are a net value-add; or teams passively, or even actively, hate their tests because they're a drain on productivity with not enough obvious value.

### What To Test

Your team should be adding testing in ways that boost confidence that the system works correctly while minimizing the additional burden of maintaining those tests long term in the face of organic system growth. A general pattern to minimize this pain is to test the public interface. Public interfaces should be well thought out and comparably stable over time.

They are also the happy path that consumers of the software will actually experience.

Tests on public interfaces should therefore change little over time and also provide confidence that the parts of the code that matter are working correctly.

The public interface for your software may vary from project to project. For many projects, it'll be an actual HTTP-based API; for some, it'll be a set of functions/classes in a library or internal service. For other projects it may be a user interface.

### Testing Type Comparison

Software testing can be broken down into the following categories/ paradigms:

* Unit testing
* Integration testing
* End-to-end testing
* Manual testing
* Semi-automated testing

The attributes that differentiate these types of testing are as follows:

**Code planning:** How much forethought is required in the actual writing of the code to ensure it's testable under this test paradigm.

**Test scope:** How much each test can evaluate at once.

**Change granularity detection:** What size of, or type of, code change a test is likely to detect and cause a failure.

**Run cost:** How quickly or how costly it is to run the tests, in time or in dollars.

**Addition effort:** How much effort is required to add additional coverage.

**Setup effort:** How much effort is necessary to set up an effective test suite.

The following chart summarizes how the five paradigms map to these metrics. Note that there is no one perfect test paradigm; each has tradeoffs, and I encourage you to think carefully about which tradeoffs make sense for your company and codebase. The right answer is usually a blend of different test paradigms, using each type of test where it adds the most value in your application.

TODO: Insert the table from the book


### Unit Tests

Unit testing is often the first thing that comes to mind when somebody talks about software testing. It's widely what's taught in school and included in textbooks, and it usually gets the most effort in the real world. Given all this, you'd think unit tests were the best type of test, though I'd argue that's not always the case. Let's begin by clearly defining unit tests so as to differentiate them from other testing paradigms.

Unit tests run entirely in memory on a machine, in a shared memory space with the code under evaluation, without requiring any network connectivity or dependency on external services. Most unit tests are very fast to run, test very small amounts of code at a time, and are relatively easy to get started with. Unit tests are usually also tightly coupled to your code contracts and often require new code in the form of mocks to enable code- under-test to execute without normally available external dependencies.

The key tradeoff made by unit tests and their primary downside is that they are tightly coupled to the code under test. It's altogether too easy to have unit tests be deeply intertwined with actual function calls and internal data objects. is deep dependency means any refactor of the code even simple and benign changes will require considerable unit test updates as well. The creation of mocks and test data fixtures often also requires a considerable amount of code to create and maintain to allow unit tests to run, adding unexpected cost to the unit testing framework.

### Integration Tests

An integration test relaxes the in-memory and zero-dependency constraints of unit tests. As a result, integration tests tend to run slower and integrate with code-under-test at a higher level. When they run in a different process from code under test, they're usually exercising an externally exposed contract, such as an API. is means that internal refactors that don't change API behavior tend to go unnoticed by an integration test, making these tests overall less brittle but also less likely to detect smaller side effects.

In addition, integration tests require the creation of fewer or no mocks and, as a result, can be less code to implement.

### End-To-End Tests

An end-to-end (e2e) test exercises code in the same manner as the end user. For backend code, end-to-end tests and integration tests may function in the same way, running code via an external contract. For user-facing frontend code, an end-to-end test usually involves mechanizing the client interface, often a web browser or mobile phone. I would not encourage any tech leader to write their own client mechanizing code this is a particularly gnarly problem that downloadable tools like Selenium, Cypress, and Puppeteer can take off your hands. For mobile, there are tools like HeadSpin and Detox.

The key tradeoff of end-to-end tests, in the real world, is reliability. At least at the time of writing, reliable web end-to-end tests are still somewhat elusive; the nature of how the browser renders means race conditions occur very easily by accident. Building a reliable web end-to-end test suite requires considerable care, attention to detail, and maintenance.

The payoff, though, is not insubstantial, as it's possible to create very high test coverage and very high confidence in functionality of user-facing flows with e2e test suites. There are several companies, including testim.io and rainforestqa.com, that are exploring using AI and ML to solve this problem. These solutions deploy fuzzy visual testing instead of relying on the presence or absence of CSS selectors, for example, to try and improve test reliability. Hopefully by the time you read this, the state of the art will have advanced a bit further, and the value proposition of end-to-end tests will be even stronger than at the time of this writing.

#### Visual Regression Testing

Visual regression testing is a relatively new paradigm that aims to detect defects in user-facing applications by performing deltas on rendered visuals. There are frameworks that do that at various levels of granularity, ranging from capturing screenshots of entire pages to rendering individual components, and producing deltas to detect defects. The obvious drawback is that every intentional change to any visual tested component will require a change to a test.

Fortunately, these test frameworks often make it simple and painless to reproduce the set of correct visuals for comparison, which opens up another pitfall: with easy tooling to overwrite the testing target, it becomes very easy to produce false negatives, accidentally accepting a visual delta that is, in fact, erroneous.

#### Manual Testing

Manual testing, as the name implies, is run by humans and not machine code. For humans testing code, we can further subdivide this category into specialized and unspecialized testers.

#### Specialized Manual Testing

Specialized manual testing is an in-house manual testing team. Beyond the traditional benefits of an in-house team, such as aligned incentives and a long-term working relationship, the value of being in-house is that the team can build expertise in your product and deeply understand your users. is allows the team to identify defects that an untrained or unfamiliar tester would miss. A high-quality testing team can not only serve as a resource for catching software defects but also contribute valuable feedback on a product level, identifying inconsistencies in design, and asking provocative questions about how or why something works the way it does.

A great in-house manual testing team can provide a huge improvement in overall software and product quality.

Specialized manual testing teams should be creating detailed test plans for product functionality and storing those plans in an easy-to-retrieve/ repeat fashion, ideally with a tool like TestRail that allows creating full test suites of manual test plans which can be rerun by the team manually on demand. Another benefit of a tool like this is integration with other developer and product tools for example, linking a TestRail run to a Jira epic to show how many manual and regression tests were run for the release of a given feature. Not only is this valuable as a launch checklist item, but it also aids in retrospectives for any released defects, allowing you to revisit what manual tests were run before releasing any given feature, and adding additional manual tests to catch any defects that made it through.

#### Unspecialized Manual Testing

Unspecialized manual testing is often referred to as crowdsourced testing. There are several proprietary platforms for sourcing testers, such as Rainforest QA, Pay4Bugs, 99Tests, and Testlio. The pricing model for these platforms usually varies based on the number of validated bugs submitted. Depending on the nature of your product and the types of defects you're looking to optimize for, crowdsourced testing can be a very cost-effective and low-effort way to improve product quality.

### Semi-Automated Testing

Semi-automated testing is a relatively new category of software testing. These tests are created by non-technical staff perhaps your specialized manual testing team and then run in either a completely automated or supervised environment.

The major pitfall of these tests is reliability. Because they're created by non-technical staff, they may not be quite as precise as fully automated tests, making them more prone to false positives and false negatives. That said, this space is rapidly evolving with new companies and tools launching every year, such as Rainforest QA and Testim, with strategies to improve reliability and lower overall cost.
