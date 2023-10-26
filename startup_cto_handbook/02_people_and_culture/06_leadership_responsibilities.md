## Leadership Responsibilities

As an executive, your leadership responsibilities extend beyond the technical components of developing and growing an engineering team. You should be looking to help the company be successful as a whole, with a particular bent toward how technology contributes to that success. Doing that means keeping an eye on how technology is working with the rest of the company by facilitating healthy collaboration with other teams, both in-house and external, as well as putting into place good process and management practices surrounding technology and product development.

### Product and Design Teams

It's your responsibility as a technical leader to ensure that your engineering team is working efficiently with the product and design teams, even if those teams report to somebody else. When designing this process, as a general rule, throwing things over walls between groups isn't efficient. Good interaction between product, engineering, and design teams requires empathy and understanding. What does the other team do, what challenges do they face, and how can you and your team make their lives easier? Below I'll provide a little background on these other functions and some concrete suggestions on how to work together efficiently.

### Design Systems

Design teams would ideally like their work to be implemented faithfully, pixel-perfect, by the software engineering team. Absent any sort of structure or set of constraints, actually achieving pixel perfection is expensive or even impossible; however, a bit of shared understanding and a design system can make the task dramatically cheaper.

A design system is a set of standards for managing design at scale using reusable components and patterns. Large companies tend to create their own design systems. Atlassian, for example, makes theirs available publicly (ctohb.com/design). As a small startup, innovating on design systems is likely not key to your success, so it follows that you should use an off-the-shelf design system. Nowadays you can choose from a plethora of off-the-shelf systems with rich feature sets and a variety of aesthetic styles that, more likely than not, can be customized to match your brand.

Not only do design systems provide a time-saving set of guardrails and components used by designers, they often come with out-of-the-box support for various frontend languages and frameworks. Material Design, for example, has a published design system in Figma (ctohb.com/figma), as well as a set of JavaScript react components (mui.com) and angular components (material.angular.io).

By adopting a system like Material (or AntD, Chakra UI, Blueprint, Bootstrap, Semantic UI, etc.) you not only get a suite of prebuilt technical components but you also get a system that integrates neatly with designer tools. By integrating the same system with the tools of both engineers and designers, you'll ensure that what your designers create will map cleanly to the components available to engineers. is cuts down or even eliminates the need for engineering to do custom styling or frontend UI, and makes it easy to match a design down to the pixel.

Beyond the efficiency gained by having consistency between design and engineering, most design system component implementations also take into account or automatically solve for other design priorities, such as accessibility (both for screen readers and color contrast management for the colorblind), adherence to UI standards, and even out-of-the-box dark mode support.

### PRDs and Specs

A Product Requirements Document (PRD), sometimes also called a product specification, or just a spec, is an essential part of the product development process. Note that a product spec has a different purpose and is a distinct document from a technical spec (see Technical Planning and Specifications, page 164) There are many methodologies and templates for PRDs. Sources like lennysnewsletter.com regularly catalog some of the most common and thorough ones. PRDs have a shared purpose, which is to describe the problem background as well as the why that justifies a project or feature. PRDs often include lists of requirements that need to be met to meet an objective. Most PRDs leave the how of a feature to a technical spec.

A PRD, like a technical spec, is a living document. As your team learns more about the problem, or as factors in the outside world change, these documents can and should change and be updated to match. I encourage you and your team to use these documents as a continually updated source of truth to document your considerations and ultimate decisions made during the product development process.

### EPD

EPD is an industry acronym for Engineering Product and Design. The implication is that all three departments are essential to the product development lifecycle and need a healthy way of working together to produce great results. From the business's perspective, all three departments together are responsible for producing a product the customers love, so it's helpful to have a single person with a single set of business goals setting the direction for all three units.

### Product vs. Project Management

