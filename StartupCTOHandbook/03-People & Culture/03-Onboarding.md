## Onboarding

Onboarding new engineers to the team, in most cases, doesn't strictly require a large investment from the team; a good engineer will figure it out eventually. That said, doing nothing will lead to a poor experience for your newest hire. It will slow down their time to productivity, and it may also make it harder to identify how well you've hired. Stated another way, good onboarding optimizes for three goals:

1. **It respects the employee:** A good onboarding experience helps a new hire to feel integrated into your company and culture and become productive as quickly as possible.
1. **It helps evaluate the quality of the hire:** Good onboarding provides structure for both the new employee and their manager, including clear goals that, when achieved, demonstrate that you've hired well for the role.
1. **It builds your culture:** Good onboarding emphasizes a culture of continuous improvement, helping to streamline the process for future hires and enhance the scalability of your overall processes.

 There are many right ways to do this. What follows are some relatively simple and inexpensive techniques and practices that I've used myself. Feel free to expand on or deviate from these ideas.




### Boy Scout Rule: Onboarding

I encourage you to emphasize to your managers, your new employees, and in your onboarding documentation that successful onboarding is the shared responsibility of all members of your team(s), recent hires included. Depending on how often you are hiring, onboarding documentation has a tendency to get stale. If a new employee encounters something that is unclear, incorrect, or missing entirely from their materials, make it clear to them that you expect them to put in the effort to clarify and improve the documentation for the next person.

#### Onboarding to the Team vs. the Company

There are elements of onboarding any engineer new to your company that should be consistent across all hires. is includes the high-level process, the emphasis on organizational culture, the types of documentation that new hires receive, and the structure of sharing documentation and setting onboarding milestones. You wouldn't want your frontend teams to have a rockstar-smooth onboarding process but your backend teams to be clueless. First impressions count, and onboarding is your opportunity to ensure that all team members get a great first experience of your organization and are introduced in a consistent way to your company's values and your team's best practices.

That's not to say that the nuts and bolts of onboarding will be identical across teams. You can and should have different materials for different teams when it makes sense, and every team and individual hire should have a customized onboarding plan and milestones.

#### Onboarding Documentation

There are two key elements of getting a new engineer onboarded: teaching them about your culture and best practices, and also giving them something to do by way of structure and instructions. I prefer to break these out into two written artifacts: The Engineering Guidebook and the Welcome to [Your Company Name] Engineering, Day 1 Guide.

##### THE ENGINEERING GUIDEBOOK

The Engineering Guidebook gathers in a single document all of the opinions, best practices, structural elements, and business operations of your engineering team. It should be the single source any engineer can rely on to learn about choices and decisions that are expected to be consistent across the engineering organization. Be deliberate and thoughtful about exactly what practices should remain uniform across the organization.

The larger your team becomes, the more it will make sense for pieces of the team to develop their own specialized way of getting work done. That said, for most small/medium startups of, say, less than seventy-five to one hundred developers, there is a ton of value and efficiency to be unlocked by adhering to a healthy and consistent set of best practices.

The guidebook can take many forms, though my preference is as a slide deck/presentation. Some examples of practices your guidebook should outline:

Software Engineering

- Choice of programming languages
- Opinions/requirements around CI/CD
- Standards for naming (casing in code, casing in contracts)
- Standards for data processing, protection, backup, security
- Opinions on how to use source control (Git Flow, GitHub Flow)
- Opinions on testing (kinds, tools, how much to do)
- Standard patterns for frontend and backend authentication and authorization
- Wire protocol standards (REST, gRPC, GraphQL, etc.)
- Universal requirements (Do we support mobile, responsive, translation?)
- Certification frameworks and related training (e.g., PCI, SOC2, GDPR)
- Other coding logistics: accessing private repos, linting, static code analysis, commit message format/style.

 Engineering Process

