## Architecture

There are many excellent resources that explore various architectural patterns deeply; one of my favorites is Martin Fowler's *Patterns of Enterprise Application Architecture*. In this chapter, I'll provide a summary of some key phrases you'll hear so you have context when exploring these topics in depth elsewhere.

### Domain-Driven Design

Domain-driven design (DDD) is an approach to software development that focuses on understanding and modeling the problem domain in order to design better software solutions.

The core concepts of DDD include:

**Domain model:** A representation of business concepts as objects in your technical system;

**Ubiquitous language:** A common, consistent vocabulary and language that is used across your company to minimize confusion;

**Bounded context:** The boundary within which the domain model applies and where the ubiquitous language is used.


#### High-Level Patterns

When somebody uses the phrase technical architecture, they are usually referring to how code is executed and how information moves around in a system. Most descriptions of architecture involve the phrases services, monoliths, or message transports. This is in contrast to coding patterns, in which phrases such as object-oriented, functional programming, or dependency injection appear frequently. Coding patterns may sometimes be called code architecture and are discussed in Coding Patterns, page 188.

The highest-impact decision in technical architecture is whether code runs as a monolith or as a set of services (commonly referred to as microservices). I'll start here with a description of what each pattern looks like, and then provide some guidance on the tradeoffs between them.

##### Monolithic Architecture

The monolithic architecture pattern is one in which all code is executed as a single process, where information moves between pieces of your system entirely in memory, modeled as simple function calls. If you've ever sat down and built a simple application in an afternoon, chances are good it would fall into the category of the monolith. Monoliths come in all sorts of shapes and sizes, from very small to massive, multi-million-line projects.

The key to building a successful monolith is to carefully design the data flows within the application, using domain-driven design. You can measure this pretty easily; you want to ensure that when a developer goes to change the functionality of the application, it is obvious where in the monolith they should be working. They should only need to change code in an obvious and well-defined or confined area to achieve their goal. Every additional area of the codebase that needs change to meet a functional requirement adds additional complexity or opportunity for error, and in general slows down development.

Key features of a monolith:

* Code is deployed as a single unit.
* Code is managed in a single source-code repository.
* Deployed code is scaled as a single unit up and down.
* Information moves between parts of the system in memory, usually with function calls.
* Domain-driven design and clear information flow design are not enforced by the system, leaving it up to the engineers to do design well.

##### Service-Oriented Architecture (Soa)/Microservices

The phrase service-oriented architecture (SOA) originated in the 1990s and is used to refer to some fairly specific technology choices. Nowadays, the phrase is used to more broadly describe a system where information moves between parts of the system over a network. The main tradeoff with an SOA is that, in comparison to a monolith, it can be very complex to think about and requires a team to do a lot of setup and thoughtful design to truly ensure that the benefits outweigh added complexity.

Microservices are a subset of service-oriented architecture where each service is as the name suggests very small. There are system implementations with thousands of microservices, each of them only a few lines of code. That said, you do not need to have thousands of microservices to experience the benefits of a service-oriented architecture. Even breaking out a system into four or five smaller services, in the right circumstances, can provide major improvement to code health.

You may have heard that microservices are the only good architecture pattern; this is untrue. The perception stems from the fact that many monoliths are poorly designed or haven't received the attention and investment in tech debt required to unlock productivity. The idea that all microservice architectures are a joy to work in is also untrue. There are many microservice implementations that for one reason or another fail to realize the benefits as well.

Key features of an SOA or microservices system:

* Different services are independently deployable and scalable.
* Code is managed by either a single source-code repository or many code repositories.
* Information moves between parts of the system over a network, often via HTTP, RPC (Remote Procedure Call), or queuing systems.
* Data contracts must be intentionally designed and well thought out, as contracts are implemented as APIs and communicated over a network.

##### Choosing Between A Service-Oriented Architecture And A Monolith