Product and project management are industry terms with distinct meanings. A product manager is accountable for the design and creation of the product as well as the key performance indicators (KPIs) the product should meet for the business. Melissa Perri's *Escaping the Build Trap* is a phenomenal resource that dives deeply into the role and impact a great product manager can have on your organization. A project manager is accountable for guiding the internal organization of the team, managing internal communication, and adhering to the roadmap and deadlines.

Early on in your startup, as CTO you may be filling both of these roles. Very early in your hiring roadmap you should plan to have a great product manager who can take some of these responsibilities from you. Some product managers excel at project management, while others don't find joy in it and therefore don't put time and attention into it. Arguably, early on at your startup, it's okay either way; with a small team, the consequences of lax project management are minimal. However, as you get larger, formalizing project management becomes more important, and if your product manager isn't filling the role, you should aim to augment them with a project manager.

My general recommendation is to formally delegate project management when EPD has grown to around twenty people. That will mean formally assigning yourself that role, having the product manager do it, or hiring a dedicated project manager. you'll want to be involved early on in setting up project management processes, ensure that the mechanisms being put in place for project management support the kind of culture you're looking to build, and are empathetic to all parties involved.

### Managing Managers and Manager Training

There's an industry expression that your company is ultimately run by your middle managers. Theimplication is that, despite whatever strategies and processes executives put in place, it's the middle managers who ultimately have the highest impact on the quantity and quality of output. Middle managers hire individual contributors, set their day-to-day objectives, and hold them accountable for quality standards. The best middle managers are mini executives, focused on culture, building collaborative teams, and working to enable them to do their best work. It follows then that, as an executive, you should put a lot of effort into hiring, managing, and training those middle managers.

The complicated topic of training managers deserves an entire book on its own, and it's a skill that takes time to master. That said, the top two lessons I can offer you that will provide leverage to all other skills here is to set an example yourself and build a culture of continuous management learning. The minute you hire or promote somebody into management you should make it clear that your expectation is that they will commit to putting time and effort into refining their craft of management. you'll go out of your way to make that easy for them by including management training in their personal goals and development plan, providing them resources to level up on management skills, helping them work through management problems, and teaching them everything you know.

Management training doesn't have to be over-the-top burdensome and expensive. If budgets permit, I highly recommend hiring outside management coaches for your managers. An internal manager monthly book reading/review can also be effective at kickstarting the continuous development flywheel.

### Finances and Budgeting

Part of your role is likely shouldering accountability for the present and future cost of the software engineering department (and sometimes design and product departments). As a responsible steward of that budget, you should know how much was spent on various items in the past, and how much your company as a whole has allocated in the future. Most importantly, you'll need a plan to justify spending that allocation wisely.

In general, you'll find the two largest line items in a technical department are people (payroll) and infrastructure/SaaS. Keep in mind that the actual cash cost of an employee is higher than just their salary, as it will include benefits and payroll taxes. A good rule of thumb is that the cash cost of an employee is 20 percent above their salary; this percentage is referred to as the burden rate.

### The Budget

Most finance teams use sophisticated accounting and budgeting software to manage the company's books. If not, they'll have a company-wide spreadsheet that's far larger and more complex than you need as CTO. In my experience, finance departments are not usually willing to let people outside of finance make changes to the core budgeting system, so unless they give you something to start with, it's on you to make a financial model for your department.

Given that your department's costs are fairly predictable, and centralized in a few line items, the model you make doesn't have to be very sophisticated. My recommendation is that you maintain a spreadsheet that includes the following:

* Payroll tab
* SaaS/Costs of Goods Sold (CoGS) tab
* Infrastructure tab
* Other tab (including travel, hardware) Summary tab

You can find a sample technical department budget spreadsheet on ctohb.com/templates that will get you most of the way there on the actual modeling.

### Working with your CFO

If your company is like most startups, you'll be the most expensive department, and your CFO should be well aware of that. Some things to consider that are helpful for you and will make your CFO your best friend:

