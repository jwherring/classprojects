# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Role.create(
  [
    {role: 'administrator'},
    {role: 'student'}
  ]
)

User.create(
  [
    {
      first_name: 'Admin',
      last_name: 'User',
      email: 'mail1@mail.com',
      password: 'test'
    },
    {
      first_name: 'Student',
      last_name: 'User',
      email: 'mail2@mail.com',
      password: 'test'
    }
  ]
)

UserRole.create(
  [
    {
      user_id: 1,
      role_id: 1
    },
    {
      user_id: 1,
      role_id: 2
    },
    {
      user_id: 2,
      role_id: 2
    }
  ]
)

Course.create(
  [
    {
      title: 'Software Development on Evolving Platforms',
      section: 'CS 3216'
    },
    {
      title: 'Game Development',
      section: 'CS 4213'
    }
  ]
)

Project.create(
  [
    {title: 'JFDI Academy Made Simple', 
    abstract: 'JFDI Academy was originally developed for the CS1101S course to teach programming through gamification. Students are given programming goals to achieve, and they level up through these goals to be able to bigger and more fulfilling challenges. JFDI Academy was recently taken up by a geography teacher in a government secondary school and he has found it to be extremely effective in engaging troubled students, resulting in significant improvements to their grades. Unfortunately JFDI Academy in its current form requires significant hacking and customization to the source code, making it unsuitable for teachers with little technical background. The objective of this project is to produce a simplified JFDI Academy system that non-technically inclined teachers can customize and deploy to their students.',
    website: '',
    course_id: 1 
    },
    {
      title: 'Intraix iOS App',
      abstract: 'Our aim is to build a mobile application based on the energy monitoring & conservation project - “Intraix” on the iOS platform, specifically for the iPhone. The purpose of the Intraix Mobile Application (“The App”) is threefold, to Inform, Educate and Reward.  First, we seek to inform our users by providing them with information about their monthly energy usage, this will be achieved by tapping on the infrastructure Intraix has already built to support their website. Second, we want to educate the users by providing them with quick tips and resources about energy saving, curated by us and the Intraix team. Finally, we will reward users through a gamification system that is based on a challenge and achievement system.',
      website: '',
      course_id: 1
    },
    {
      title: 'Axis Toggle',
      abstract: 'Technology has changed the lives of billions. It has changed the way we track money, the way to do business and even the way we live our lives. There was a period, just a couple of decades ago where we wished we had more control over numerous aspects in life, and today, as technology advances, the gap between human and computer is shrinking and people are loving it.  In developing countries, the Internet and Mobile Internet penetration rates are rising, thus showing a huge opportunity in this area. Consumers in such areas are likely to adopt a higher standard of living and to enjoy more luxurious lifestyle, therefore, besides just satisfying their basic needs, it has to be done in the simplest, most convenient and with the best user experience ever.  There is a need in controlling the use of our daily electronic appliances. Consumers are paying for electricity that they did not use due to their carelessness, insensitivity to energy-consumptionor the inconvenience of turning off the switches one by one. Besides hurting their wallets, the environment is suffering as well.  The solution is a one-stop electrical appliance control and monitoring platform that is designed to fit its users’ lifestyles seamlessly. It consist of both hardware and software integration that encompasses a huge portion of the daily lives of millions of people living in both developing and developed cities.',
      website: '',
      course_id: 1
    },
    {
      title: 'Together we will make a better world',
      abstract: 'This app simplifies pick-up arrangements between friends through a simple iOS app. Drivers can put in pre-agreed pick-up points, and indicate the start of his journey. A push notification will be sent to the passenger when the driver departs, and when he is close to the pickup location. The passenger can likewise send a push notification to the driver when he (the passenger) is already waiting at the pickup point.',
      website: '',
      course_id: 1
    },
    {
      title: 'SplinkIt',
      abstract: 'Splinkit is a fast and easy way to create an event website. Splinkit helps event organizers create gorgeous event website with great user interface that is built to be social. Attendees register and share events with just a click of a button using their facebook profile.',
      website: '',
      course_id: 1
    },
    {
      title: 'CrossView',
      abstract: 'Cross-view is a mobile app that allows users from different countries or cities to form a pair or group within which they converse with each other via a stream of photos. The photos can contain their daily life, city scenery, big moments etc. The purpose of this app is to open a window in front of the user to another context where people have a different daily life and living environment.',
      website: '',
      course_id: 1
    },
    {
      title: 'Hush',
      abstract: 'Anonymity is a vital underpinning of the right to free speech. It is a trivially known fact that humans are often silenced by the ramifications of harboring an unpopular opinion be they due to the reactions of governance bodies, or of a more informal nature from friends, family and the like. Even worse is the anticipatory self-censorship that we often engage in, in light of even the possibility of said ramifications. Therefore, there’s a necessity for an anonymous platform to discuss numerous topics. Or for that matter, even to air certain opinions about a number of topics. We have named our app “Hush” and the name itself is self-explanatory. It provides a platform for you to discuss any topic with the assurance that no one is going to silence you or pose a danger to you for doing so. With “Hush” we hope to revolutionise online sharing. No barriers. No restrains. Anonymous.',
      website: '',
      course_id: 1
    },
    {
      title: 'Project Genius',
      abstract: 'This application is a mixed-reality iPad game that aims to help children aged between 3 and 6 to recognize common every-day objects. The game gets the child to find 5 common objects each day and take a photo of the object, and a gamification component awards points and various rewards to a child who fulfills these goals each day.',
      website: '',
      course_id: 1
    },
    {
      title: 'Edu-tech-gamification ',
      abstract: "We would like to create an app (like a visual dashboard) for updating parents on what their preschooling child is up to during the day - meals, work, etc. all in picture and/or text format. Parents can log into the system on the web or iPad to keep up to date with their child's progress, see teacher comments if any and reply to those comments. There is an interface for teachers to easily update the status and progress of each child. Admins have an interface for account management (teachers and students) as well as class management.",
      website: '',
      course_id: 1
    },
    {
      title: 'Quick Eat',
      abstract: "Many of us queue for food everyday because of our similar lunch times, whether at school or at work. From noon to two daily, students and teaching staff spend at least 10-15 mins queueing for food. With our application, we aim to employ existing technologies to alleviate this problem. With Quick Eat, simply order and pay for your food via the mobile app, instead of physically queueing for your food, just wait at your table comfortably and when your order is ready, you will be notified via your mobile to collect your meal. It's that easy!",
      website: '',
      course_id: 2
    },
    {
      title: 'Phatima',
      abstract: "Forgetfulness stems from the hectic lifestyle most people adopt in society nowadays. Often than not, drivers face common issues such as getting fined due to forgetting to renew the parking coupon.Our application aims to provide drivers with reminders to their parking woes, some features include parking coupon reminders and easy access to coupon prices at the current parking lot. It can also be used to store the parking location, especially in areas with huge car parks.",
      website: '',
      course_id: 2
    },
    {
      title: 'Bedridden Boredom',
      abstract: "“Science shows that you can die from boredom, literally”. - And what can be more boring than being bedridden in a hospital? Our team plans to tackle this problem with our easily accessible tablet-based application designed for the elderly. We will be focusing on 3 main categories. Our first category is Games, which are responsible for keeping their minds active and alert. Next is Current Affairs, to help the user remain up-to-date with the latest news and issues. Finally, we will allow them to easily connect and communicate with their loved ones via our specialized chat application.",
      website: '',
      course_id: 2
    },
    {
      title: 'Hawt Mug',
      abstract: "Hot beverages always turn cold when you leave it for some time. And these hot beverages usually taste the best when they are hot. If you want to enjoy your favorite cup of hot beverages in your tea time slowly, it is impossible to keep it hot over time. That is why Hawt Mug is made. It helps to maintain the optimal temperature of the beverages and guarantees the satisfaction at every sip you take.",
      website: '',
      course_id: 2
    },
    {
      title: 'HeadSync',
      abstract: "Meetings are spontaneous. We can only plan the agenda, but the actual discussions are often unpredictable. Every time an unfamiliar topic arises, participants have to dig out relevant information to aid their understanding; it's disruptive! We can continue with the traditional way of doing meetings and spend more time on them. But we don't see why we should. HeadSync listens to and analyses the discussion during a meeting. It then retrieves and organises relevant information on the screen for the participants to further their meetings. HeadSync attempts to streamline traditional online meetings and transform its participants to become more efficacious.",
      website: '',
      course_id: 2
    },
    {
      title: 'Tour Itinery Planner',
      abstract: "Nowadays, people often like to travel overseas during holiday and festive seasons. However, due to insufficient information gathered from their part, they had to travel down to the tour agencies for more information and ticket booking. This results in more monetary costs from the tourists’ point of view due to the extra money paid for the middlemen services. The users may also feel frustrated if they do research by themselves instead of relying on the agencies, since information from the Internet is scattered. With our implemented idea, the application can help to save the users’ time and money as most of the information regarding the designated tour area is centralised in it, thus enhancing convenience and usability.",
      website: '',
      course_id: 2
    },
    {
      title: 'STAGED',
      abstract: "Choreography is usually an elaborate affair which is exploratory in nature. During the process of instructing dancers to move to various formations with respect to stage coordinates, a given area or landmark, the choreographer often find difficulties mapping artistic expectations into reality. This problem is more evident for items that have large numbers of dancers. Hence our application is designed to assist choreographers not only in visualizing artistic effects but also help in keeping track and managing dancers' positions. The aim of the app is to ultimately optimize efficiency of dance choreography.",
      website: '',
      course_id: 2
    },
    {
      title: 'FitnessRight',
      abstract: "Sometimes, gym users aren't using the equipments correctly, potentially causing long-term injuries as a result. Furthermore, instructors are only able to focus on a small group of individuals at once. This is where FitnessRight comes into play. It is state-of-the-art system that is mounted on each equipment, providing users synchronous feedback such as their sitting posture, fine-tuning the appropriate amount of weights before/during the workout and even suggests variations of exercise on the same equipment for maximum output. With this system in place, everyone can exercise without worries of sustaining injuries with maximum output.",
      website: '',
      course_id: 2
    }
  ]
)
