## Tech Debt

San Francisco's Golden Gate Bridge is made out of steel, which is not actually golden in color. The bridge is painted, and maintaining the iconic color of the bridge is so important to San Franciscans that they paint it continuously (ctohb.com/painting). Once repainting is finished, the process immediately restarts. is form of continuous investment or perpetual maintenance is what's required to keep the most important and sophisticated systems performing to expectations, from the Golden Gate Bridge to your team's software project. Only for your project, the maintenance doesn't require paint buckets; it comes in the form of technical debt.

Every feature a software development team delivers brings with it some level of need for future work, or debt. That debt can take the form of bugs that need fixing, fast-follows to the feature to deliver incremental customer value, or sloppiness in the code that should be fixed to improve maintainability, performance, or security. A certain amount of debt naturally accrues even if your team is out on vacation: security vulnerabilities in dependent software are found, packages go out of date, new versions of tools are released, third-party APIs are deprecated or changed, etc. Debt is unavoidable and you need to account for it.

### Tech Debt And The Product Lifecycle

Another way to think of tech debt is like financial debt, such as a mortgage on a house. When you take out a mortgage to buy a house, you're making a deliberate decision to take on debt, knowing the consequences (interest), to enable you to do something you want now (get a house). Then you pay down that debt on a consistent basis over an extended period of time (monthly payments).

The same happens with technology debt. Your startup may accumulate it deliberately as part of a conscious tradeoff, and part of that tradeoff is establishing a realistic plan for paying it down. You should apply the same kind of logic you would to pay down financial debt to addressing your technical debt: either pay it off upfront because you have extra resources (and no better place to put those resources), pay it off continuously over time, or pay it all off down the road but perhaps at a higher total price that includes interest.

However you choose to pay down your tech debt, the key to doing so successfully is to recognize that debt is an inevitable part of the software engineering process, and proactively paying down debt is a necessary investment in overall engineering health.

#### Defining Tech Debt

Another way to define technical debt is as a technical decision, implementation, or nuance that actively reduces the efficiency or effectiveness of the business today or in the future. The point is that tech debt has a consequence that matters. Some of your code might be objectively ugly or inefficient, but if that inefficiency has no impact on the business and There'sno need to modify that code in the future to maintain quality, performance, or iteration, then that code isn't costly in terms of tech debt. After all, the goal of software development, especially at a startup, is not to write the perfect codebase, but to build software that enables the business.

Don't be afraid of debt. It can serve a purpose. For example, when building Version 1 of a product that's not yet been validated in the market, a technical team may decide on an architecture that will not scale past a hundred users. If that decision allows the team to rapidly validate the product and determine whether or not a hundred users will ever use the product, that path may be worthwhile especially given the fact that it may take several versions of these prototypes to find one that users love.

There are at least seven types of technical debt:

1. **Architecture** or **Design Debt** arises when the design of the software is not capable of meeting the near-term or future needs of the business. For example, the design makes it too challenging to build the features the business needs, or the design won't scale to the number of users or performance requirements of the business.
1. **Code Debt** accrues when the implementation itself was done without paying attention to best practices, yielding code that's difficult to understand and maintain.
1. **Test Debt** accumulates when you've run insufficient automated tests to provide the team confidence in the correctness of the codebase.
1. **Infrastructure Debt** occurs when the infrastructure, observability, and supporting systems are not robust or have been poorly maintained, leading to difficulty scaling or deploying updates, or poor uptime and reliability.
1. **Documentation Debt** results when There'sinsufficient documentation, or the documentation is stale/inaccurate, which can make it difficult for team members to onboard a project.
1. **Skill Debt** rises when the team members lack the needed skills to maintain or update the code or surrounding infrastructure.
1. **Process Debt** accrues when the team is inconsistent in how it solves problems, leading to mistakes, delays, or increased costs.

#### Tech Debt Bankruptcy

If your startup neglects or ignores tech debt for long enough, it can become a major impediment to future progress. Teams can unintentionally find themselves spending 80 or even 100 percent of their time sorting through system problems or inefficiencies as a result of tech debt, a state known as tech debt bankruptcy.

Some signs your team may be tech debt-bankrupt:

* You are regularly dealing with production outages to the point of material business impact.
* You receive constant pushback or exaggerated timelines on new fea tures due to the need to deal with debt.
* The team complains that a codebase is too complex to get work done.
* New features cannot be shipped without accidentally breaking old fea tures or introducing an unacceptably high level of defects.

If you find yourself in tech debt bankruptcy, it's time to raise the alarm, reset expectations with stakeholders, devise a plan to consolidate the debt, and begin paying it down immediately.