* Help your CFO know how money is and will be spent. Avoid surprises wherever possible. Provide guidance for things like hardware cost, travel/conference cost, and cloud cost upfront.
* Maintain a budget for your department and keep it up to date with changes in your forecast.
* Update your budget regularly with actuals from the finance department and ensure the delta between forecast and actual is understood and managed.
* Establish a plan for hiring and include estimated salaries.
* SaaS bills are often a burden to track. Consider either using a credit card statement analysis tool (i.e., a SaaS Management Platform, aka SMP) or hiring an assistant to regularly categorize and reconcile these expenses with your budget.
* Finance departments often care a lot about cost attribution to differentiate; for example, costs that are part of Costs of Goods Sold (COGS). Indicating in your budget a very coarse-grained why for each line item can win you friends in finance.

### Measuring Engineering Velocity/Health

I have yet to encounter a technical team or leader who has managed to consistently and usefully quantify actual engineering output. is includes measuring velocity as the sum of estimates of completed tasks. (See the Estimates section of Workflow, page 160, for a discussion on the unreliability of technical estimates.)

I have, however, seen many companies effectively measure engineering health and contributing factors to engineering velocity namely, cycle time and work time allocation.

#### Cycle Time

Cycle time is a measurement of how long it takes to go from idea to shipped feature, and is often broken down into these sub-milestones:

* Time spent coding
* Time to start a code review Time until code is approved Time to deployed code

In general, low-cycle teams are more efficient and able to iterate, innovate, and deliver value to customers faster. There are many tools that facilitate measuring cycle time, including LinearB (linearb.io) and Code Climate (codeclimate.com). LinearB has published a set of benchmarks, using data from thousands of engineering teams, on metrics associated with cycle time.

#### Work Time Allocation

The idea of measuring work time allocation is that, while measuring how much work is done is difficult, it's comparatively easy to measure what types of work team members are spending their time on. is resulting information is directionally useful. For example, if a team is spending the majority of its time addressing bugs, then it's a good hypothesis that improving software quality and bringing down that time percentage will result in more time allocated to developing new features, and thus an overall improvement in health and velocity.

Actually measuring work time allocation can be done in a semi-automated way by pulling reports from ticket systems, or it can be measured with regular lightweight pulse surveys to the team.

### Fundraising and Due Diligence

Generally speaking, as CTO, your role in fundraising and due diligence is fairly minimal. At most startups, the CEO and perhaps the CFO do the lion's share of that work. Your involvement likely comes toward the end of the process as investors do due diligence on the company. Many (though sadly not all) of the requests made in due diligence are for information that a well-organized engineering team already maintains as part of doing business. Keep an eye on on the following, and be ready to produce for due diligence:

