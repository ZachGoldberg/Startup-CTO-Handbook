## DevOps

Wikipedia describes DevOps as a set of practices that combines software development and IT operations. It aims to shorten the systems development lifecycle and provide continuous delivery with high software quality.

To me the key piece of this definition is that devops aims to shorten the software development lifecycle, in other words DevOps is an enabler of broader team productivity.  If you're not already specifically thinking about DevOps, you're likely underprioritizing or underinvesting in DevOps to some degree. It's not just my opinion; it's becoming widely accepted throughout tech industries that high-quality DevOps is a key driver of overall engineering velocity.


### Four Key Metrics (DORA)

The highest-rated blip in 2022 of the oughtworks Technology Radar (ctohb.com/techradar) is the Four Key Metrics. These metrics are described by a team within Google Cloud called DORA (DevOps Research and Assessment), and the system of metrics comes from a seven-plus-year research program validating the results and their impact on technology, process, culture, and quantitative results. The four metrics are as follows:

**Lead Time:** How long it takes for code to go from commit to running in production

**Deployment Frequency:** How often code is released to production/end users

**Mean Time to Recovery (MTTR):** How long it takes to restore service after an incident/defect occurs

**Change Fail Percentage:** What percentage of production releases need a hotfix, rollback, patch, etc

Together these metrics quantify the idea of how confidently your team can deploy software. Scoring high on all four metrics requires an investment in automation, DevOps, testing, and culture. As oughtworks is quick to point out, drawing value from these metrics doesn't necessarily require highly detailed instrumentation, metrics, or dashboards. DORA publishes a quick check survey (ctohb.com/dora) that your team can take to track its progress at a coarse-grained level. There are also plenty of tools that have fairly low barriers to entry that will yield data quality that's more than sufficient to inform your progress, such as LinearB or Code Climate.

The following subsections on DevOps present concepts, disciplines, and focus areas that contribute in some way to improving these metrics.

### Reproducibility

Deploying code is a highly nuanced activity that requires extreme precision. A single misplaced character in a configuration file can lead to a service failing to start. Worse still, debugging DevOps problems for most engineers is slow and painful, and identifying and fixing that single character error can mean potentially hours of time lost in debugging and fixing. We re all human; these kinds of errors are inevitable. Since they're so expensive in DevOps, it is imperative that we put systems in place to minimize the opportunity for human error. A key component of minimizing the frequency and impact of human error in DevOps is the concept of reproducibility.

Reproducibility implies that we have the capability of doing something a second time that is both inexpensive and guaranteed to be identical to how it was done the first time. Reproducibility in DevOps requires automation and tooling. Arguably, the most important tool in the DevOps tool belt for improving reproducibility and accelerating development time is containerization. A close second is the idea of Infrastructure as Code (IaC). Since these techniques are so fundamental, I'll spend a bit of time introducing each of them here.

### Containerization

The most common way of explaining the role of containers in the DevOps context is to consider where the name originated: from shipping containers. Prior to the standardization of shipping containers, if you wantedto transport goods across the ocean, you would package your cargo in a variety of forms ranging from placing it on pallets, storing it in boxes or barrels, or simply wrapping it in cloth. Loading and unloading goods that arrived packaged in all these different ways was inefficient and error- prone, mainly because There'sno single kind of crane or wheelbarrow that could effectively move all of the cargo.

Compare that haphazard approach to deploying a standardized shipping container where the boat and port operator can work with a single form factor, using standardized equipment and shippers and a single, flexible form of packaging for all of their goods. Historically, the usage of standardized shipping containers unlocked a paradigm shift that reduced costs of global shipping by orders of magnitude. Packaging software in a standardized container that can be run on any system in the same way provides an analogous advancement in capability and efficiency.

The most common way you'll interact with containers is through a software system called Docker. Docker provides a declarative programming language that lets you describe, in a file called Dockerfile, how you want the system set up i.e., what programs need to be installed, what files go where, what dependencies need to exist. Then you build that file into a container image which provides a representation of the entire file system specified by your Dockerfile. That image can then be moved to and run on any other machine with a Docker-compatible container runtime, with the guarantee that it will start in an isolated environment with the exact same files and data, every time.

#### Container Management Best Practices

##### Design Containers to Build Once/Run Anywhere

Build the container once (say, in CI) so that it can run in your various environments production, development, etc. By using a single image, you guarantee that exactly the same code with exactly the same setup will transition intact from development to production.

