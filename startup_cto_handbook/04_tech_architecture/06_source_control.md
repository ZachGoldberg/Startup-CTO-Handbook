## Source Control

The industry standard used by the vast majority of companies for managing source control is Git. There would need to be a very compelling reason for your organization to use anything else; most of your current and future team members will arrive already knowing the basics of Git. By not using it, you'd likely be inflicting an unnecessary learning curve on them by forcing them to learn your chosen alternative.

There are three main cloud Git hosting platforms: GitLab, GitHub, and Bitbucket. These three have the lion's share of the market and, again, you should think carefully before deviating from these standards.

Git has an interestingly shaped learning curve. Most people reach a plateau where they operate with a rudimentary understanding that gets them by for most happy path testing scenarios. However, sometimes things go wrong, and a developer loses a commit or makes a mess with a merge. When this happens, their failure to climb the rest of the Git learning curve will cause frustration and slowdown. I encourage you, as the team lead, to invest the effort to climb the back half of the curve. Use Git exclusively on the command line to become familiar with what is actually happening. Learn about the reflog, interactive rebases, bisect, and the various built-in merge strategies. Armed with this knowledge, you can bypass an entire class of productivity-draining problems and train your team to become Git experts as well.


### Peer Review

In general, experts recommend implementing a robust peer review process for all code changes. (As I write this in early 2023, there is a growing movement challenging this recommendation, or at the least adding nuance to it, which I'll discuss in the next section.) Most peer review is done with what is called depending on your code hosting solution a pull request, code review, or merge request. Here are some suggestions for keeping code review productive and efficient:

* Keep reviews small! Set a maximum size for code reviews, something like ten files and 200 lines. Anything else should be broken out into multiple stacked/incremental reviews. (A stacked review is a code review that is based on or dependent on a prior review. When completed, the reviews are merged sequentially to add up to a complete change.)

* Establish the goals for code review upfront with your team and bake them into your culture. Code review is not for style or petty semantics; that's what your auto code formatter/linter and static analysis are for. Code review's purpose is to ensure clarity, identify architectural concerns, flag defects and deviations from patterns, note edge cases, and guarantee adherence to business rules.

* Require the author to make the reviewer's job easy. Authors should include a description of the change, a link to relevant requirements and tickets, and a video walkthrough (using a tool like loom.com) of the code and the code working as intended.

* Encourage the author of any given code review to do a self-review before asking others to review. A few well-placed comments from the author to guide readers can save a lot of time.

* Set aside dedicated review times/windows to minimize disruptions.


### Ship, Show, Ask

The common wisdom is that every code change should be reviewed by two people before being shipped to customers. As with everything, there are tradeoffs. Manual code review is not free, nor is it a guarantee of software quality. Given that manual code review comes at a cost, it's worth thinking about when that cost provides the highest return and using code review as a tool for the highest-ROI scenarios. is general idea was popularized by a 2021 blog post by Rouan Wilsenach titled Ship/Show/Ask (ctohb.com/ssa).

Let's examine the cost of code review. A code review requires two people call them the Author and the Reviewer to experience a number of context switches. A common asynchronous code pattern might be as follows:

**Context Switch #1:** Author stops coding on Project 1, sets up code review, and tags Reviewer. Author starts working on Project 2.

**Context Switch #2:** Reviewer gets a notification, stops their work on Project 3, and begins review of Project 1. Reviewer leaves feedback for Author, résumés work on Project 3.

**Context Switch #3:** Author is notified of feedback on Project 1, stops work on Project 2, and addresses comments from Reviewer. Then Author résumés work on Project 2.

**Context Switch #4:** Reviewer stops work on Project 3 and best-case scenario Reviewer is now satisfied with changes in Project 1 and approves the code review. Reviewer résumés work on Project 3. Worst case, Author and Reviewer must repeat Context Switches #3 and #4 several times.

**Context Switch #5:** Author is notified of approval, stops work on Project 2, merges Project 1, then résumés work on Project 2.

There are ways to minimize these context switches, but they too involve tradeoffs. A common alternative is to do all code reviews as a synchronous pair programming exercise; however, that strategy trades context switches for synchronous meeting time, which is still a drag on productivity. No matter how you slice it, human code review is expensive.

My suggested alternative is to classify types of work by their level of risk, and the expected benefit from code reviews. A sample classification system:

 Trivial changes no approval required

- Copy/translation updates
- Minor UI changes, ideally submitted with visual evidence of the change
- Test-only changes
- New code that is explicitly not yet used or is disabled behind a feature toggle
- Code that no customer or user is able to access (e.g., hidden pages)

 Minor changes minimal review or after-the-fact review

- Code changes that come with tests and involve augmentation of existing patterns and functionality
- Code that has limited or no real-world usage (e.g., an undeployed product)
- Refactors that can be proven are correct via reliable testing

 Major changes careful upfront review

- Anything involving new tools, frameworks, patterns, or architecture
- Significant new features
- Anything involving sensitive data or PII or with potential impact on security posture

Although I believe this system improves overall team efficiency, I concede that it's not an option for everyone. Many compliance regimes (such as PCI or SOC 2) require a policy of 100 percent human code review. The best you can do in that scenario is comply and perhaps carve out products or feature areas that are not governed by the compliance framework to experiment with a more nuanced and efficient process.

### Branching Models

There are many ways to deal with source control branching, though the industry as a whole is building momentum around the concept of trunk- based development. As this seems to be the most effective and commonly used pattern at this time, it's what we'll discuss here. If you're seriously considering a different pattern, you'll find plentiful resources online discussing methodologies and best practices for alternative approaches.

There are many blog posts with helpful graphics covering git branching models, such as this one from Reviewpad: ctohb.com/branching. If the following description doesn't make sense to you, I urge you to consult any of these posts and their associated visuals.

In a traditional branching model sometimes referred to as GitFlow there are two long-lived branches, a main and a develop branch. Work is done based on develop in feature branches and then is often forked to another release branch for any given release, and then finally back merged to main. Hotfixes are then done off of main while further development is done off of develop. is system involves no less than four branches for every change to get to production, and involves maintaining many branches simultaneously. For these reasons and others, GitFlow has largely fallen out of favor and is no longer considered best practice.

Trunk-based development, and its slightly more sophisticated cousin, GitHub Flow, are models of managing source code that aim to minimize the number and duration of branches. The exact implementation of GitHub Flow and trunk-based development will vary, but what they have in common is that there is a single branch whose name varies and doesn't matter much. Here we'll call it production. Production is always deployable. In fact, I recommend that you set up automation so every commit to production can actually be deployed to production. Work can then be done in feature branches off of production, reviewed in the feature branch, and merged when ready. That's it one long-lived branch and many short-lived (and ideally small) feature branches.

For this model to work well, you need a handful of prerequisites:

* Continuous Integration that runs a robust test suite to ensure that feature branches are safe to merge.

* A culture and an implementation of using feature toggles so branches can be merged quickly and then features deployed/enabled at a later date when it makes sense for the business.

* Robust monitoring of production to detect changes.

* The ability to rapidly deploy, with zero downtime, code changes to the production environment. Similarly, an ability to rapidly revert individual changes in response to an incident.

* A culture that is disciplined about small and short-lived feature branches. The GitHub Flow model loses its efficiency and simplicity if feature branches become large, long-lived and unwieldy. As discussed in the 3.3.5 Feature Branch Environments, small commits, small branches. and small pull requests are a key driver of productivity.

### Long-Lived Vs. Short-Lived Branches

The key to maintaining a smooth system of branches and merges with your team is to keep branches short-lived. Nearly all of the problems associated with code merging come from code branches being open too long or the branch containing too large a diff (ctohb.com/diffs). In general, a short-lived branch should be open just a few days, or two weeks at the absolute most.

Keep in mind that a feature doesn't necessarily have to be implemented in a single branch. For example, you can have an initial branch with just tests that is reviewed and merged, and then followed up by a branch with the implementation. Alternatively, you can build an implementation that isn't connected to the main application, have it reviewed and merged, then build the connection and tests in a subsequent branch.

With a bit of thought and practice most implementations can be broken down into independently mergeable pieces. This is a skill that with your guidance teams can develop over time.

Benefits of keeping branches short-lived:

* Limits the amount of time for new code from other branches to be merged into trunk, thus limiting the scope for code conflicts. Smaller branches also inherently have less surface area for conflicts.

* Keeps the feature branch code relatively small, thus making it easier for reviewers to read and limiting the scope for breakages.

* Encourages faster feedback in reviews, and allows for course corrections sooner in the process of implementing features.

* Encourages your team to have a reliable Continuous Integration system. Frequent merges will highlight deficiencies in your build/test environment, making it painful if the systems are unreliable and motivating improvements to those systems.