- Opinions on cadence/ceremonies (Agile, Kanban, retrospectives)
- Opinions on technical documentation/specification requirements
- Opinions on how to use the ticketing system (What's an epic? Do we use story points?)
- Any metrics the team as a whole cares about (Are you measuring cycle time?)
- How are production incidents handled (PagerDuty? RCA documents?)
- How new technology gets incorporated into the stack
- Process around bugs, tech debt.

 People Management

- Expectations for how performance reviews are conducted, how individuals are evaluated/promoted
- Expectations for contribution to onboarding/hiring processes.

The guidebook should be clearly labeled as a living document, with a well-defined process in place for proposing, getting feedback on, and incorporating changes to the guidebook. For example, I've used a Request for Comments (RFC) process for updates.

##### WELCOME TO [YOUR COMPANY NAME] ENGINEERING, DAY 1 GUIDE

Distributing a Day 1 Guide is your opportunity to provide some structure for new employees, giving them a concrete list of things to do on their first day with your organization that will introduce them to the company culture, their teammates, your process, and your software stack. The Day 1 Guide should, of course, reference The Engineering Guidebook as required Day 1 reading. In addition, your Day 1 guide should cover the following:

Instructions on how to get logins/access to required systems, including:

- Source control
- Ticket management
- Any dev/stage/prod logging
- Error tracking
- Any design tools (Figma, Sketch)
- Documentation/wiki (Confluence, Notion, etc.)
- Internal communications (Slack, email)
- Information about company hardware (including whether new hires get to choose a laptop/phone), and expectations for using that hardware
- Instructions on how to set up a local development environment
- An introduction to the team and company organization chart: who their manager is, relevant cross-functional leaders, direct reports, and relevant VPs or executives
- Expectations around transparency and reaching out across the organization chart for help or escalation of concerns
- An introduction to the technical architecture
- Relevant books, blogs, and other written resources you encourage all team members to read

#### Onboarding Milestones aka The Ninety-Day Scorecard

As discussed in the hiring chapter, hiring is very hard. Even the most thoughtful hiring processes will not achieve a 100 percent success rate. Said another way, mis-hires are inevitable.

The best way to handle the potential for unsuccessful hires is first to have the humility to acknowledge that your hiring process isn't perfect, and then to be thoughtful about how to measure the success of the new employees and take swift action to correct any mistakes. The process should be transparent upfront to new employees, clearly explaining expectations. Managers should work with new employees to make sure their role is a mutual fit, that the new employee is starting to feel at home in the role, and that they are delivering at a level commensurate with what they were hired for. At sixty or ninety days, it should be clear to both the new employee and the manager whether those expectations are being met.

If there is disagreement on whether the employee is being successful, that's a good sign that it's not working out, and you should consider relatively quickly whether there is another spot on the team where the new employee might be a better fit, or if both sides might be better off parting ways.

##### THE SCORECARD

It is the responsibility of the manager of the new employee to identify and document measurable milestones for any new role *before* the new employee starts. On Day 1 the manager should walk through the milestones with the new employee, collect feedback, and collaborate on those milestones to ensure they are fair and clearly measurable. For some roles, these milestones may be easy and clear, such as in a support role measuring escalation tickets with ticket throughput. For other roles you may need to get more creative, for example, features delivered or story points closed. Regardless of the milestones you choose, the scorecard should do the following:

* Establish clear and transparent expectations between the manager and the new employee.
* Provide guidance for the new employee on what they will do and how they'll be measured in their first ninety days.
* Provide obvious criteria for meeting or not meeting the expectations of their role.

The scorecard doesn't have to be lengthy or highly nuanced. The key thing is that, whatever form it takes, after ninety days the employee and manager can look at the scorecard and agree on how the employee has performed and have a shared feeling of confidence on whether this is going to be a good long-term fit.

A quick word on the ninety-day length: ninety days is a commonly used timeframe for onboarding new employees, but it is not a hard rule. A thirty-day interval is generally too short in engineering, where there is a significant learning curve to mastering your technology, tools, and product. On the contrary, waiting a full performance cycle e.g., six or twelve months leaves a potentially poor fit in the role for too long, preventing them from getting the remediation they need to achieve productivity, and costing the company lost time and productivity. The right answer is likely in between, and the exact amount of time is up to you and your managers.

##### HANDLING A SCORECARD FAILURE

If, after ninety days, the manager and the employee agree things are not meeting expectations, or there isn't agreement on whether expectations are being met, something has to change. is doesn't mean you have to fire the new employee, but it does mean you have to do something. Consider the following options in this scenario:

* Is the problem the manager? Would this person be more successful on another team or with a different manager?

  * If you suspect this is the case, consider a lateral move before moving to termination.
* Is there a cultural misalignment?
  * Realigning an employee to your culture after a misalignment is identified is challenging and rarely successful. If you're concerned you may be in this scenario at ninety days, almost certainly the right option is to part ways, and more likely than not the candidate will be just as relieved as the manager.

* Is it a lack of experience or skill?
  * If you hired someone at a senior level but they're performing at mid-level, you have the option of attempting to down-level them. After all, it's unfair to other employees to keep this person on and pay them as a senior-level performer if they're not delivering at that level. Be warned, however, that down-leveling is very challenging. Unless expectations are very carefully managed, down-leveling will often result in bruised ego and ultimately prove unproductive or even toxic to your team.

##### LETTING A NEW EMPLOYEE GO

In general, if it's not clear after ninety days that a hire is going to work out, it likely won't magically become better after 120 or 150 days, and it's best to let them go. You should terminate this employee the same as any other, with a full severance package and as much kindness as possible.

I encourage you to take full ownership of the mis-hire. If you hired them, take responsibility; it means your hiring process isn't perfect. Don't penalize the employee for it. An industry-standard severance package at a startup is four weeks salary, benefits if you can extend them, and assistance finding another job in any way you're comfortable offering.

#### Onboarding Timeline

Onboarding begins the second somebody agrees to work at your company and signs their offer letter. You should be thinking about how to make your new employee successful even before their first day. Not every new employee will be eager to spend their own time learning about the company or their role in advance of their start date, but depending on the task or what's offered, many will volunteer to do so.

I encourage you to send candidates your Day 1 Guide as well as your guidebook the day they sign their offer letter. If you have a company reading list, now is a good time to order those books and have them either shipped to the candidate or offer them in eBook/audiobook format. Most candidates are not at all interested in reading/writing code before Day 1, but learning about your culture or reading high-caliber books on business/culture/ engineering is rarely perceived as a burden. You shouldn't require this activity, but by making it available you'll likely get fairly healthy volunteer participation.

On their actual start date, the candidate should meet with their new manager first thing in the morning and check in. If they haven't read through the materials you sent them in advance of their arrival, set the expectation that they are to do so on Day 1. They should schedule follow-up time to review the ninety-day scorecard after the candidate has had a chance to review the introductory materials and set up their environment/logins. This is also a good time to reinforce the idea of continuous improvement and encourage the candidate to take ownership of any hiccups in their onboarding and contribute to improving the documentation and process for whoever follows them next onto the team.
