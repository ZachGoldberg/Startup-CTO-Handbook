## Tech Culture and General Philosophy

I encourage all leaders to adopt the general leadership style known as *servant leadership*. As a servant leader your main focus is on serving the needs of your team. is means focusing on empowering others, building

a culture of transparency, communication, collaboration, and growth. As you think about your team and culture, and about decisions on a day-to- day basis, ask yourself which option enables the team to do their best work and thus deliver the most for the business.


### Ten Pillars of Tech Culture

*1. Spend Team Time on Things That Matter to the Business*

In general, you want your team to be spending time on things that move the needle for the business, and it's your responsibility as technical leader to create an environment where your engineers can focus their efforts in this way with consistency and minimal distractions. is frame may seem obvious, but when used properly, it's a powerful tool for decision-making.

For example, say your team is debating between using an off-the-shelf framework for the backend vs. writing something from scratch. There's a nuanced list of pros and cons one could make that would discuss things like added flexibility from building from scratch vs. shorter time to first deployment with the framework. In this hypothetical reality, what your business really needs is to iterate on the frontend and optimize the customer journey, so every moment spent on the backend is one moment less spent moving the frontend forward. If the out-of-the-box solution is good enough to power that frontend iteration, even if you have to throw away the framework and rewrite the backend in eighteen months with a custom solution, iterating quickly on the frontend now and finding product market fit earns your business the right to do that rewrite down the line.

*2. Use Reliable Tools Where You Can and Innovate Where it Counts*

Also referred to as don't reinvent the wheel, and standing on the shoulders of giants, the idea here is to use off-the-shelf components (libraries, cloud services, applications, packages) whenever possible. There's an inherent tradeoff for using off-the-shelf components between ease of getting started and customizing a solution to match your exact problem. I contend that in most circumstances where a pre-existing implementation already exists, the tradeoff leans heavily towards using the off-the-shelf service, library, or application.

In the rare circumstance where you will ultimately need to rewrite or heavily customize the dependency, the experience you had with the off-the- shelf tool will be very valuable in influencing and speeding up the design of the custom build.

*3. Automation Unlocks Velocity*

Your goal as the architect of your team is to ensure that your team spends as much of its time working on code that produces value for the business as possible. There are a number of time-consuming tasks developers do on a regular basis that are necessary to writing code but don't themselves add business value (e.g., replicating production environments, getting code to run locally, figuring out how to run test suites, provisioning feature branch environments in the cloud, tracking down bugs that are not covered by tests, etc.).

These types of tasks impose a constant tax on overall productivity. You can avoid paying the tax by making an investment in automating these tasks whenever they are identified. Encourage your team to document whenever they are spending more than thirty minutes on nonproductive technical work and provide a space in your process for automating those tasks so nobody loses that hour ever again.

*4. Frequency Reduces Difficulty*

Under the heading of Frequency Reduces Difficulty, Martin Fowler expounds on the phrase, If it hurts, do it more often (ctohb.com/fowler). Any process or task that is painful, error-prone, or otherwise costly for your team, Fowler contends, is a symptom of that task being underdeveloped. Without pressure from you, painful technical tasks tend to be the last ones volunteered for. As a result, they're neglected, and the pain gets worse over time. Alternatively, if your team culture emphasizes prioritizing these painful tasks, then more effort will go into automating, documenting, and improving those tasks, making them ultimately less painful or even entirely automated. As Fowler points out, doing tasks more frequently also provides more feedback on them and builds skill with practice, all of which further reduce the difficulty and pain of the task.

For many teams, releasing code to production is an example of a task that is often painful. Releasing code can require hours of time to actually deploy and so it's done infrequently. If, however, your team subscribes to the If it hurts, do it more often philosophy, then you as the technical leader will push for regular releases at faster intervals. If you start with a weekly release, then the first week the team will feel the pain, and the second week will be just as painful as the first, but perhaps the engineers will notice an opportunity to automate a piece of the deployment. By the third, fourth, or fifth release, you'll likely have an entirely new set of scripts and infrastructure to get code out the door, enabling you to accelerate the release frequency to twice a week. After a while, you'll be able to get code out the door with the push of a button. Releasing more than once per day is referred to as Continuous Deployment (see Continuous Deployment, page 216).

*5. Standardize The RFC Process*

An RFC, or Request for Comment, is a document that outlines a technical idea, process, or specification and is written for the purpose of peer review and subsequent adoption. Most protocols you're familiar with have an associated RFC, such as RFC 2616 for HTTP, or RFC 1035 for DNS. The idea of peer review and subsequent adoption and standardization is a powerful tool for pseudo-democratically making technical decisions and getting buy-in on the results, and it can be a great tool to use with your team.

I recommend that you formalize an RFC process and provide some guidance as to what kinds of decisions should be put through the RFC process.

A formal process can look like a simple checklist and a template document that includes where to put your copy of that document, how feedback/comments are collected, and what the process for voting, finalizing, and standardizing the document looks like.

My suggestion is to lean into the tools you have and, for example, create a markdown document in source control that acts as the RFC template. A new RFC would then be a pull request on that repository introducing a new markdown file with the proposal. It is then somewhat natural to collect votes as approvals on that pull request, and finalization of the RFC is when the pull request is ultimately merged. Alternatively, if you've set up an internal wiki, you can create an RFC there, and use a wiki's comment system to collect feedback.

You should also set clear expectations for what kinds of decisions get put to RFC. I recommend limiting it to high-level processes, technical opinions, and culture, and not using it for tool choice or system architecture. Some good examples of topics to RFC:

