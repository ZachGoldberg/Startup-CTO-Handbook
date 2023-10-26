## Production Escalations

An escalator is a tool that takes in incidents and manages an on-call rotation, paging the on-call engineer and then escalating to others if pages go unacknowledged. PagerDuty is likely the most popular of these tools.

### Implementing Escalators

Before you implement an escalator and set up a rotation, make sure the engineers on your team have opted in to being on rotation, and that everyone knows and understands expectations for creating exceptions (e.g., trading an on-call window with somebody else during a vacation).

You'll also want to ensure that you have adequate documentation in place, and that everyone understands the standard procedures for what to do when receiving a page. Some considerations for establishing these procedures:

* Note where the recipient should post an acknowledgment of receipt of the page (maybe in the escalator tool itself or a shared group chat dedicated specifically to handling escalations).
* Enable easy access to the playbooks that are used to help diagnose particular kinds of problems.
* Determine whether to, and where to, set up any kind of site down notice (e.g., a company status page needs updating).
* Decide where and how often to post updates on the status of the inves tigation, impact estimate, and restoration estimate.
* Determine what to do once an incident is closed, scheduling a root cause analysis exercise and ensuring the particular incident does not recur.

### ROOT CAUSE ANALYSIS (RCA) EXERCISES

Any time there is a system issue that has measurable user impact, your team should perform some level of root cause analysis (RCA). The goal of

an RCA is to understand where your systems had a failure that allowed an impactful defect to make it to production and to end users.

To be crystal clear, the root cause analysis *must not* be about identifying fault or assigning blame. That needs to be true in every part of the RCA process and embedded into the culture of your team. The RCA attacks systemic problems (not human errors) in your system that allow a failure to occur.

Without that safety and willingness for team members to be forthright with their feedback and documentation, you'll miss out on key opportunities to improve the system.

#### RCA Documents

Your team should produce documentation in some form for every RCA. Depending on how often issues occur with your system, and the nature of those issues, you may wish to create a classification system for RCAs, with low-impact incidents getting a lighter-weight RCA process than high-impact incidents. It should be acknowledged that a thorough RCA on a high-impact incident is an expensive effort, taking considerable time and thoughtfulness, and that it may prove too heavy-handed for trivial defects.

That said, for most companies it's better to err on the side of overspending in this area and ensuring greater reliability. You should start with a thorough RCA on everything, and transition to a stratified RCA system once you've got a good understanding of the landscape and impact of the kinds of issues your team will face.

For issues that merit a full, thoughtful analysis, here is a template that will get you started and asking your team the right questions: ctohb.com/ rca. It is a good practice and in fact a requirement for most compliance frameworks to create a new document like this for every incident and to organize them in an internal company document store for later reference.

#### RCA Meetings And Timeline

As soon as it is practical after you've resolved an incident, designate an appropriate person to serve as the lead on an RCA. The lead should clone the template and begin filling in relevant data about the incident and beginning to explore the Five Whys (ctohb.com/5whys) for the incident.

They should complete an initial draft of the RCA and circulate it to relevant peers before scheduling a time as a group to explore and try and improve the analysis and future prevention steps.

The meeting attendees should read the RCA draft in advance and come prepared to explore the nuts and bolts of the incident and ideate on future prevention steps.

#### Choosing the RCA Lead Author

The RCA lead need not necessarily be the person who responded to the incident. The ideal RCA lead should be someone who is very familiar with the systems involved and can ask insightful questions about where tools and processes failed and generate ideas for improvement.

Note that we re not throwing anyone who made a human error under the bus. That person may be the RCA lead if they fit the prior criteria, but their error does not on its own make them the right person to lead the RCA. They should certainly contribute and take the opportunity to learn through the process. But again, they are not punished for their mistake as part of the process. Authoring an RCA is not a punishment; it's an important responsibility and element of system maintenance.

#### Scheduling RCA Remediation Work

A good RCA process will often identify many work items for the team to improve the system and make future incidents less likely. The natural next question is: do we do them now? For the engineers involved, the answer is likely yes; for a manager concerned about hitting deadlines and a roadmap, the answer will be less clear.

There is no one right answer to the question, but here is some general guidance:

Never let a good crisis go to waste. Motivation to remediate issues will be at its peak around the incident and the RCA meeting, and highly motivated engineers are often most efficient. It's also easy to underestimate the overall cost to your team of system reliability issues and thus under prioritize reliability improvements. The fact that a production incident occurred should remind you and your team that these investments are critical to limiting distractions and enabling teams to focus on productive feature work and delivering consistent high velocity.

The level of effort for many remedial issues is likely to vary widely. Some typical tickets might be add more logging or change a setting in our CI provider to ensure PRs with failing builds cannot be merged. These types of trivial tickets cost more to maintain and groom in a backlog than they'd take just to do in the moment, so just do them. The chances they are the wrong thing to do are pretty low, and if negative consequences result, they can be easily reversed.

For high-effort remediation steps, I encourage you to triage those and put them through your regular planning process. Often, high-effort remediation steps can be simplified with the benefit of time and planning. Said another way, the identified right way to solve the problem on day one may not be the ideal solution, and only by putting the issue through the regular paces of technical scrutiny can a better, perhaps less costly, solution emerge.