To achieve run-anywhere with your containers, extract any differences between environments to runtime container environmental variables.

These are secrets and configurations like connection strings or hostnames. Alternatively, you can implement an entrypoint script in your image that downloads the necessary configuration and secrets from a central secret store (e.g., Amazon or Google Secret Manager, HashiCorp Vault, etc.) before invoking your application.

An additional benefit to the runtime secret/configuration download strategy is that it's reusable for local development, avoiding the need for developers to ever manually fetch secrets or ask another developer to send them the secret file.

##### Build Images in CI

In the spirit of reproducibility, I encourage you to build your images using automation, preferably part of continuous integration. is ensures the images are themselves built in a repeatable way.

##### Use a Hosted Registry

Once you're building container images and moving them around, you'll immediately want to be organized about managing the built images themselves. I recommend tagging each image with a unique value derived from source control, perhaps also with a timestamp (e.g., the git hash of the commit where the image was built), and hosting the image in an image registry. Dockerhub has a private registry product, and all the major cloud platforms also offer hosted image registries.

Many hosted registries will also provide vulnerability scanning and other security features attached to their image registry.

##### Keep Image Sizes as Small as Possible

Smaller Docker images upload faster from CI, download faster to application servers, and start up faster. The difference between uploading a 50MB image and a 5GB image, from an operational perspective, can be the difference between five seconds to start up a new application server and five minutes. That's five more minutes added to your time to deploy, Mean Time to Recovery/rollback, etc. It may not seem like much, but especially in a hotfix scenario, or when you're managing hundreds of application servers these delays add up and have real business impact.

#### Dockerfile Best Practices

Every line or command in a Dockerfile generates what is called a layer effectively, a snapshot of the entire image's hard disk. Subsequent layers store deltas between layers. A container image is a collection and composition of those layers.

It follows then that you can minimize the total image size of your container by keeping the individual layers small, and you can minimize a layer by ensuring that each command cleans up any unnecessary data before moving to the next command.

Another technique for keeping image size down is to use multi-stage builds. Multi-stage builds are a bit too complex to describe here, but you can check out Docker's own article on it at ctohb.com/docker.

#### Container Orchestration

Now that you've got reproducible images of reasonably small size managed in a hosted registry, you have to run and manage them in production. Management includes:

* Downloading and running containers on machines
* Setting up secure networking between containers/machines and other services
* Configuring service discovery/DNS
* Managing configuration and secrets for containers
* Automatically scaling services up and down with load
* There are two general approaches to container management: hosted and self-managing.

##### Hosted Container Management

Unless your requirements are unique or your scale is very substantial, you'll get the highest ROI from going with a hosted solution that does the bulk of the work of managing production containers for you. A common and fair criticism of these solutions is that they tend to be considerably more expensive than self-managed options and provide fewer features and more constraints. In exchange you get dramatically less overhead and less complexity, which for most startups is a tradeoff well worth making. Most small teams lack the expertise to effectively self-host, and so self-hosting ends up either requiring a substantial time investment for existing team members or forcing you to hire an expensive DevOps specialist early on. Spending an extra $1,000 a month to avoid either of those problems is likely to deliver very good ROI.

Some common hosted container platforms include Heroku, Google App Engine, Elastic Beanstalk, Google Cloud Run. Vercel is another popular hosted backend solution, though it does not run containers as described here.

##### Self-Managed/Kubernetes

The most popular self-management solution for containers is called Kubernetes, often abbreviated K8s. Kubernetes is an extremely powerful and flexible, and thus complicated, system. The learning curve is steep, but the benefits and ROI are worthwhile if you're at the point of needing to self-manage your containers.

If you're considering going this route, I strongly advise against learning Kubernetes on the job. Especially for a team leader, it's too much to take on and do well on an ad-hoc basis. Instead, I recommend buying a book on Kubernetes and committing a week or two to reading it and setting up your own sandbox to get up to speed before diving in for a professional project. It's also a good idea to seek out an advisor or mentor who has a good understanding of Kubernetes to act as an accelerator for your learning of the tool.

#### ClickOps vs. IaC

