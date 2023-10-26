## Team Makeup

The key difference in impact between junior and senior talent is the consistency with which they can reliably solve different kinds of problems. As engineers become more experienced, their judgment and decision-making improve on larger and larger surface areas. Similarly, you should expect that more senior talent will develop solutions that have fewer defects, last longer, and are more durable to requirements change along the way. That's not to say everyone has to be senior; in fact, it's rare that a majority of projects involve architecting brand-new greenfield solutions.

The right blend for any given team considers the types of work to be done and staffs the team thoughtfully as a result.

### Seniority Makeup

Your team should be more heavily weighted with senior engineering talent if your codebase is:
* Very new, requiring lots of architecture and foundational contract creation
* Is very old, poorly maintained, or poorly thought up and considered difficult to work in in short, a brownfield codebase
* Is meaningfully changing in requirements, especially if new requirements do not look very much like old requirements
* Is using new tools, techniques, or patterns that require validation for your problem
* Requires establishing new patterns/ways of doing work, especially with ecosystems that don't provide tight guardrails that encourage healthy patterns.

### Technical Specialization


On Day 1 of most startups, the team will consist of a small handful of engineers, typically two or three. Having a team of three leaves limited opportunity for specialization. There are twenty categories of technical work to do and only three people, so by the pigeonhole principle, at least one person and more likely all three will be doing many types of technical work. Said another way, early on at your company, everyone is expected to wear many technical hats. As your company grows and you add more people to the team, you and your employees will find more opportunities for specialization.

So, you've raised a round of funding and you're looking to expand your team for the first time. How do you decide whether you need frontend engineers, backend engineers, DevOps engineers, etc.? Here are some general guidelines:

**Listen to your team:** The people currently doing engineering are very likely to be vocal about where the biggest sources of inefficiency are, and where the most help is needed. Your job as a manager is to take in that perspective and extrapolate going forward. Is the team pointing out a problem that will disappear in two months, in which case hiring somebody wouldn't be appropriate? Or is the issue systemic in nature and likely to continue for the long haul?

**Look for factors that are hurting produ-ctivity:** If your team is mostly frontend engineers and you're struggling with backend reliability, then that should be a sign that you need backend or DevOps engineering help. is same principle applies to testing, developer experience, etc.

**Specialize with scale:** Until your team is north of a dozen people, chances are high that you're better off with a team of primarily generalists.

Here are some rough numbers for team composition based on startup experience:

* Team size 1 5
  * Your team is all generalists, specialized at most between frontend, backend, and mobile.

* Team size 5 15
  * Your team is specialized by product or general skill area such as backend, frontend architecture, frontend design, DevOps, and testing.
  * You'll likely want to start thinking about dedicated resources in testing and DevOps when you've grown to (or past) fifteen engineers.
* Team size 15 30
  * You should have real specialization by this point and be hiring only people with expertise in a subfield of software engineering.
  * At this point, any inefficiencies in how work gets done are likely to start getting very expensive across the team, so make sure you're investing either headcount or time in ensuring that developers are able to get work done, their tools work, and operational logistics are streamlined.

* Team size 30-plus
  * At this stage there are many methodologies for breaking out teams into smaller units to ensure work stays efficient. If you have multiple product lines, aligning team members with specific product lines is a fairly natural place to start organizing.
  * Many companies at this stage use a concept of pods, where a pod has a focus area and is made up of a diverse/cross-functional team capable of independently executing tasks in that area.

### Project Maintenance: The Two Crews Philosophy

If you are shipping end-user software, your engineering team has to strike a balance between doing new work and handling support tickets that come in from active customers. Left unchecked, the need to handle support tickets can become a major distraction to the team, hurting efficiency, draining morale, and burning out your best people. There are many right answers to solving this problem; the important thing is that you recognize its effect on your team and architect a solution to help them be productive and drive great customer outcomes.

Microsoft has published a great article on this topic titled Building productive teams (ctohb.com/teams) describing what they call the two crews model. Thetwo crews model outlines a feature crew and a customer crew.

The feature crew focuses on the future, building new features. The customer crew focuses on the present, working on active customer issues, diagnosing bugs, and prioritizing site health.

Other names for customer crew might be a maintenance team, or a Tier 2 support team (where Tier 1 is your non-technical customer support staff).

Splitting maintenance work off into its own team has many benefits:

* It allows for a dedicated team to monitor the customer queue at all times, triaging and resolving anything important and urgent.

* It allows your feature team to remain 100 percent focused on the future, undistracted by customer support work.

* It allows for developing specialization within the customer crew, building tooling and expertise at handling issues, making issues less expensive to handle over time.

* It provides another career path for individual engineers, especially junior engineers, to learn and level up on your team.

The first question I get asked about the two crews approach is: how long does somebody stay in the customer crew? There are four approaches to determining customer crew tenure:

* Make the customer crew a permanent, distinct team or department.

  * You have published job descriptions for engineers focusing on support and debugging. Note that for many engineers, a job focused only on debugging may sound undesirable. To me, a job description that emphasizes data entry or accounting sounds very unpleasant, and yet there are many people who enjoy and even pursue those jobs.

  * Don't assume that just because you wouldn't do that job, there are not others who might be excited by the prospect. In particular, working on a customer crew exposes an engineer to a huge amount of code, often offers opportunities to talk to customers, and involves less product-driven deadline pressure all things that might appeal to the right candidate.

* Create an explicitly discussed career trajectory for engineers to start on the customer crew and, after a period of time (usually twelve-plus months), transfer to the feature crew.

* Engineers rotate between the crews on a regular basis. The Microsoft blog post referenced above recommends swapping some team members between the two crews every week.