In general, a monolith is easier to set up than an SOA and requires considerably fewer technical logistics to manage. For this reason, a monolith is the right answer on day one for the vast majority of problems. If the team is very disciplined and thoughtful about designing a monolith, it can scale with the team forever. is won't be the case for everyone, however. For many teams/projects, a monolith's lack of enforced contracts, inability to scale as separate components, and lack of enforced separation of concerns will become a barrier to productivity.

If you do find yourself contending with an unruly monolith, this doesn't mean your engineers are bad at their jobs. The nature of software engineering is that requirements change and systems evolve. Maintaining a monolith may mean, at times, investing considerable resources into updating the system design to evolve as well, and it is when a team fails to make this investment that monolith complexity becomes a barrier to productivity.

There are some circumstances where moving to a service-oriented architecture is clearly the right choice:

Your service has elements that need to be scaled independently. For example, one feature consumes lots of CPU resources and you don't want that to interfere with other features, or you prefer not to pay to scale up all features when it's more cost-effective to scale that one piece independently.

You're working on functionality that needs to expose its own independent API and has its own exclusive data domain apart from the main system. Especially if this API is meant to serve external customers, then having this functionality live as its own service is an obvious good choice.

For some reason, you need to use another programming language as part of your application. A good example might be because there is a robust and high-quality framework for solving a certain kind of problem in Python, but the rest of your application is in Java. Bridging these two languages in memory is possible, but clunky. The easier option is to bridge them via an API, leaving them naturally hosted as separate services.

Deploying your monolith is overly expensive, slow, or risky. In this case, you can enable additional productivity and reduce time to deploy by deploying new code as an independent service. Just ensure that the new service operates independent of the monolith and you're not creating new deployment dependencies.

##### Source Control for Service-Oriented Architectures: monorepo and manyrepo

Managing source code for a monolith is fairly straightforward because it lives in a single repository with a single-build system. Once you start to break out your code into different packages, projects, and services, you're faced with a decision: do you manage multiple services in a single code repository, or do you make multiple repositories? is tradeoff is referred to as monorepo vs. manyrepo.

If you choose to manage multiple services as a monorepo you'll likely want to look for a workspace management solution (e.g., yarn workspaces for JavaScript ecosystem) to manage building the projects separately. Here are some basic differences between the monorepo and manyrepo approaches:

**Pros and cons of monorepo
TODO: Put the chart here

it's easy to ensure every service or package dependency is up to date with the latest version.

Many CI systems do not support multiple packages in a single repo natively, so you have to build a harness manually to support this.

Having all the code in a single repository improves discoverability, making it easier for developers to find the module or reference they're looking for. IDEs have robust support for this kind of search.

**Manyrepo, by contrast**

Requires using a central package manager with version control. This isn't necessarily a bad thing, but it can lead to significant overhead when working on a project and its dependencies simultaneously.

Integrates cleanly with CI/CD pipeline systems (Bitbucket pipelines, GitHub actions, etc.).

My general advice is to keep things simple. For small-to- medium-sized projects, a monorepo will be simpler to set up and maintain. Transitioning to manyrepo means being willing to make an investment in tooling to ensure manyrepo works smoothly for your developers; it's a significant cost. For a small startup, that cost is likely not worth it. On the flip side, if you're growing rapidly or are passing fifty-plus developers, and monorepo is becoming unwieldy, and you've got a dedicated internal platform or DevOps team that can do the heavy lifting of making manyrepo easy to use, then transitioning to a manyrepo pattern may be the right choice.

##### The Distributed Monolith

A distributed monolith is a system deployed as multiple services that are not designed with sufficient independence or isolation and thus are not independently deployable. To be clear, this is the worst of both worlds. Rather than enabling a developer to go to any service and to work on it in isolation, not thinking about any other service, this setup requires that developer to reason about how that service affects other services. Not only that, but they have to then make changes potentially in multiple services and coordinate deployments in a particular order between services to ensure compatibility during releases. is development and deployment complexity negates the key benefits of a microservice system.