ClickOps refers to the process of configuring your cloud infrastructure using the user interface, as opposed to the provided APIs. As your infrastructure grows, the quantity of nuance and detail in your system will quickly exceed your ability to reproduce it with ClickOps. ClickOps is fine for prototypes or proof of concepts, but when the time comes to actually build a production environment and mirrored development environments, using ClickOps will quickly lead to considerable frustration and cost, as well as limited capability. The alternative to ClickOps is known as Infrastructure as Code (IaC).

There are several tools and frameworks that allow you to define IaC. The leading one is HashiCorp's Terraform. Terraform uses HashiCorp Config Language (HCL), a declarative configuration syntax, to allow engineers to define what resources they want and how they are to be configured. Terraform code can and should then be managed like any other code, using source control and peer review practices. Once approved, Terraform can generate infrastructure change plans and apply those plans for you with your cloud provider(s) of choice. I cannot emphasize enough how easy to use, powerful, and maintainable Terraform is, and how much ROI you're likely to gain by migrating from ClickOps to IaC.

### Continuous Integration

Continuous Integration is the process of automating the incorporation of new code into a project. That may include running static analysis on new code, running tests, building the code, and generating any required build artifacts (such as container images). Most startups use hosted CI platforms such as GitLab runners, GitHub actions, Bitbucket pipelines, Jenkins, or CircleCI to do continuous integration activities.

Some best practices for CI:

* Ensure the team understands the CI system and is comfortable adding to it, updating for new requirements, and troubleshooting when things inevitably cause the build to fail.
* Ensure builds are consistent and deterministic. Unreliable or flaky builds are an extremely powerful productivity drain and time sink.
* Try to keep build times down. For most teams a good target is for CI to take less than fifteen minutes.
* Learn the capabilities of your CI tool that aide in keeping builds fast, including build caches, build artifacts, and running jobs in parallel.
* Builds can get complex. Try to keep your code for CI *dry.* Reuse code between build pipelines where possible.
* Be consistent in how your builds access secrets. Either depend on a cloud secret manager, or build environment secrets where necessary, and try not to mix them. There should be one obvious and consistent way to handle config and secrets.

### Continuous Deployment

In the early stages of a project, it's comparatively simple to deploy new code. At that point, There'snot much code or architectural complexity. Before long, however, the need to manage dependencies, dependent services, CDNs, firewalls, build artifacts, build configuration, secrets, and more leads to a complex deploy process. As these requirements accumulate, it's easy to neglect automation, and simply rely on, for example, a dedicated and highly trusted individual as release manager. There are countless teams out there following this pattern, and I guarantee you most of those release managers have release dates circled on their calendar in advance and dread the stress, long hours, and frustration that those days inevitably entail.

Fortunately There'sa cure for the error-prone stress concentration that is the monthly (or longer!) release day. It's to release every day, or heck, every hour! It follows logically from one of the Ten Pillars of Tech Culture (see page 138), Frequency Reduces Difficulty, that more frequent releases will force your release manager, and team, to automate the hard parts of deployments. With enough iteration, releases can become entirely automated, and with sufficient testing giving you confidence in new changes, you can get to the point of triggering new releases for every code change set, referred to as Continuous Deployment.

In addition to eliminating the complexity of the release process via automation, releasing more often means each release is of a smaller amount of code. Smaller code changes are easier for other developers to review. Smaller changes, simply by virtue of being smaller, present fewer opportunities for defects.

An automated release process tends to also imply an improved ability to roll back changes or recover from an issue in production. This is also measured as Mean Time to Recovery (MTTR).

In summary, automating releases means code goes out faster (reducing lead time*)*, means you can deploy more often (increasing deployment frequency), and improves MTTR. That's three of the four key DORA metrics (see page 208) with one initiative!

In the companies I've worked with, either directly or in an advisory capacity, I've seen at least a dozen teams invest effort into either partially or fully moving to continuous deployment. It's not always a straightforward journey, it doesn't happen overnight, and often there are well-reasoned objections. Yet in every circumstance, when the team looks back on the time invested be it three weeks, three months, or two years later the difference is nothing short of transformational to the culture and overall output and velocity of the team by every metric.

### Feature Branch Environments

A feature branch environment is a hosted environment and set of infrastructure that is available internally to your company, running the code from a specific branch. Feature branch environments are incredibly useful for validating that code works in a production-like setting and for enabling team members at your company to use or test changes without having to build and run code themselves. Do not underestimate human laziness; every extra step it takes somebody to test and validate your code means that they'll do the testing that much less often. Checking out code, installing dependencies, and starting servers is significantly more work than going to an automatically generated feature branch URL, and thus the feature branch will get used far more.