* Organization chart
* Department budget
* Full description of all products engineering has created and maintains
* Engineering roadmaps (usually they're looking for short/medium-term roadmaps)
* A list of major areas of tech debt, what I've labeled a tech debt balance sheet (see Tech Debt, page 145)
* High-level system architecture diagrams
* Full description of how software is distributed and updated, either as SaaS or as versioned desktop/mobile software
* A high-level description of systems, how they're hosting, and your security practices
* Information about software licensing, including code scans of company code confirming no license violations or unlicensed proprietary software

It's not uncommon for an investor to hire a third-party firm to conduct a technical diligence audit. These audits may involve interviews or meetings with you and perhaps a few other senior members of the team. Be prepared to discuss your engineering process, assess the general productivity of the team, and do a code walkthrough of parts of your system.

My advice is to be candid with these auditors. They've looked at a lot of tech companies and are well aware that all engineering teams have debt and parts of the system that teams are more proud of than others. The more your investors know about your strengths and weaknesses, the better they can support and hold your team accountable for improving the weaknesses going forward.

### Vendor Management

In general, the responsibility for sourcing, negotiating with, and managing third-party technical vendors will fall to you as the CTO. For most, this is an unenjoyable but necessary part of the job, and consequently, it doesn't get much thought. Performing this responsibility well, however, can provide significant cost savings for a business. Here, I'll walk you step by step through a typical SaaS negotiation/signing process and provide some tips for how to add efficiency and save cost.

#### Self-Service Signup Tools

Typically, either you or a member of your engineering team will highlight a need for a type of tool, and if it's one of your engineers or managers they'll ask either for you to approve the expenditure or for you to sign up for the tool. Many tools are inconsequential in cost and have trivial self-service signup flows. I recommend you work with your budget and finance team and set a threshold below which your managers are authorized to simply sign up for the tool independently. For tools that are above the cost threshold or don't have self-service signup, you'll need to enter into a discovery and negotiation process with an enterprise vendor, which typically has four steps.

#### Enterprise Tooling

You're now facing an enterprise sales process. Before reaching out to the vendor's sales team, be sure that this particular company is the one best suited to solve your problem. In most instances, I recommend starting a spreadsheet, doing some diligence on all the vendors in the space, and filtering down to a top two or three. Even if one of them is by far your preferred choice, it doesn't hurt to have some deeper context on the space and for negotiating knowledge/leverage/BATNA (best alternative to a negotiated agreement).

##### Sales Qualification

When you first reach out to an enterprise vendor you'll almost certainly enter what is called a sales qualification process. At this step, especially as a technical executive, your needs are not yet aligned with the vendor. You're probably looking for pricing, a contract, and the shortest path to getting started. The vendor is looking to make sure you're their target customer and are likely to sign up and not churn for at least a few years.

Most SaaS sales companies will have frontline sales representatives take the initial phone call, and their primary objective is to learn about your company and see if you fit their profile. They might not have much technical knowledge and often they won't be able to discuss pricing with you. As a result, you're not likely to get much value from this first meeting. My advice is to either delegate these intro meetings or try and get the sales qualification questions from the rep via email and answer them sufficiently to skip the intro meeting altogether.

##### Negotiation

Once the vendor has validated that you fit the mold of their target customer, they'll schedule a second meeting with more senior resources on their side. Typically, this would be a sales manager or perhaps a technical sales representative. This is the stage at which you'll start to get answers to more of the technical questions you have about the solution, and you'll get some transparency into the pricing models the vendor is authorized to use.

Here are some general negotiating tips:

* Keep in mind that, at the end of the day, a salesperson's job is to sell you the product, so you're on the same team when it comes to landing on terms that are mutually agreeable. The more transparent you can be about what matters to you, the better they'll be able to craft a sales agreement that meets those needs.

* Don't undervalue factors other than total cost, such as total contract length (longer contracts should come with steep discounts), payment frequency, payment terms (e.g., net 30, net 90), or what happens to contracts in the event of a change in control of either company.

* In general, look for contracts that grow as you grow. Ideally, the initial cost is low and grows over time as the tool is used more heavily and provides more value. Encouraging a we grow together mindset can help reduce those initial costs.
* Keep your finance and compliance teams in the loop. If your CFO is great at negotiating, let them handle this part of the process.

* If your total SaaS budgets are large or you're negotiating a lot of these deals, consider using a third-party negotiator, such as Vendr. Often these negotiators will charge based on how much they save you, and they have data from many more contracts than you do to understand pricing.

* Be aware that end-of-month/quarter quotas are real and discounts around that time are very common.

##### Signing

Once you've agreed on terms and exchanged paperwork, the next step is to find out who the authorized signers are for your company (assuming you're one of them), get the documentation signed, and keep it organized.

Do not lose or misplace these contracts as they'll be useful for future negotiations or due diligence. Ensure you're tracking the costs in your budgets or with your SaaS management platform (SMP).

##### Post-Sales

After the deal is signed you will likely be handed off to a different representative at your vendor, someone whose title is similar to either post-sales support or customer service manager (CSM). These individuals are incentivized by, measured by, and focused on customer retention or product upsells. They're knowledgeable about the product, and at least somewhat technical. Going forward, they'll serve as your advocate for new features and getting defects resolved.
