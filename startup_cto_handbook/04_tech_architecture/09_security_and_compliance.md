## Security and Compliance

In this section, I will provide a brief overview of the subject of security and compliance for startups. You can and should put in the effort to find in-depth resources beyond this book on these topics.

### Auth Security Terminology

Especially with security, it's important to be precise and exact with language. Some definitions of commonly misused terms:

**Authentication, or AuthN**: Validating that a user or client is who they say they are. Your login system performs user authentication.

**Authorization, or AuthZ**: Validating that a user or client has permission to do what they're trying to do. Your role-based access control (RBAC) or permission system does authorization.

**2FA or MFA**: Two-factor authentication and multi-factor authentication is the process of authenticating with a service using more than one type of credential. This is typically done with a password (first factor) and some kind of proof-of-ownership, e.g., an emailed one-time password (proving you own the email), SMS (proving you own a phone number), or timed one-time-password (TOPT) (proving you own a device/ passkey). Note that due to the prevalence of SIM Porting attacks, where an attacker has the ability to intercept or reroute SMS, using SMS as a second factor is generally discouraged.


### Security At Startups

Startups are often defined by the extent to which they are resource-constrained. As a result, security posture and compliance are often the first things deprioritized on the to-do list, as they are less likely to represent an existential threat to the business than other pressing concerns. If you have no users or revenue, what is there for a hacker to steal?

Taking security into account can also become a drag on productivity or an expensive task, especially if your mission is to secure a system that already exists. But if you're starting from day one, you have the opportunity to make good decisions at the start that create a strong security posture with minimal additional cost.

Some ways to incorporate security at your startup that won't cost you much:

* Establish security as a priority in the mindset of your team in your onboarding and training materials.

* Enroll all engineers in onboarding and recurring basic security training things like the OWASP Top Ten or various gamified security training that take a few minutes a month to keep security top of mind.

* Rely on proven and well-maintained tools for anything related to authentication or authorization.

* Don't waste time building a login page yourself; in 2023 There's really no reason to. Tools like Auth0, SuperTokens, and AWS Cognito provide secure user signup, login, social login, forgotten password management, email authentication, two-factor authentication, and session management. Some of these tools also offer robust authorization systems. Dealing with auth is a substantial project; it's very complex and mistakes are expensive. There's no reason your startup needs to solve that problem.

* Don't be lazy about IT security. Regardless of whether you're using Dropbox, Box, Google Drive, SharePoint, etc., take a few minutes and set policies to help avoid human error, such as default sharing permissions to being internal only. Set up regular data-sharing reports and appoint an employee to do a quarterly audit of permissions settings on any particularly sensitive documents or spreadsheets.

* Use an enterprise password management solution, such as 1Password, and ensure all employees are using robust passwords for important tools. Similarly, use Single Sign-On (SSO) as often as possible and ensure your SSO provider is configured with high security (at least requiring Multi-Factor Authentication).

* Don't commit secrets in your codebase. Leverage a secure secret manager such as Google Cloud Secret Manager or AWS Secret Manager, and commit the name/location of a secret in code and resolve that name to a value in production, either at bootup time using a tool like Berglas or Whisper, or at runtime directly with the secret manager APIs.

### Compliance

Whether it's due to the industry you are in, the size of your business, or the nature of your customers, most startups need to comply with at least one formal compliance framework. If your users are in Europe, then you need to comply with GDPR. If you're taking in user data, it's wise to understand the CCPA. If you're working with enterprise clients, you'll be asked for your SOC 2 or ISO 27001 certification. In healthcare, you've got HIPAA, and if you're in payments, you've likely heard of PCI DSS.

For a startup, staying in compliance with any or all of these frameworks can be unacceptably expensive. Here are some tips for staying compliant and anticipating the cost:

* Don't try to get a compliance certificate at the last minute. Preparing for and conducting an audit such as for PCI DSS or SOC 2 from start to finish is a lengthy process, ranging from six to twelve months for most startups. Starting early and maintaining compliance is cheaper than starting late and doing rework.

* Use as much automation to enforce or provide evidence of compliance as possible. There is a thriving sector of SaaS companies who specialize in automating these compliance frameworks; companies like Vanta, Tugboat Logic, Secureframe, Laika, and Drata all have offerings that will reduce your time-to-certification and total cost significantly.

* If you're lucky enough to have a formal compliance person or department, lean into that relationship. The more proactive you can be in sharing plans with a compliance department, and the earlier you incorporate their feedback, the less costly and frustrating staying compliant will be.



Or perhaps one might look at it from the CEO's viewpoint: how quickly can the team the CTO leads deliver on certain business objectives?

Or, given how important people leadership is to excelling in this role, we could view it through a humanistic lens: is your team doing their best work? After all, a great CTO's mission is to build an organizational culture that allows individual engineers to do their best work and achieve the impossible with technology.

Or, rather than trying to define a single objective, maybe the best definition of CTO greatness is a sum of all the skills that a CTO might exercise on a daily basis. Perhaps great is when you take the sum of architecture, performance management, vendor management, executive leadership, cultural contributions, public evangelism, mentorship, and DevOps, put it through a formula, and you end up with a number bigger than 42.

Try as we might, it seems that great leadership even great *technical* leadership isn't something we can precisely quantify or measure. Smart minds will struggle to agree on a common description of greatness, but we will all agree that the role is diverse and ever-changing, requiring constant learning and adaptation.

There are few universal truths in engineering leadership, but one of them is that becoming a good engineering leader is a never-ending journey of self-improvement, discovery, and growth. Proceeding down this path requires humility, willingness to make mistakes, and, above all, curiosity and a desire to learn.

I hope this handbook has been a helpful reference guide for you with the challenges you face on your leadership journey. The handbook covers many of the challenges that I myself have faced over the years as well as those of the many wonderful leaders I've had the pleasure of interacting with.

I've done my best to provide some structure on meeting those challenges, though every situation is unique, and ultimately the path you take is yours to devise and the results are yours to own.

At some point in life, one gets asked: What advice would you give to the younger version of yourself? is handbook is my answer to that question.

I hope it helps you in your journey to build powerful technology, motivated and empowered teams, and successful businesses, and, most of all, have fun and do some good for the world.









