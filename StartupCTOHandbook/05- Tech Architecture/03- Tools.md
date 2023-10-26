## Tools

The tooling ecosystem and patterns for software engineering are constantly evolving and changing. You will inevitably be tempted either on your own or by members of your team to change something about how you're doing engineering, such as adopting a new library, framework, language, or pattern. Adopting each of these changes quickly leads to a patchwork quilt of poorly thought-out architecture. Conversely, ignoring all change leaves you with a stale codebase that, over time, will be less efficient and harder for newly hired talent to work on. The right approach is to formalize the process

of changing your tech stack and provide some guardrails to motivate your team to be curious and thoughtful about tooling changes.

### Implementing Internal Technology Radar

Thoughtworks, a leading software consultancy based out of San Francisco, publishes a tool called the Technology Radar (ctohb.com/radar) that evaluates the hundreds of projects oughtworks sees every year. They put new tools, techniques, patterns, and languages (which they call blips) in one of four categories based on how effective they are in the real world.

The categories are hold, assess, trial, and adopt.

If you've never read through a oughtworks Radar, I highly recommend it as a general primer on what's going on, and also as inspiration for your own team's process.

My preferred way to balance the challenge of keeping engineers motivated and a codebase relevant with tool churn is to follow oughtworks lead and implement an internal technology radar. Rather than weigh something new for its universal appeal as oughtworks does, my approach evaluates blips for their fit and effectiveness for our organization using the same four levels. To be concrete:

1. Somebody proposes using a new tool, technique, platform, or language (blip). That proposal at first is categorized as assess. Theproposer has to make the case in a technical document that the new blip would provide a material benefit to the project that was already selected by the business (or as an experiment in an innovation sprint see Cooldown/ Innovation Sprints, page 163). Then, if approved, it moves to a trial.
2. The new blip is used by the developer in a project, either selected by the business or in their innovation sprint window. At the end of the project, the author produces a follow-up written document describing their experience with the blip, including pros and cons and how well the blip plays with the rest of the tooling ecosystem at the company.
3. Based on the results of the trial, the team as a whole will move to either adopt the blip, unlocking that blip to be used by the rest of the team without further ceremony, or move it to hold, which would require a new trial and a new evaluation for it to be used again. If a trial fails in a business project, the team is advised to think carefully about whether to remove the blip from that implementation to avoid future maintenance concerns.

In most cases, I find that when a blip trial fails, it fails relatively early on and the engineer leading the project doesn't include the blip in the final delivered implementation.

### Boring Technology

Boring Technology is a phrase coined by Dan McKinley and outlined at ctohb.com/boring. The key idea is that your team's job is to deliver functionality to support the business, and most of the time that doesn't depend on using fancy new tools. In fact, using something that's not boring often has many hidden costs, and only if your team is fully cognizant of those costs and believes the benefits are larger, should the new tool be adopted. As Boring Technology describes it, total cost = maintenance costvelocity benefit. Some hidden costs to consider:

* Incomplete, inaccurate, or immature documentation
* Not fully developed ecosystems around the tool/technology, including SDKs and integrations with other tools
* A higher likelihood of encountering defects or missing functionality/features
* Additional training cost for members of your team to adopt the new tool
* Burden in keeping that tool or package up to date, patch ing security holes, etc.

### Tool Cost

It's a fact of life that modern startups will spend a lot on SaaS. Your company is likely no exception, so don't be surprised when you find you are spending an entire headcount or more on infrastructure and tools before your Series B fundraise.

### Budget

There are a handful of published benchmarks for SaaS and tool spend at various company stages as a percentage of either company revenue or total spend.

There's not a single precise benchmark, but it seems that typical SaaS Costs of Goods Sold (COGS) fall somewhere between 10 and 30 percent of revenue.

Know your spend and keep an eye on cost growth. It's very easy to accidentally leave a couple of machines running in AWS and add $10,000 to your annual cloud hosting bills. Most cloud platforms have built-in budgeting features, so There'sno excuse to not use them. If you're using infrastructure as code, it's easy to set up a module that, for every new cloud system deployed, will automatically apply a cloud budget at the same time that will monitor and alert on cost for that particular system.

It's typical for SaaS costs to grow over time, be it because your infrastructure is growing, or because you discover a new SaaS vendor that can save your team time. I recommend not using cost as a reason to avoid adopting a typical SaaS tool (with a cost range in the hundreds per month). Instead, I'd advise factoring regular growth into your SaaS cost forecasts.

### Tracking

You should be tracking how much your organization spends on engineering tools, including IDEs, SaaS, and infrastructure (cloud platforms). You can do this manually in a spreadsheet or using a SaaS Management Platform (SMP). Available from various vendors such as BetterCloud, Zluri, and Vendr, these solutions link with your credit card or bank and automatically categorize cash spend.