If you've been honest with your peers in leadership (see Delivering Bad News, page 46), you should have the necessary credibility to explain the tech debt problem and develop a common understanding of the ROI for an investment in resolving tech debt.

#### Measuring Debt The Debt Inventory

Unlike with a mortgage or car loan, There'sno website you can visit that will give you a statement of your exact amount of tech debt and remaining payments. Some forms of debt can be measured quantitatively, but most of the analysis is qualitative. For healthy and responsible debt management at scale, I recommend a debt inventory survey.

The survey should be taken at regular intervals. Somewhere from one to four times per year, do a sober analysis across the varying kinds of debt, producing an honest assessment of where the team is operating. Don't take the survey independently; rather, do so in collaboration with other engineers on the team who are working in the code every day and interacting with the debt on a regular basis.

A survey can be as simple as this: for each of the following types of debt, rate how much we have on a scale of 1 to 10, then provide a few sentences justifying the score.

Use the results of the survey to inform how your team spends its energy paying down debt, and compare results between surveys over time to ensure debt stays at a reasonable level and your team is regularly solving its biggest debt pain points.

#### Strategies For Paying Down Debt

In order to decide when to pay down tech debt, you should first consider how much of your team's time is worth spending on it. Key considerations include:

* How much debt exists, as indicated by your most recent debt inventory survey
* How much it is hindering your company's ability to run day to day i.e., via outages, customer churn, or defect rates
* How much it is hurting your team's ability to deliver on new projects How difficult it will be to pay down the debt

If you are not in tech debt bankruptcy and your goal is to maintain a healthy level of debt, I recommend allocating somewhere between 10 20 percent of your team's time to investments in non-feature engineering (e.g., paying down debt, exploring new patterns/proofs of concept, improving developer experience, etc.). The more severe your current debt impact, and the higher the effort to pay down the debt, the higher the percentage of your team's time you should allocate.

##### Just-In-Time Payment

The most common way to handle tech debt is to pay it off on a Just-in- Time basis, meaning the debt is paid off as part of a business-driven project. is will often look like a team adding tech debt tickets that relate to the stories that have been selected for a sprint in a planning meeting. This is a low-overhead and low-planning-effort approach, and it can work out well. But be mindful of some potential pitfalls:

* Just-in-time payments, by virtue of being less visible to the broader team, can lead to systemic underinvestment in tech debt. Make sure you are being honest and transparent with the team as you do just-in- time-payment about what total percentage of team time you're expecting to be in debt.

* Adding tech debt as part of a sprint can imply that investing in tech debt is a secondary objective to the sprint goals, and thus likely to get cut from scope if a team runs low on time.

* Tackling tech debt in a sprint may be perceived as slowing down the sprint or causing delays, rather than as an investment in velocity and overall system health.

##### Periodic Paydown

Periodic paydown is akin to how one might pay down a car loan or a mortgage. The team makes space to pay off debt on a fixed interval (e.g., a day per sprint, a couple of days per month, or a couple of weeks per quarter). Google famously allowed their engineers 20 percent time to work on whatever they wanted, including paying down debt or innovating on new projects and tools. The idea here is the same: as a manager, you explicitly make time and encourage the team to make investments into the tools and processes used to do engineering.

For example, the Shape Up method (see Tech Process, page 157) describes a two-week cooldown period after a six-week cycle, or 25 percent of an eight-week period, for making technical investments. Keep in mind that 25 percent isn't a magic number; the right percentage will depend on your team's debt inventory.

#### Continuous Paydown

Depending on how expensive debt is for your team, you may want to dedicate more resources to overall system quality than a periodic strategy allows. is looks like having a dedicated team what I call a customer crew in a two-crew scenario (see Project Maintenance: TheTwo Crews Philosophy, page 113) pay down tech debt as part of their everyday work and objectives.

It's important to ensure that any team whose primary objective is internal efficiency, such as a tech debt team or a customer crew, has clear and measurable goals for their work. For example, if your debt inventory ranks test debt as your highest debt category, then measure defect rates and code coverage and hold the customer crew accountable for improving those metrics. If your infrastructure debt is the largest, then focus on uptime and Mean Time to Recovery metrics.

### Communication of Tech Debt

Non-technical leaders don't expect perfection from their technical teams. But they do expect high performance and consistently met expectations.

When it comes to debt, that means clearly communicating your strategy for keeping debt at a manageable level, and also providing upfront and honest communication about when debt may get in the way of business goals, as well as your strategy for paying it down so it's no longer a blocker.
