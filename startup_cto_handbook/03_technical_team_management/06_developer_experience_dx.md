## Developer Experience (DX)

DevOps tooling company Harness (harness.io) defines Developer Experience (DX) as the overall interactions and feelings that the developer feels when working towards a goal. It is similar to the definition of User Experience (UX), except in this case the primary user is a software engineer.

Developer experience may not always be measured on a dashboard, but when it's designed poorly, the team knows it, and they may complain loudly about it. Bad developer experience can derail an engineer an entire afternoon for example, an attempt to boot up the microservice to test it throws a cryptic traceback and the maintainer of the service is on vacation, so a mid-level engineer spins their wheels for hours just trying to get to a reliable build-execute-test loop.

Multiply this inefficiency by all the engineers on your team and all the various types of repositories, services, and projects that exist at your company and it can quickly spiral into losing person-months of productivity in direct time. Add in additional context-switching time spent bringing in others to help solve the problems, and poor DX quickly goes to the top of the list of areas that, when left unaddressed, can tank an otherwise high-performing engineering team.

There are two prerequisites to a great developer experience:

1. Tools that make it easy to have highly reliable and reproducible environments and dependency chains
1. Documentation and consistency in practices for how things are done

Thankfully, nowadays, many readily available tools and ecosystems can help with #1. Most programming languages have an ecosystem with standardized tools for dependency management and reproducible environments. It's up to you to identify and use them (e.g., npm, pipfile, etc.). Many of these systems produce a file called a lock file.

The lock file is not for concurrency management to avoid deadlocks; it's designed to lock in place a specific instance of the dependency graph. You should be committing these lock files and making sure other developers and any build systems use them. The lock file helps guarantee that everyone on the team has installed an identical set of dependencies.

If your chosen programming language does not provide those tools, then it's up to you to build that reproducibility perhaps by using docker containers, makefiles, or the like.

Often the difference between good DX and bad DX is twenty or thirty minutes of upfront effort from somebody familiar with the codebase.

It doesn't take long to ensure that basic build commands work in a fresh install, and that those commands are documented in a local README.

One opportunity for you as CTO to make this easier is to ensure that the build commands used across repositories and codebases at your company are consistent. Maybe it's always docker compose up or always yarn run. Whatever it is, any developer should be able to git clone any repository, and then the first command that comes to mind to build and run the software works.

### Prioritizing Developer Experience

Anything not on the product roadmap can be difficult to prioritize.

Thankfully, DX rarely requires a large enough investment of time that it needs triaging on the roadmap. In the early days of your company, I prefer follow the Boy Scout Rule leave the codebase (or developer experience) better than you found it. Any time a developer encounters a problem building, running, or testing something, it is their responsibility to fix, document, or otherwise ensure that whoever comes to that code next has an easier time of it.

As systems start to get larger it can become an increasingly sizeable chore to get everything running locally together to test functionality. At this point it may be worth investing in DX more formally on the roadmap, or even with dedicated headcount, to ensure that tools are working and developers don't lose large chunks of time fighting the system instead of writing productive code.

### Easy Developer Experience Wins

Here are a few easy wins to upgrade DX across your software engineering team:

* Have a README file with instructions to run a codebase ideally a one-liner to install dependencies then build and run the code.
* Enforce that all code be linted with a strict set of linting rules that is consistent across all usages of that language at your company. Fail your builds if linting doesn't pass. If all developers have their IDE configured to auto-lint, builds should rarely fail for lint issues.

* Ensure that lint configuration is checked into source control where possible (i.e., by investing in setting up something like VSCode's settings.json file, found at ctohb.com/vscode).

* Invest time in making sure that local test data can be set up in local databases from scratch. Often a quick data generator or seed data script can short-circuit a lot of developer headaches. Better yet if the seed data can be easily augmented to add additional corner cases/use cases as the system evolves, so that the base set of test data can be as comprehensive/representative as possible.

* Develop a plan for how to either mock or actually spin up dependent services locally to test multiple-service interactions when necessary. Ideally, with good contracts and domain-driven design, the need for this will be rare, though it should still be easy when necessary.

### Changing Tools For Developer Experience

In 2022, Stripe, the fintech decacorn (i.e., a company valued at more than $10 billion), decided that Flow, its current programming language, had become too expensive to use. It was using too much memory, locking up laptops, and integrated poorly with developer IDEs.

TypeScript, like Flow, is an optional type language built on top of JavaScript. TypeScript has seen far wider adoption than Flow, and thus has solved many of the problems the Stripe teams were encountering with Flow, which had become more painful to work with over time. It was increasingly clear that TypeScript offered a major DX improvement over Flow. The only problem is, how do you convert millions of lines of code from one language to another?

The answer, it turns out, is an eighteen-month project by a team of engineers to prepare for a single, massive merge commit to update the entire codebase all at once. On Sunday, March 6, 2022, Stripe's mega- merge landed, and on Monday, March 7, the team came back to work and started using a new programming language. One developer described the change as the single biggest developer productivity boost in their time at Stripe.

The lesson here is that if the pain of poor developer experience is severe enough, then almost no cost is too high or any project out of reach to make improvements. Your team is almost certainly smaller than Stripe s, and you're likely not dealing with millions of lines of code, but the same calculus applies: if your team is encountering friction in DX that is slowing it down, you must invest the necessary developer time and effort to improve it to gain that efficiency back.

Another problem teams often face is changing tooling too often. In certain tech ecosystems (particularly the JavaScript world), it seems something new and shiny comes out every month that could provide a productivity boost for your team. I encourage you to be disciplined about adopting new tools, make sure you've spent the time to really understand the pain that exists, diligence the new tool, see if it meets *all* your requirements not just the shiny headline and make decisions accordingly. For more on my recommended process here, see Implementing Internal Technology Radar, page 204.