* Standardizing naming conventions (master vs. main, black/whitelist vs. allow/denylist, camelCase vs snake\_case in various contexts)
* Usage of code formatters/static code analysis Meeting cadences/agenda/artifacts
* Monorepo vs. manyrepo
* API Design opinions/philosophies

I encourage you to include a section in your RFC template on how the results of an RFC are institutionalized. For example, if the RFC proposes standardizing a technical opinion for your team, once the RFC is ratified, that opinion should be incorporated into your engineering guidebook and onboarding documentation, so it becomes canon for current and future employees as well.

*6. Make Speed a Goal, Not a Strategy*

In *Good Strategy/Bad Strategy,* author Richard Rumelt defines a good strategy as one that provides three elements: a diagnosis of how to overcome a challenge, a guiding policy or an overall approach, and a set of actions for how the policy is to be carried out. Strategy outlines the journey.

In contrast, a goal is a description of a destination. I've heard countless teams tell me their strategy is to go fast, with no outline of how they get there. I'm entirely in agreement that engineering velocity and speed is a great goal, but it's not a strategy.

Here's a sample strategy for delivering high-velocity engineering:

**Challenge:** We re an unregulated, early stage startup that needs to iterate as fast as possible to find product market fit before we run out of capital.

**Diagnosis:** We have an opportunity to minimize complexity and move quickly. Since we don't yet have product market fit, the value of what we ve built so far is minimal, so we need to ignore sunk cost and opt for fast rewrites while we re still unsure what our product will look like long term.

**Action plan:** We will focus on hiring software engineering generalists, reinforce a culture of curiosity and scrappiness, leave ego at the door, and invest only a modest amount of effort into long-term technical planning. Instead, for now, we'll focus on our ability to ship MVP product experiments to the market.

*7. Participate In Continuous Education And Technology Conferences*

Technology conferences are ubiquitous nowadays, and There'sa gathering of like-minded individuals for nearly every subspeciality of software engineering. Your team, if they haven't already, will likely ask at some point for a budget to attend these conferences. A typical budget request would be for $1,000 for air and hotel, and $500 $1,000 for entry fees and per-diem expenses. All in all, it will cost on the order of $2,000 for an engineer to attend a conference, plus their time out of the office. Both in the spirit of learning and continuous improvement, as well as a host of ancillary benefits, I recommend that you budget for and regularly approve or systematically approve conference requests.

If the only benefit of attending a conference were that the employee learned a bit more about a relevant technical topic that they're passionate about, the cost would be worth it. There are, however, many more benefits.

I encourage you to require conference attendees to produce a written document summarizing key things they learned after they return. You should also consider sponsoring the conferences most relevant to your business and having you or one of your team members host a seminar on a particular topic. These seminars and sponsorships provide excellent branding opportunities for your company, getting your name and message in front of a very targeted audience an audience that likely contains candidates you'd like to hire in the future.

In summary, allocating a budget for engineers to attend conferences is good for individual professional development, with a fairly low-effort documentation exercise. is can be good for team learnings and is a great opportunity through networking, sponsorship, or hosting to recruit future members of the team.

*8. Deploy Rubber Duck Debugging*

Have you ever had the experience of trying to work through a problem and, while explaining it to a coworker, figured out the solution? Rubber Duck Debugging (ctohb.com/rdd, ctohb.com/tpp) is a simple practice that attempts to replicate this phenomenon without involving or context-switching a coworker.

Rubber Duck Debugging is the process of working through a problem by first speaking the problem out loud, perhaps at a real physical rubber duck that is sitting on your desk. The idea is that by speaking the problem out loud, often one will hear the flaw, or see a solution to the problem, that they hadn't considered when the problem was only in their head. The rubber duck approach potentially saves a coworker an interruption and gets you an answer faster.

*9. Build An Explainer Video Library*

If a picture is worth a thousand words, a one-minute video of your desktop/IDE/application with your voice discussing a technical topic is worth $1,000 in developer time savings. There are many tools that make it trivially easy to record and share these mini video messages, including tools built into Slack and Loom. Not only can you clearly convey a technical idea more easily with a screen recording and voiceover than text, but you can do it on your own time. The resulting video can be sped up at the viewer's discretion, and the video can be archived and rewatched later as part of an organizational knowledge base.

As the technical leader of your team, I encourage you to regularly make these mini video explainers, especially at times when you're making changes to the architecture of the platform. Organize all the videos in a library in your internal wiki. Make sure they're complete and standalone but short and to the point; if you don't get around to critical content until the end of an overlong video, your team members might never see it. Also, make the approach as consistent as possible so viewers know what to expect.

I guarantee you'll get relatively poor watch rates upfront as you make and distribute the videos, but over time that library will provide tremendous value as a source of reference knowledge and will get views that save you and your team meaningful amounts of time.

*10. Onboarding Is Everybody's Responsibility*

Your team is continuously creating tribal knowledge, be it how to start a service, or how code patterns are used across your codebase. There are two ways to deal with this: you can do nothing, and on a daily basis you'll increase the size of the knowledge gap for new employees, or you can actively work on converting siloed tribal knowledge into scalable documentation for current and future employees. For obvious reasons, I recommend the latter. is means everyone should always be asking themselves, How can I document what I've just created/learned/discovered? And when you have new employees who come across something that they can't find in your knowledge base, it's up to them to seek out an answer and document it.
