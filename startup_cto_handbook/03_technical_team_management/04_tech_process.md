## Tech Process

Conway's Law states that Organizations, who design systems, are constrained to produce designs which are copies of the communication structures of these organizations. Said another way, how you structure your teams, and importantly the process of work within and between those teams, will have a significant impact on the product you make. Teams working in information silos are unlikely to produce products that beautifully integrate with another team's designs, so it's up to you, as the overseer and ultimate architect of these communication structures, to ensure those structures meet the needs of the product you're developing.

### Workflow

Technical work is a highly nuanced matter with thousands of minute decisions that will affect how things ultimately interoperate and behave. To have any hope of maintaining productivity within your organization you need a set of standards and guiding principles to ensure the everyday technical decisions are broadly consistent and thus manageable for the team. That means you need to actually set those standards, train the team on them and have a day-to-day process to enforce and modify them as necessary.

The pattern a team follows to determine how to decide what to build and how work gets done is referred to as a workflow. The five most popular workflow patterns are:

* Agile
* SCRUM
* Kanban
* Waterfall
* Shape Up

There are entire books written on these patterns, and my favorite is *Scrum: e Art of Doing Twice the Work in Half the Time* by Jeff Sutherland.

There are some fundamental strengths and weaknesses of these approaches that I'll discuss in this chapter; however, in the real world, the differences between the processes are dwarfed by the impact of how well the manager implements the chosen process. Your job as tech leader is to pick a process and ensure it's implemented well and iterated on.

A good development process respects the following truisms about software development:

* Nobody can perfectly predict how long it will take to complete any given engineering task.
* Engineering is rarely a straight line; building feature X may require putting time into problem Y before X can be built.
* There is no such thing as a perfect specification; there are always gaps and things to be discovered along the way in building technology.

Generally, the goal of a workflow process is to ensure that a team is well organized and delivering at an acceptable pace. In a roundabout way, some workflow processes even attempt to quantify engineering team velocity, allowing for reporting on how velocity changes over time to non-technical stakeholders.

#### Waterfall

The oldest workflow process, dating back to the 1950s, is waterfall (see ctohb.com/waterfall). The waterfall model breaks down project activities into sequential steps, where each step is dependent on and starts after the prior step is completed. In software engineering that looks something like first having a product vision, then doing product concepting, then product design, then software development, and finally testing, deployment, and maintenance. The most common criticism of waterfall is that this structure is rigid, inflexible, and doesn't promote iterative development.

#### Agile/Scrum

Agile and SCRUM process is a more nuanced and prescriptive methodology than waterfall. There are many great resources that cover these nuances in detail, including Sutherland's *Scrum*, *Agile Estimating and Planning* by Mike Cohn, *e Art of Agile Development* by James Shore & Shane Warders.

The key thing to realize about these processes is that they are guidelines, not scripture. To get the best out of your engineering team, start with a process and see how well it works for your particular group of people with your particular type of technical challenges. Some teams have work that lends itself much more to estimation and story pointing, while others have much more ambiguous brownfield projects where estimation is near impossible. Pay attention to whether any particular ceremony from the process is really adding value to the engineering team, or if it's just a lengthy meeting everyone dreads.

Do not hesitate to skip ceremonies that are not obvious wins for the team. For example, I find SCRUM's prescription for planning poker to be inefficient for most teams.

#### Shape Up

Shape Up is a methodology formalized by the company Basecamp and published in an eBook available at basecamp.com/shapeup. The core cycle in Shape Up is six weeks long, a much longer sprint than espoused by SCRUM. is cycle uses fixed-time and variable scoping. The idea is that a longer time period provides more space to produce clear pitches (specifications) and do good work on a project. Shape Up places considerably less emphasis on estimation than other models which, as I'll soon discuss, is a good thing for engineering teams.

### Engineering Estimates

According to Google, the technical definition of accuracy is the degree to which the result of a measurement, calculation, or specification conforms to the correct value or a standard. That is to say, accuracy is an indicator of overall correctness. When you're throwing darts at a dartboard and aiming for the bullseye, an accurate set of throws is a set of throws that tends towards the center.

Precision, by contrast, is defined technically as refinement in a measurement, calculation, or specification, especially as represented by the number of digits given. In other words, precision indicates a level of exactness. When throwing darts, if all of your throws, regardless of their target, are tightly grouped together, that can be said to be a precise grouping.