* Define the customer crew as a temporary team. is can mean either that the customer crew itself doesn't exist full-time (perhaps for only one week per month), or that team members are constantly rotating between the customer and feature crews.

I recommend creating a dedicated, permanent customer crew only for teams or products where customer issues are costly enough for the team to warrant it. If you're in a high-support business, a dedicated customer crew can be a force multiplier for both engineering productivity and customer satisfaction.

### Team Organization

In general, you'll find technical organization charts organized in one of two ways: functional organization and product organization. A functional group is organized around the type of work team members do, such as frontend engineering, testing, or a particular internal service. Product groupings, sometimes called business units, are organized around a particular business-related/product focus, such as the enterprise core application team or the consumer mobile app team. How you choose to organize your team can have a significant impact on team collaboration, productivity, and morale. Product-organized teams, often called pods, are the right answer most of the time.

When you're designing an organization chart you should consider what you're optimizing for. For a startup, the primary goal of an organization chart is to ensure that different people who need to collaborate closely with one another are enabled and encouraged to do so by the organizational structure. The best way to achieve that is to have all the people who directly contribute to the feasibility and success of a product be organized together, to hold them accountable to a common set of goals, and to develop a shared sense of ownership over that product.

When your team is small, and you have just one product, the question of how to organize is moot it's one cross-functional team all working on the same product. By the time your team has grown to 12 or more people, you'll need to start being more deliberate about defining what a pod is, and finding a method that is easy to understand and grounded in your product reality, before breaking your team out into pods.

The advantages of pods are greater team cohesion, autonomy ownership, accountability, and overall execution velocity. is approach is not without tradeoffs, however. Having a long-lived group of engineers work on one product can create knowledge silos. As organizations scale, it's also more likely for a product team to make architectural decisions that might optimize locally and lead to duplicate work or inefficient use of compute resources. If you anticipate and plan for these issues arising, the pain they induce when well-managed will be far outweighed by the benefits of autonomous, high-performing pods.

### Managing Remote Teams

There are a sufficient number of successful 100 percent remote software engineering teams that it is incontrovertible that remote organizations can work. That's not to say all remote teams are successful, or that it's necessarily easy to build an entirely remote culture. I've spent nearly a decade managing remote teams. Below are some recommendations that should apply to most remote management scenarios.

#### Documentation

Being remote means that There'snobody sitting next to you to answer questions, but that doesn't mean the questions go away. ose questions still get asked, only now social context is lost and so perhaps the question goes unanswered for a while. Or, rather than holding questions until the other person takes a break, now they get asked immediately, prompting various kinds of notifications and distracting from focus work. Having a robust set of internal documentation with an effective search feature can speed up time-to-answer and reduce the number of one-on-one context switches that become barriers to getting work done.

#### Asynchronous Work

A great way to turn remote work into an asset rather than a liability is to lean into asynchronous working practices. A strong asynchronous culture reduces the burden of time zone mismatches and reduces the amount of time spent in remote meetings/dealing with remote context switches. (See Benefits of Overcommunication, page 20, for more on asynchronous communication and the value of asynchronous work.)

#### In-Person Meetups

As useful as they are, video calls are no substitute for sitting down and having a meal as a team. The bonds that are formed by in-person meetings tend to endure over a long period of time, so an investment in even infrequent in-person meetings can improve the quality of social relationships between team members for months. As a general rule, it's healthy for a team to meet in person once per quarter to maintain these relationships and minimize remote social frustration.

#### Time Zone Overlap

My overall recommendation is for teams that are working on the same project to have a minimum of four working hours of overlap. That leaves a sufficient window for any regularly scheduled meetings and an opportunity for ad-hoc conversation and questions.

#### Create Social Opportunities

In general, people's default mode with video calls is to multitask during the call and then get off the call as fast as possible. Once a work conversation is over, everyone hangs up. That isn't how people interact in person; for example, the meeting ends and then you talk about sports in the hallway when walking back to your desks. That bit of social time before/after meetings is a valuable way for people to build relationships and trust, and it won't happen unless the leadership and culture actively support it. A cheap and easy way to do that on a regular basis is to ask a lighthearted, round-the-room, ice- breaker style question on a regular basis, such as What's one bit of good news personally, and professionally, you can share?

You can support remote social building with remote happy hours, or virtual team dinners and social activities. Post-COVID-19, there are many online social facilitators who run remote events ranging from digital casino nights to virtual escape rooms.

#### Camera On

Depending on which article you read, 70 90 percent of communication is nonverbal. Using a webcam during a video call doesn't replace all of that 70 percent, but it is unquestionably an improvement over having no video at all. Since webcams are so cheap now, There'sreally no justification for not having that additional social communication bandwidth within your company. The common objection is that employees are worried that others may judge their appearance on camera. If that's a concern you are facing, I encourage you to walk through the business justification for wanting as high-quality communication as possible in a remote setting, and have a zero-tolerance policy for any employee who makes inappropriate remarks on another's appearance. It can also be helpful to create a space for people to do whatever they feel appropriate to get themselves ready, such as allowing/encouraging background blurs, and occasional video-off to deal with something in reality or to tidy up.

#### Recording Meetings

Recorded meetings provide a great way to allow employees to get up to speed on a topic without requiring a work stoppage for a calendared meeting. In general, you'll find that very few employees or candidates are opposed to the idea of recording video calls. Recordings are also a great way to expose more people to some content than is perhaps comfortable in the moment. For example, you may want a hiring team of four or five people to watch an interview with a candidate, but having five people in the room at the time may be intimidating. Making a recording of a 1:1 interview is an excellent way to ensure everyone has the opportunity to evaluate the candidate without creating an uncomfortable or unfair situation by overloading the interview meeting itself.