Feature branch environments also solve the contention problem encountered by teams that have only a single staging environment. I advocate giving every branch its own staging environment.

Some considerations for feature branch environments:

* Automation is key here; manually setting up feature branch environments is nearly always impractical.
* Where possible, use a system such as Vercel or Firebase that includes feature branch environments as a first-class feature to minimize your setup and maintenance costs.
* Carefully consider how to treat data in feature branch environments. you'll need to answer the following questions:

  - Does each backend feature branch environment get a new database? My recommendation is yes.
  - Does the feature branch environment use production data? My recommendation is no. Instead, use a seed script that generates similar quantities of data to production. It is worthwhile to have a process that copies, sanitizes, and restores production data for developers when necessary for debugging.
  - How are database schema changes/migrations handled in feature branch environments?
  - How does service discovery work in feature branch environments for service-oriented architectures? Often you can get away with having a common set of services and deploy feature branch versions of just the service under test. I recommend that you have an environment for every service that is always running called integration. Have all feature branches reference the integration environment of other services. Each integration environment update should be a production update, but you should also allow developers to deploy feature branch code temporarily to integration environments for cross-service integration testing.

Having looked at this list of concerns, you may be daunted by the burden of setting up and maintaining feature branches. Indeed, a proper feature branch setup is not cheap, but the value it offers is substantial in improving your ability to test, and in reducing the logistical overhead required to verify different kinds of software changes.

### Managing DNS

Knowing how the domain name system (DNS) works, and knowing how to manage DNS and its security implications for your company, is a critical job that often lands on the startup CTO. If you're not already familiar with the basics of how DNS works and the different record types, I recommend you spend a few minutes browsing Wikipedia now to get a grounding on the subject.

You should also know how DNS is used for email in your organization. In particular, become familiar with Sender Policy Framework (SPF) records and DKIM/DMARC.

You should also set up your DNS records using Infrastructure as Code (IaC). I've seen countless companies where DNS is managed exclusively by an executive whose two-factor authentication is the only one allowed to update a zone record, and when that person is on vacation There'sno fallback mechanism to manage the site.

A better solution is to set up DNS with Terraform (which has integrations with all the major DNS providers) and then manage DNS records with source control, empowering individual developers to add new records in a responsible way that isn't gated on any one individual.

### Decoupling Shipping Code from Shipping Features (Feature Toggles)

At a high level, a feature toggle is a switch that allows you to change system behavior without changing the actual code. I strongly advocate using feature toggles, in particular because they allow your team to have separate processes and timelines for shipping code and shipping features. Pete Hodgson has a wonderful, in-depth explanation of feature toggles at ctohb.com/hodgson.

The Four Key Metrics advocate for shipping code as frequently as possible. Doing so leads to many great positive benefits for the health of your engineering process. A natural concern, however, is that your business may not be ready for a particular feature to go live the second the code is done. There are many reasons why your development and release schedules might be out of sync in this way, such as the need to coordinate timing with a marketing activation, the creation of customer support documentation, awaiting regulatory approvals, pausing for internal communication, etc. Feature toggles enable your engineering team to focus on shipping as quickly and reliably as possible and delegate the problem of coordinating when features are enabled to an out-of-band process likely owned by other teams.

### System Monitoring: APMs and RUMs

Application performance monitoring (APM) and real user monitoring (RUM) are two types of tools that help teams understand how an application is performing in production and identify or prevent user-facing outages.

An APM tool usually sits inside or alongside your application in the production environment and provides analytics and insights into resource usage and request latency and throughput from the perspective of your backend. RUM is an external tool that pretends to be a user and provides analytics on latency from the frontend's perspective, or the perspective of a real user.

If you had to choose one (and these tools are often very expensive, so you may be forced to go with one or the other), choose the one that covers the blind spot more likely to be problematic for your application. If you have tons of users and you get inundated with real-time complaints for every minor bug or edge case, then an APM monitoring backend load may prove more valuable than a RUM producing redundant alerts to your users. For most startups in seed or growth stages, though, you'll likely have inconsistent application usage, especially covering your edge cases, in which case RUM may be more valuable than an APM on a mostly idle backend.

Some common tools in this space are New Relic, Datadog, and Akamai mPulse.