As this description should help you visualize, something can be accurate without being precise (a broad grouping of darts around or near the bullseye but not hitting it), precise without being accurate (a tight grouping of darts that misses the bullseye), and, of course, both accurate and precise (a tight grouping of darts that does hit the bullseye).

You should expect and hold your team accountable for accurate but not necessarily precise estimates for completing software development tasks. If today is the first of the month, reasonable guidance from your team is, We'll ship the feature this month. If the team says, We'll ship the feature on the 23rd, they're more likely to miss that deadline.

There's no need to try to estimate hours or days per ticket if you plan your work/resource allocation out by week, month, or quarter. Pay attention over time to whether or not your estimates are actually giving you the planning capability you hope for. If they're not, don't punish the team by continuing the process, or worse, using it as a contributing factor in performance reviews. Instead, adjust the estimates so they help instead of hurting you. Change your expectations, and instead of reacting to missing estimates, react to the challenges the team is facing as they struggle to meet the estimates.

A final note on estimates: don't conflate missing estimates with poor total output/velocity. Some teams will be highly effective, have high output, and still miss estimates. Velocity is the more important metric, and a high output but imperfectly estimating team should not be punished. Conversely, a team that regularly misses estimates *and* has trouble delivering new value is underperforming and needs to change.

### Burndown Charts

SCRUM burndown charts show team progress against estimates and can be a great tool for measuring sprint productivity. However, estimates are imperfect and, for various reasons, a burndown chart may show a flat line or even burn up. is can be because a team legitimately is not making progress, or it could be an artifact of estimation issues or bad data collection.

A burndown chart that burns up consistently, despite teams shipping and doing good work, is demoralizing and not achieving the intended benefit. If there are easy adjustments that will help you better capture data and fix the chart, make that change. But if you find a particular way of measuring output still isn't working, just get rid of it. It's okay to admit that your method of estimating these particular types of stories with this team isn't precise enough and move on to other methods of monitoring and improving performance.

In my experience, only a small percentage of teams find success with burndown charts, so don't be disheartened if that one technique isn't helpful for your engineering team.

### Choosing A Workflow

I contend that which workflow you choose will not be a significant factor in the ultimate success and velocity of your engineering team. The key factor is that you are paying attention to your team's workflow and continuously iterating on the workflow itself to ensure your patterns are adding value and are a good match, both for your team and the types of problems your team faces.

That said, here is a rough model for thinking about which type of workflow is likely to be a better starting place: well-understood work (i.e., tasks that are concrete, greenfield, and easy to explain) is easier to manage and will generate more benefit with a more nuanced or prescriptive planning process. Said another way, if your work is ambiguous and hard to estimate, it's likely better managed with Kanban than SCRUM.

Well-understood stories that tend to work well with SCRUM are:

* Greenfield that is, new code that doesn't depend on perhaps legacy or difficult-to-work-with external modules
* Not dependent on new patterns/tools/technologies, relying instead on the existing (boring) tech stack
* Easily broken down from stories to smaller tasks Familiar to the team from previous work

Conversely, you're perhaps better with Kanban if your work is:

* Brownfield, or heavily impeded by tech debt with unclear paths for paydown/refactoring
* Regularly changing or saddled with unpredictable priorities
* Dependent on adopting new and different tools and patterns that can introduce unexpected costs in the first few implementations
* Assigned to a brand-new team that doesn't have a history working together or on these types of projects

### Cooldown/Innovation Sprints

When using a regular cadence like sprints, the major peril teams find themselves in is the expectation that a sprint will finish, features will be shipped, and the team can immediately shift to the next set of features. Due to the accumulation of debt and need to iterate on product features, that is simply not possible to sustain. There has to be either continuous or periodic time set aside to pay for debt.

A common practice for periodically paying down debt is the notion of a cooldown sprint. Sometimes called a tech debt sprint, or innovation sprint, the idea is the same: give the team time to clean up their digital workspace, do some code-housekeeping and ensure that they and the code are in a good place for high velocity work going forward. As discussed in Strategies for Paying Down Debt, page 150, it's reasonable to dedicate anywhere from 5 20 percent of your total development time on cooldown work.