If you notice your team falling into these patterns or complaining about coordinating releases between services, this should be a red flag for you to look closer and consider paying down some tech debt to get back to independently deployable services. That tech debt is usually located in your contracts, the design of your APIs, and how data is handled in your system.

### Writing Readable, Good Code

In a professional environment, the principal audience for any given line of code is not the computer but the developer who has to read that code at some point in the future for further development. This is the golden rule of programming: engineers should be writing code with the same level of readability that they expect of anyone else's code.

#### Choice Of Language And Ecosystem

Per the golden rule of programming, your choice of language should enable your team to write code that is highly readable and maintainable. In general, a good engineer can do that in any language; however, some languages make it easier than others to do so consistently. Some other considerations for what language or ecosystem to choose:

* How large is the talent pool that is familiar with that language, and more specifically is familiar with that environment and also interested in startups like yours?
* Are there existing implementations that you can use as a starting point?
* Do you have particular performance or scaling requirements? Some languages are much faster than others for specific types of tasks. Haskell is famously inefficient at string manipulation, and C is famously fast at most things, though there are other languages that, for certain problems, approach or exceed the speed of C while providing an easier and more friendly coding environment.
* Is there a particular framework that might be a good starting point in a particular language? React Native, for example, is a powerful cross-platform mobile language that requires JavaScript or TypeScript.

In the enterprise setting, I recommend languages with static type systems, such as Golang, TypeScript, Rust, etc., so that the compiler can do more heavy lifting for ensuring code correctness, so that those constraints are visible to other developers, and so you don't run into that category of issue at runtime. You should strive for a local development environment where the tools are finding errors before your code is executed, called compile time checks. Fixing a compile time check is in general much faster and cheaper than fixing a runtime issue, and also by virtue of the fact that it's automated is better equipped than a runtime check to reliably find problems.

#### Code Style And Formatting

In any widely used language, there will be either a published standard for how code should be formatted (e.g., PEP8 in Python) or a configurable tool that can enforce a particular code style and formatting (e.g., ESLint or Prettier in JavaScript, or ReSharper in C#). Most of these tools are very good at ensuring that code, regardless of who wrote it, is stylistically identical. In the spirit of ensuring your codebase is readable, there is no excuse for not using one of these tools and ensuring 100 percent of your codebase is formatted according to the same rules. Which rules you use is entirely you and your team's preference, but just make sure it's consistent and produces a readable result.

I recommend you have a set of configuration options or instructions for the integrated development environments (IDEs) your developers use on how to auto format code when a file is saved. You should then, in your continuous integration system, ensure that all new code is formatted correctly.

Be careful: enforcing style in your continuous integration system without automatic formatting is very frustrating for engineers, so make sure to train everyone in setting up their IDE correctly on day one to avoid consistent surprises and wasted cycle time from lint failures in CI.

#### Static Code Analysis

Modern static code analysis is capable of identifying and alerting on a wide range of common code issues, ranging from security gaps to outright bugs to stylistic inconsistencies. These tools are fairly inexpensive and integrate neatly with a wide range of commonly used continuous integration systems and developer IDEs. From experience using these tools on a range of projects and programming languages, the signal-to-noise ratio is very good, and the output is a net gain in productivity and software quality. Relatively early on in your software project's life, you should integrate static code analysis. I encourage you to look at tools that are specific both to your programming language of choice e.g., ESLint for JavaScript as well as generic analysis platforms such as SonarCloud, Codebeat, Scrutinizer-CI, Code Climate, or Cloudacity.

#### Greenfield vs. Brownfield

Greenfield software development refers to development work in a new environment with minimal pre-existing legacy code and free choice on tools, patterns, and architecture. is has the obvious advantage of allowing the thoughtful choice of the right architecture and tooling for the job, and no distraction from existing tech debt. The subtle downside is that, with so much choice and so few constraints, the risks of making poor decisions are higher. There is also usually a considerable bootstrap cost for new projects that is underestimated things like setting up testing, build systems, static code analysis, etc.

Brownfield software development refers to the opposite of greenfield, working with existing legacy systems. The tradeoffs are essentially inverted: for better or worse, you're stuck with the high-level decisions that have been made by those before you.

The largest risk in brownfield development is not invented here syndrome. Not invented here is the tendency for individuals to avoid taking responsibility for or paying sufficient attention to things they did not create themselves. In brownfield software development, this can lead to systematic underinvestment in understanding existing work, causing frustration and inefficiency in augmenting or modifying existing systems. I strongly encourage managers to make explicit space for a team to read and understand an existing system before asking them to modify it in any way. The time spent in comprehension upfront will be paid back by fewer surprises and faster velocity down the road.

### Coding Patterns

The subject of what style of code to write is a religious discussion for many coders. My intention in this chapter is to provide a brief description of what the most common phrases in coding patterns mean, and refer you to more extensive resources on each practice.

If you're faced with what feels like an emotional conversation on this topic, keep in mind that many successful companies exist that use each of these patterns. Everything is a tradeoff. A bad programmer can make a mess with any tool, and conversely a great programmer will find a way to make a readable solution even with suboptimal tools.

#### Object-Oriented Programming (OOP)

Object-oriented programming (OOP) is a methodology of designing code to mirror real-world nouns and verbs. A typical example would be to model an interaction between two people as two Person objects, and any actions for people, such as talking, would be functions on those objects. Many languages are inherently object-oriented, such as Python, Ruby, and C#. Some, like JavaScript or C++, are Object-Optional (supporting to an extent both object-oriented and functional styles) and others are something else entirely.

#### Purity

Code that is pure has no external dependencies or side effects. Said another way, given the same inputs, a pure piece of code will always produce the same outputs. The advantage of pure code is that it is easily testable and requires no external setup or mocking. Pure code is also easier to read and understand, as it does not require reading any additional code to understand what it does. A simple example of pure code would be a function that sums together two numbers; given any two input numbers, the sum function always produces the same output.

Some code is inherently impure for example, code that interacts with the outside world, such as a filesystem, network, or database. For most other scenarios it's possible to model business logic in a pure way. Where possible, I encourage you and your team to write pure code.

#### Functional Programming

To stick with the parts-of-speech model for describing coding patterns, functional programming treats verbs (functions) as a first-class part of the system. Most functional programming starts with very tiny pieces of functionality and composes it together to create more sophisticated and complex systems. When it's done well, the benefit of functional code is that it tends to be more pure, and thus easier to read, reason about, and test in isolation. Academic examples of functional code even exist that can be formally reasoned about, meaning one can produce a mathematical proof that code runs correctly.

Functional programming, done poorly, can create very verbose and hard-to-read code. For example, when composing together multiple functions, it's important to consider how many functions are being composed, and how obvious the behavior of each function is in the composition chain.

A worst-case scenario: Imagine a function chain of ten functions in a row, each with names that have no meaning to you (e.g., a(b(c(d(e(f(g(h(i(j(input)))))))))) ). The only thing worse would be if the definitions of these alphabet functions were in ten different files in different places of the codebase, or worse, came from different imported libraries.

#### Extreme Programming And Test-Driven Development (TDD)

Extreme programming is a development methodology, akin to Agile or SCRUM. It may be used to reference the formal methodology described in the book *Extreme Programming Explained* by Kent Beck, or more informally to address some of the coding practices espoused by the methodology. The informal usage of the phrase describes the testing practices in the methodology, specifically the idea of test-driven development.

Test-driven development (TDD) is a process where tests are written before functional software, as opposed to writing functional code first and tests after. Behavior-driven development (BDD) and acceptance-test driven development (ATDD) are similar practices.

#### Dependency Injection

Dependency injection is a pattern where the service dependencies of a particular object, module, or block of code are passed in, rather than instantiated. For example, a data object can instantiate its own connection to a database by looking up a connection string in a configuration file and creating the database client. Alternatively, a parent-calling block of code can create the database service, then pass the single database service into each instance of the data object.

The main advantage of dependency injection is that it decreases the coupling between a service and its dependencies, effectively adding a documented interface between them. is interface allows, for example, other implementations of the interface to be used, such as a mock service in a testing context.

There are subtleties inherent to doing dependency injection cleanly. I encourage you to adopt frameworks or patterns that are commonly used and well thought out for your programming language.

#### Domain-Driven Design

The term Domain-Driven Design comes from a book by Eric Evans, *Domain-Driven Design*, published in 2003. The core idea is to create a model be it for objects in object-oriented design or for a schema for your database that models the nouns in your business domain. is may seem simple and intuitive; however, with complex business domains, it's easy for code either to inconsistently model the domain, or to model it in a way that hinders comprehension by the team. Especially with larger and more complex problems, I always insist that the team sit down and agree on a consistent way to model the problem, using consistent terminology to refer to the same concepts across the entire system.

### API Contracts

An application programming interface (API) is not unlike a legal contract.

It is designed, tweaked, and agreed upon in advance of implementation, and both parties expect the other to conform to the contract to achieve a desired outcome. When you design and implement an API, you're making a commitment to the consumers of your API that it will work in a certain way. Like a legal contract, you may have a specific idea of how your API will function, but if the nuances are interpreted differently by the other party, you may be unable to achieve your purpose. API details truly do matter, and as a technical leader it's your role to ensure that your team is designing and building APIs in a consistent, efficient manner.

All that said, building a high-quality API is a surprisingly complex task. It requires taking into account many things: designing the interface, implementing the code that handles the logic/data, testing the functionality, building the documentation, addressing versioning/change management, keeping the documentation up to date as the API changes, and making it easy for developers to interact with the API. Doing these things well can mean the difference between building an API that developers love and an API that stymies implementation and slows down time to launch important projects. There are two main levers at your disposal as a leader to ensure you're handling these things well: governance and architecture.

#### API Design Governance

Countless decisions go into every element of building an API. What separates good APIs from bad APIs is the consistency, predictability, and correctness of those decisions. As a technical leader the job falls on you to make sure that, across your organization, you have a structure in place to help developers build APIs that are consistent with one another, predictable in that they use common patterns that are appropriate for the problem at hand, and correct.

Achieving these goals requires some form of governance system. is can range from a set of clearly documented guidelines and standards to a group of people who are responsible for reviewing and approving all APIs on a regular basis. The larger your team, the more time and effort you'll need to invest in process and governance to maintain a high standard.

#### API Architecture

Out in the wild you're likely to encounter two main types of APIs: HTTP- based and non-HTTP based. As with any tool, HTTP has its tradeoffs and isn't ideal for every job, so if your business requirements dictate ultra-low latency, or ultra-high throughput/low overhead, or real-time streaming applications, you'll likely be looking for something beyond HTTP. Below I discuss a handful of HTTP API types and then briefly cover some non- HTTP APIs you're likely to run into.

#### HTTP-Based APIs

If you're building a web or mobile application, or even most system backends, chances are very high you'll primarily be dealing with HTTP APIs.

*XML and SOAP APIs*

In the early 2000s, the most common API pattern was the XML-based Simple Object Access Protocol (SOAP). SOAP and other XML-based API styles are well and truly out of fashion with startups in the 2020s, but they are still prevalent in legacy systems, especially from larger companies in technologically slow-moving industries. You should not be building new SOAP or XML-based APIs.

*REST*

REST (Representational State Transfer) is a generic phrase that describes using JSON over HTTP as an API. REST is sometimes augmented with a pattern called HATEOAS, which provides a more formal set of standards to the content/payloads of a REST API. Absent HATEOAS (which isn't all that common), REST does not include formal or branded guidance for how JSON data is modeled. REST APIs commonly model a single noun as an endpoint and use HTTP verbs (GET, PUT, POST, DELETE, etc.) to determine actions on nouns. For example, GET/users would list users, POST/users would create a new user, and DELETE/users/123 would delete the user with ID 123.

REST is likely the most common form of API you'll encounter. REST has a broad and robust tool ecosystem and nearly every engineer is familiar with it.

*GraphQL*

GraphQL is similar to REST in that it's JSON over HTTP; however, it does not rely on HTTP verbs. Nearly everything on GraphQL is a POST, and it uses a structured schema of queries and mutations.

I like to think of GraphQL as REST with types and a self-documenting schema. As a result, GraphQL APIs tend to come with automatically generated documentation and schema explorers. GraphQL also, by virtue of its schema system, allows for the composition of multiple schemas from multiple services to form a larger, more powerful, and more complex data graph, sometimes called a federated schema. The company Apollo provides sophisticated solutions for managing and scaling a graph.

There's a lot to be said for the benefits of building a graph to model your company's data, and the good habits that being forced to design a schema bring about. That said, no system comes without tradeoffs. Because GraphQL forgoes standard HTTP verbs, it does not play nicely with some elements of the web stack. GET request caching and developer tooling are still catching up to deal nicely with GraphQL requests. If those drawbacks are not a significant concern for your business, I strongly encourage you to check out apollographql.com and consider using GraphQL especially for internal use cases for your APIs.

#### Non-HTTP APIs

In general, for traditional synchronous request/response- (aka remote procedure call or RPC-) style APIs, you'll want to use an HTTP API due to its ubiquitous nature. However, there are several API patterns especially for asynchronous operations that don't map neatly to HTTP and have commonly used alternative implementations.

*Queueing systems*

A queueing system maintains an inbox (or set of inboxes) to receive messages and an interface for a consumer to read messages with certain guarantees.

A typical queueing system can guarantee message order (either first in first out, FIFO; or last in first out, LIFO) as well as at least once or at most once delivery. Most cloud platforms have hosted implementations of queues, such as AWS Simple Queue Service (SQS) or Google Cloud Task queues.

Queueing systems often have a notion of *explicit* invocation, which is to say that when a publisher creates a message, it explicitly specifies how the request should be handled or executed. By contrast, most publisher subscriber systems support *implicit* execution. is means publishers do not necessarily know beforehand what system will handle the message, only that the pub/sub system will deliver it.

*Publisher-Subscriber ( pub/sub ) Pattern*

The publisher-subscriber pattern, abbreviated as pub/sub, allows for designing a system where messages are created by potentially multiple sources and delivered via various patterns to potentially multiple subscribers. Publisher-subscriber relationships are modeled as one-to-one (direct), one-to-many (fan-out), many-to-one (fan-in), and many-to- many. Various pub/sub implementations can provide guarantees that messages are delivered to all subscribers, at least one subscriber, at least one time, etc. Similar to queues, there are off-the-shelf solutions, such as RabbitMQ, as well as easily scaled cloud-hosted options like Amazon Simple Notification Service (SNS) or Google Cloud Pub/Sub.

The pub/sub pattern and the guarantees it provides are extremely powerful. However, the tradeoff is that implementations require some care and attention to detail to realize the advertised guarantees. Implementing a subscriber, for example, requires paying close attention to message acknowledgement semantics and carefully managing topic subscriptions to ensure the right messages go to the right place.

If you're torn between implementing a solution with queues, pub/sub, or an HTTP API, my general recommendation is to keep it simple and go with the synchronous HTTP API. The fact that you are torn between implementations indicates that the guarantees offered by the asynchronous systems are not critical to your implementation, and therefore the added complexity is likely not worth it for your startup project.

*Job Systems*

Jobs, or cron jobs, are a type of backend API that are rarely triggered by a publisher or client, but instead by some form of timer. Common examples include nightly data cleanup tasks, or sending weekly email summaries/ notifications. Some best practices for jobs:

* Use a job system maintained by somebody else, don't build one yourself.
* When choosing a job system (or building one yourself, if you must), ensure that it:
  - has logging for every job execution;
  - allows for configuring the retrying of jobs that fail;
  - provides notification when jobs fail. It's very common for engineers to set up a scheduled job, watch it work on day one, and then on day fifteen it fails and nobody notices until day thirty;
  - provides an interface to view jobs and job status;
  - allows for job configuration to be stored as code or configuration in source control;
  - allows for jobs to be run inside your environment/private networks/security groups as necessary to access other internal system APIs/resources;
  - integrates with your secret management system.
  - allows for easily setting up jobs locally in development and production environments, and easy testing in each of those environments.

### Documentation

Having thorough, clear, and current documentation for your API is just as critical as how you build and maintain it. Some key characteristics of great API documentation:

* Always up to date with the implementation
* Documents all possible inputs and their types Documents all possible errors
* Easily read and navigated by other engineers

It's always a good idea to build your API using a system that includes API documentation generation. Doing otherwise means it'll be practically impossible to meet all of these goals on a consistent basis. If you're building a REST API, I strongly encourage you to design your API using OpenAPI (a YAML or JSON document that describes your API). In most languages there are SDKs to consume an OpenAPI spec and automatically generate controllers/routes to match the spec and/or generate a test harness to ensure the implemented API matches the spec. In addition, there are online tools, such as stoplight.io and readme.com, that can consume OpenAPI documents and generate aesthetically pleasing and easy-to-navigate documentation.

If you're using GraphQL, the GraphQL Playground or Apollo Studio explorer can provide a reasonable stand-in for extensive type documentation. I do recommend you still build a separate API documentation page, either using a tool like readme.com or creating something by hand, to act as a primer or getting started guide. The built-in GraphQL documentation lacks a description of how authentication works, and it also does a poor job of providing space to explain the relationships between data in your API.

These are gaps you need to fill elsewhere.

Another benefit of using either OpenAPI or GraphQL is that the resulting API specification is portable not only to documentation generators and test frameworks but also to developer IDEs such as Insomnia or Postman. These IDEs enable developers to quickly interact with an API to validate functionality without writing code. Formal specifications can also be used with code generation tools to ensure typing consistency in code.

### Idempotency

An API request is said to be idempotent when making the same request multiple times has the same effect as making it a single time. Idempotency is an important concept in building robust systems and avoiding data corruption. As with all things, idempotency gives you useful guarantees about a system but it comes with a cost: implementing idempotency adds complexity to backend systems.

In REST APIs, it is widely assumed that every HTTP verb except POST should be idempotent. GET requests, for example, by definition should always return the same result for the same input (unless the underlying data changes, of course). In general, PUT requests are modifying existing objects and should naturally be idempotent. Multiple calls to a POST request, however, in most systems signal the intention to create multiple objects.

#### Idempotency Keys

For HTTP POST requests in REST and for GraphQL mutation APIs, idempotency is not provided by the standard/specification. If you want a client to be able to retry these kinds of requests and have idempotent behavior, you should implement the idempotency key pattern. An idempotency key is an arbitrary string, provided by the client (either as an HTTP header or perhaps in GraphQL as an input variable), that backends use to de-duplicate incoming requests. is requires the backend to store the idempotency key, and also store the response to a request with that key, to be provided to clients later on.

Note that implementing an idempotency key is non-trivial, as it will require additional database writes, logic around capturing request responses, and dealing with concurrency/locking issues for duplicate requests that arrive at the same time. If idempotency is important in your application say, if you're dealing with financial transactions I encourage you to adopt a backend API implementation that provides a robust idempotency system out of the box rather than building it yourself from scratch.