If you're doing two-week sprints, that might mean that one in four or five sprints is dedicated to cooldown.

### Technical Planning And Specifications

When discussing the process for writing tech specs with engineers, I'm often asked, How do you have time to write specs? Usually I counter with, How do you have time *not* to write tech specs? Implied in my response is that taking time to think through what you're building before you build it is a net time saver.

Software engineering is inherently a creative process, meaning we re not doing the same thing every time and there is more than one way to do any particular story. A great planning process recognizes that there is value to be gained in thinking through a story in advance but balances that emphasis on pre-planning with the knowledge that the only real way to truly know everything about a feature is to actually build it.

A great tech planning process can accomplish several goals:

* Reduce the amount of rework in a feature
* Identify ways to do less work to achieve the same functionality
* Decrease the chance that important non-business visible considerations are forgotten, such as error handling/negative cases, testing, logging, monitoring, analytics, security, scalability, launch planning, and tech debt payoff
* Increase the chance that work from multiple people/teams is done in a compatible way
* Provide valuable documentation for how and why a feature was built a certain way for future maintenance, improvement, or expansion
* Keep the team thoughtful and aligned on irreversible/expensive technical considerations (e.g., tooling and architecture), as well as unlikely-to-forget key details
* Prove lightweight enough that it is completable in reasonable time and doesn't force decisions on minor details that either don't matter or don't have enough information upfront

#### Tech Spec Leads

I recommend that you designate a lead for any project that needs planning: a single person to be accountable for producing the technical specification and getting that specification through your approval workflow.

That doesn't mean they're the only contributor. On the contrary, if other team members are available during the planning window and have helpful knowledge, they can and should contribute.

Planning can be synchronous (i.e., everyone is in a room for the whole time period) or asynchronous. I recommend asynchronous planning as much of the work in planning will involve research (e.g., reading product documentation, reading code, prototyping/proof of concepting, evaluating tools and APIs, etc.) which can be done fine independently.

#### Time For Planning

Your tech planning process should save you time in your initial implementation. It should also save time in the future by minimizing tech debt and leaving behind documentation that can accelerate future improvements.

The wrong amount of time to put into planning doesn't meet these goals, either because it's too short and doesn't save you time/produce good documentation, or is so lengthy that it doesn't pay for itself in savings.

There is no universal formula for the correct amount of time, but I'll provide a rule of thumb: allocate one day to technical planning for every week of work you estimate the project to take. In general, this will lead to between half-day and three-day planning windows. If your project requires less than two days of work, it likely needs very minimal planning effort and has low risk. Conversely, if you're looking at a project that is expected to take more than three solid weeks of development effort, you may not be able to efficiently plan something that large all at once and should consider breaking it down.

If your team refuses to invest time into planning, you're likely pushing too hard for results over process. The way to ensure the engineering process produces good results for the business is not to crack the whip harder, but to establish a healthy process that enables good results. You wouldn't speed up a structural engineering team designing a bridge by having them work longer hours. You would make sure they have the best bridge-designing tools available to them with the best possible information about the span being bridged. Software engineering is no different. But instead of using CAD software or real-world measurements of soil/rock, we have product specifications, design process, and software tools.

Conversely, an overly lengthy planning process where team members insist on getting every minute detail upfront can be an indicator of a serious cultural problem, where team members are paralyzed by fear of making a mistake. Effective planning won't eliminate risk, but thinking through important, high-level decisions in advance can minimize it. A team that obsesses over details may be afraid of making mistakes or unwilling to iterate on their work both symptoms of overly results-driven management. Individuals should not be punished for reasonable mistakes or planning oversights. It's fine if a tech spec isn't perfect upfront; expect your team to find mistakes or gaps during implementation, and update the spec when those issues are found.

### Prototyping as Part of Spec Writing!

Often when writing a technical specification you'll have multiple options for how to achieve a goal without any overtly compelling arguments on paper to go one way or another. Or you'll discover unknowns about the effectiveness of a particular option, which makes the decision ambiguous. If possible especially if it can be done efficiently I encourage you to give your engineering teams space to prototype one or more of these solutions to gain data to make better decisions in planning. Half a day devoted to building a toy with a new tool to validate that the tool will achieve the desired results upfront is half a day well spent.

### Tech Spec Content

Having a template that your team uses when starting to write a technical specification is a great way to speed things up and ensure important topics are not neglected. I recommend your template primarily be a sequence of headings with topic areas to be covered, perhaps with a bit of instruction or reminder for tech spec authors. I've included a sample tech spec at ctohb.com/templates.

A quick aside before jumping into content: technical documents can be a bit dry and serious. If it aligns with your culture, I encourage you to inject lightheartedness where it's appropriate and not distracting. A good example is a clever meme at the top of the document that references the subject of the specification. In my experience, it takes only a manager/leader making a meme once in a spec to encourage others on the team (read: open the floodgates) to add their own.

Some suggested components to include in the template:

* A reminder that the document is in fact a template, and authors should make a copy before starting writing (this mistake is easy to make!)
* Guidance for how a specification should be thought about/a reference to company specification guidelines and approval processes
* A background section explaining the business rationale for the project
* Any particularly standout areas of technical risk this project has (e.g., it touches sensitive PII, or involves previously unused tools/architecture)
* A glossary/definition of any non-obvious terms
* Any explicit business goals the spec aims to achieve/correlation with previously stated goals (i.e., quarterly KPIs or OKRs)
* A solution architecture overview (the bulk of the document)
* Tech debt specifically discuss why or why not addressing any required/adjacent debt
* Data modeling, including required updates to a database or data pipelines
* Internal and external reporting or analytics and measurement requirements
* Testing
* Deployment
* Feature toggles/flags
* Implications on overall system reliability or disaster recovery Security and privacy
* Deliverable milestones

### Tech Spec Approval

To achieve the goal of ensuring consistency and alignment across projects and between team members, you must ensure team members are reading and contributing to each other's planning process. My recommendation to achieve this is to have a lightweight approval process for a specification before it can be considered complete.

#### Review Goals

Your tech spec review goals should include the following:

* Ensure all teams/projects are aligned on technical direction and building consistently.
* Review and educate the team on important data concepts/technical contracts.
* Ensure universal and consistent understanding of the problem at hand.
* Minimize chance of missing important edge cases or other non-business visible requirements.

#### Review Process

My recommendation for a lightweight review process is an asynchronous conversation in the document followed by a synchronous conflict resolution meeting (see Meetings and Time Management, page 28, for more on conflict resolution meetings). The author of the technical specification should, once they ve made some progress on the key elements of the project, circulate the document with other engineers who have sufficient context. The idea is for others to read the document and leave comments and questions in their own time. Many of these issues can be resolved quickly and asynchronously by the lead author, but some may be contentious or highly nuanced, requiring higher bandwidth communication.

To close out the process, the author should schedule a meeting whose attendees are only those who have read the document and contributed in advance. The purpose of the meeting is to review open questions and conflicts and come to a resolution. The purpose of the meeting is not for the author to simply read the specification out loud to a bored or disinterested audience. If there are open questions that require further diligence to learn about and resolve, then do that offline and review the results with only the interested parties afterward.

Once all open questions are resolved, document who contributed to the specification (so a future reader knows to whom they should direct further questions), and consider the document approved.

#### Leaders In Specification Review Meetings

The technical leader or manager does not have to be the approver for all technical documents. I encourage you to build a culture where the team as a whole feels safe to contribute and doesn't rely on you to provide technical guardrails or support. Early on, when the department is relatively small, you should be heavily involved in most or all specifications, but that approach won't scale. As soon as you've hired other senior individual contributors, architects, or managers, empower them to be lead reviewers and defer to them, allowing them to do the job you hired them for. If you find a senior member is not guiding the team well in these reviews, don't walk all over them in a public forum. Discuss and course-correct with them in private.

#### Technical Specifications As Documentation

Your tech team is now spending time creating thoughtful documents that cover how you're engineering your product, and the team should be making fewer mistakes as a result. The last way that technical specifications help you is by providing useful resources for future engineers who need to augment or modify the work that's been done. I recommend that you create a well-organized and searchable directory (e.g., an internal wiki such as Confluence or Notion, or document storage like Google Drive), and that your team be diligent about ensuring all specification documents are added to the directory. It may also be helpful to link or refer to the specification in code comments to explain why something is implemented the way it is.


