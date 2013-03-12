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
    },
    {
      first_name: 'StudentUser',
      last_name: '1',
      email: 'mail3@mail.com',
      password: 'test'
    },
    {
      first_name: 'StudentUser',
      last_name: '2',
      email: 'mail4@mail.com',
      password: 'test'
    },
    {
      first_name: 'StudentUser',
      last_name: '3',
      email: 'mail5@mail.com',
      password: 'test'
    },
    {
      first_name: 'StudentUser',
      last_name: '4',
      email: 'mail6@mail.com',
      password: 'test'
    },
    {
      first_name: 'StudentUser',
      last_name: '5',
      email: 'mail7@mail.com',
      password: 'test'
    },
    {
      first_name: 'StudentUser',
      last_name: '6',
      email: 'mail8@mail.com',
      password: 'test'
    },
    {
      first_name: 'StudentUser',
      last_name: '7',
      email: 'mail9@mail.com',
      password: 'test'
    },
    {
      first_name: 'StudentUser',
      last_name: '8',
      email: 'mail10@mail.com',
      password: 'test'
    },
    {
      first_name: 'StudentUser',
      last_name: '9',
      email: 'mail11@mail.com',
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
    },
    {
      user_id: 3,
      role_id: 2
    },
    {
      user_id: 4,
      role_id: 2
    },
    {
      user_id: 5,
      role_id: 2
    },
    {
      user_id: 6,
      role_id: 2
    },
    {
      user_id: 7,
      role_id: 2
    },
    {
      user_id: 8,
      role_id: 2
    },
    {
      user_id: 9,
      role_id: 2
    },
    {
      user_id: 10,
      role_id: 2
    },
    {
      user_id: 11,
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
    },
    {
      title: 'Theories and Phenomena of Human-Computer Interaction',
      section: 'CS 4249'
    }
  ]
)

Project.create(
  [
    {title: 'JFDI Academy Made Simple', 
    abstract: 'JFDI Academy was originally developed for the CS1101S course to teach programming through gamification. Students are given programming goals to achieve, and they level up through these goals to be able to bigger and more fulfilling challenges. JFDI Academy was recently taken up by a geography teacher in a government secondary school and he has found it to be extremely effective in engaging troubled students, resulting in significant improvements to their grades. Unfortunately JFDI Academy in its current form requires significant hacking and customization to the source code, making it unsuitable for teachers with little technical background. The objective of this project is to produce a simplified JFDI Academy system that non-technically inclined teachers can customize and deploy to their students.',
    course_id: 1 
    },
    {
      title: 'Intraix iOS App',
      abstract: 'Our aim is to build a mobile application based on the energy monitoring & conservation project - “Intraix” on the iOS platform, specifically for the iPhone. The purpose of the Intraix Mobile Application (“The App”) is threefold, to Inform, Educate and Reward.  First, we seek to inform our users by providing them with information about their monthly energy usage, this will be achieved by tapping on the infrastructure Intraix has already built to support their website. Second, we want to educate the users by providing them with quick tips and resources about energy saving, curated by us and the Intraix team. Finally, we will reward users through a gamification system that is based on a challenge and achievement system.',
      course_id: 1
    },
    {
      title: 'Axis Toggle',
      abstract: 'Technology has changed the lives of billions. It has changed the way we track money, the way to do business and even the way we live our lives. There was a period, just a couple of decades ago where we wished we had more control over numerous aspects in life, and today, as technology advances, the gap between human and computer is shrinking and people are loving it.  In developing countries, the Internet and Mobile Internet penetration rates are rising, thus showing a huge opportunity in this area. Consumers in such areas are likely to adopt a higher standard of living and to enjoy more luxurious lifestyle, therefore, besides just satisfying their basic needs, it has to be done in the simplest, most convenient and with the best user experience ever.  There is a need in controlling the use of our daily electronic appliances. Consumers are paying for electricity that they did not use due to their carelessness, insensitivity to energy-consumptionor the inconvenience of turning off the switches one by one. Besides hurting their wallets, the environment is suffering as well.  The solution is a one-stop electrical appliance control and monitoring platform that is designed to fit its users’ lifestyles seamlessly. It consist of both hardware and software integration that encompasses a huge portion of the daily lives of millions of people living in both developing and developed cities.',
      course_id: 1
    },
    {
      title: 'Together we will make a better world',
      abstract: 'This app simplifies pick-up arrangements between friends through a simple iOS app. Drivers can put in pre-agreed pick-up points, and indicate the start of his journey. A push notification will be sent to the passenger when the driver departs, and when he is close to the pickup location. The passenger can likewise send a push notification to the driver when he (the passenger) is already waiting at the pickup point.',
      course_id: 1
    },
    {
      title: 'SplinkIt',
      abstract: 'Splinkit is a fast and easy way to create an event website. Splinkit helps event organizers create gorgeous event website with great user interface that is built to be social. Attendees register and share events with just a click of a button using their facebook profile.',
      course_id: 1
    },
    {
      title: 'CrossView',
      abstract: 'Cross-view is a mobile app that allows users from different countries or cities to form a pair or group within which they converse with each other via a stream of photos. The photos can contain their daily life, city scenery, big moments etc. The purpose of this app is to open a window in front of the user to another context where people have a different daily life and living environment.',
      course_id: 1
    },
    {
      title: 'Hush',
      abstract: 'Anonymity is a vital underpinning of the right to free speech. It is a trivially known fact that humans are often silenced by the ramifications of harboring an unpopular opinion be they due to the reactions of governance bodies, or of a more informal nature from friends, family and the like. Even worse is the anticipatory self-censorship that we often engage in, in light of even the possibility of said ramifications. Therefore, there’s a necessity for an anonymous platform to discuss numerous topics. Or for that matter, even to air certain opinions about a number of topics. We have named our app “Hush” and the name itself is self-explanatory. It provides a platform for you to discuss any topic with the assurance that no one is going to silence you or pose a danger to you for doing so. With “Hush” we hope to revolutionise online sharing. No barriers. No restrains. Anonymous.',
      course_id: 1
    },
    {
      title: 'Project Genius',
      abstract: 'This application is a mixed-reality iPad game that aims to help children aged between 3 and 6 to recognize common every-day objects. The game gets the child to find 5 common objects each day and take a photo of the object, and a gamification component awards points and various rewards to a child who fulfills these goals each day.',
      course_id: 1
    },
    {
      title: 'Edu-tech-gamification ',
      abstract: "We would like to create an app (like a visual dashboard) for updating parents on what their preschooling child is up to during the day - meals, work, etc. all in picture and/or text format. Parents can log into the system on the web or iPad to keep up to date with their child's progress, see teacher comments if any and reply to those comments. There is an interface for teachers to easily update the status and progress of each child. Admins have an interface for account management (teachers and students) as well as class management.",
      course_id: 1
    },
    {
      title: "Peripheral Chaos",
      abstract: " Peripheral Chaos is a first-person shooter game, set in a futuristic sci-fi world. The main playable character is Jacob, a human who wakes up from a nap and finds himself on an island infested by malicious robots (AI). In familiar reality, he realizes his fears are coming back to haunt him. He is then faced with bigger challenges and have to do the impossible to survive and make sense of what is happening in his world of lucid dreaming.",
      course_id: 2
    },
    {
      title: "Blue Cheese",
      abstract: " The game revolves around the concept of a cat catch mouse game, whereby the goal of the cat is to hunt the mouse down and eliminate him, and the goal of the mouse to find the blue cheese before this happens. They will both spawn in a maze. Both the cat and the mouse will be given weapons to fire on each other. The mouse will need to collect resources to turn into ammunition to use his gun to stun the cat while the cat will need to collect resources to build traps to trap the mouse and eliminate him.",
      course_id: 2
    },
    {
      title: "The Last Stand",
      abstract: " This game has been designed for students who want to escape from all the tension in school! With assignments, mid term papers, final paper and projects piling, this game is created with the intention for students to ‘vent’ in a virtual environment. Imagine that you are trapped in school and you have to fight your way out. Destroy all assignments that comes your way and hopefully you will have a chance for survival!",
      course_id: 2
    },
    {
      title: "Max Out!",
      abstract: "Max is out, fighting to save the world. Help him fend off enemies or else he will be the one who’s out. Complete all levels and Max will be out-of-this-world AMAZING!  This game is a tower defence game, which combines puzzles and actions to provide the players a unique gaming experience. In each level, the  monsters will charge towards the player. To kill them, the player has to  solve the puzzles present on each monster, which comes in various forms such as math equations, before the monsters reach the player.",
      course_id: 2
    },
    {
      title: "ZeroG",
      abstract: "ZeroG is a racing game set in space, where players race around tracks in a controlled zero gravity environment. The player takes the role of a racer who has signed up for an intergalactic racing tournament. Players are able to take part in races, and as a player completes races, more races will be unlocked. Winning races earns a player experience points, which levels the player up and improves his/her stats.",
      course_id: 2
     },
    {
      title: "MIRROR",
      abstract: " A Horror third-person-camera puzzle and escape game. Legend has it that seeing one's doppleganger is an omen of death, more so that a newborn baby should never be allowed near a mirror at the time of birth, as the soul is in its most vulnerable state. The boy in our story was born near a mirror, and birth-marked by the mirror world's demon taking his reflection's form as a doppleganger image. Years later the boy grew up and was dragged one night into a mirror by a supernatural force. He wakes up to find himself in a mirror world, and that the demon is already coming for him. The boy now tries to unlock doors, puzzles and escape the ghastly inhabitants of the mirror world, ironically by using the mirrors he finds.",
      course_id: 2
    },
    {
      title: "Bear Run",
      abstract: " Bear Run is an exciting and thrilling action-packed runner-chaser game with the two bears starting off at different locations. As the Brown bear searches the village for resources and collects them, the Black bear tries to catch the Brown bear. The Brown bear will have to exercise caution while gathering resources and at the same time, look out for the Black Bear. Players get to choose to play as the Brown bear, the runner, or the Black bear, the catcher, to experience the different thrills of chasing and being chased. So what are you waiting for? Let’s get Bear running!",
      course_id: 2
    },
    {
      title: "TheElite6",
      abstract: " TheElite6 is an Action-Strategy Shoot-em up game, where you take control of a small squad from a top-down view to fulfill objectives in the game. The challenge in the game is to effectively use the position and the classes of the squad to the player’s advantage and employ stealth or otherwise confrontational strategies to engage the enemies while ensuring minimal casualties.",
      course_id: 2
    },
    {
      title: "TroubleShooter",
      abstract: " Background story. Set in our world where computers have already infiltrated our daily lives. Dr.Error, living in his mad scientist lab, created the ultimate computer virus which would be spread in order to take control of all the computers to rule the world! Main Character. You - the most elite programmer in the world - has been tasked with outwitting Dr.Error in order to restore peace and balance.The destiny of the world hangs in the balance as battles are being fought in the cyber world in order to protect the world from danger.",
      course_id: 2
    },
    {
      title: "Shooting Star",
      abstract: " A simple hemispherical stage where the player dodges massive amount of projectiles from the enemy while simultaneously returns fire. The game was inspired by the popular 2D bullet-hell shooting game known as Touhou, and our team decided to convert its aesthetic elements such as beautiful projectile patterns that will mesmerise players to 3D. Our game utilises several rendering optimization and one of the best sorting algorithm for alpha depth sorting which allows 1,800 particles running at smooth frame rate. The particle system has been completely built from scratch and we hope to display the flexibility of our particle emitting system.",
      course_id: 2
    },
    {
      title: "CHARRRRRRGEE!!",
      abstract: " The game focuses on the concept of medieval jousting, where knights square off in competitions of valor to determine who reigns as the best knight in the land. The player(s) in our game will be able to experience the challenge of taking part in a medieval joust, balancing on their steed while trying to take the opponent knight off theirs, will they be able to keep a steady hand while staring down the path and seeing an enemy's lance heading straight for you! High intensity, high impact, only the sharpest will prevail! Outlast, OUT-JOUST!",
      course_id: 2
    },
    {
      title: "2012 - After Story",
      abstract: " In this game, our hero/heroine have survived a disaster occurred at 2012 12.21, but lost his/her consciousness. In his/her “dream” there is a voice telling him/her that he/she is still alive after the great disaster. This voice will continue to ask him/her several questions, which will decide our main character’s starting ability and status. Then the voice tell him/her it’s time to wake up, then the main character is back to life. He/She can see that the world has become a ruin. With very little hope, he/she decides to rebuild a village. When exploring the map, the character may save other survivors and bring them back to construct the village together. But during the great disaster, various of monsters are brought to earth. So the road to reconstruct may not be so easy.",
      course_id: 2
    },
    {
      title: "Project Mirai",
      abstract: " The heroine, Mirai, and 3 of her friends are trapped in the castle of the demon lord, Mephistopheles, located in an unknown dimension. Mirai and her friends need to discover the secrets of the demon lord and defeat him in order to escape from the dimension. The player will play as Mirai to explore the castle, solve puzzles, gather important items, help her friends and eventually, free themselves from the control of the demon lord.",
      course_id: 2
    },
    {
      title: "School’s Out!",
      abstract: " Homework! Homework and more homework! George and his schoolmates are trapped in a school of relentless teachers giving never ending homework. He has had enough and plans to sneak out of school before he is piled to death by the ever growing tower of homework.",
      course_id: 2
    },
    {
      title: "Mutant Island",
      abstract: " The game is about a genetically-engineered, super-human agent on his mission to retrieve genetic engineering research data from an abandoned lab in an island. The abandoned research lab is full of mutated monsters as a result of the accident that happens years ago, leading to the closing of the facility. Agent has to fight through these mutated monsters to complete his mission.",
      course_id: 2
    },
    {
      title: "Chromium",
      abstract: " The main themes of our game are time travel, puzzle solving, and a non-linear plot with multiple endings. Players playing our game will find themselves exploring a large abandoned research facility, travelling back and forth in time using a time travel device, piecing clues together in an attempt to find out what happened to the game character that they control in the game.",
      course_id: 2
    },
    {
      title: "StickMEN: Sheeple Armegeddon",
      abstract: " The game is a PC First Person Shooter title with several key differences in design choices and aesthetics as compared to the conventional FPS title. It is a non-serious FPS style game with weird and funky mechanics thrown in. The game has customizable game characters, cartoonish graphics styles, never-seen-before weapons and a dynamic Gameplay. Besides the usual hit and kill style, the stickmen have the ability to drop their limbs when they take a certain amount of damage and still continue playing. Challenge your friends in our multiplayer arena and have fun!",
      course_id: 2
    },
    {
      title: "GOTCHA",
      abstract: " Gotcha is a game where you have to escape from different scenarios. In the different levels there will be different kinds of “guards” trying to catch you and lots of obstacles in your way. Within a time limit you have to escape and get as many points on the way as possible. You also have to watch out for nosy people who wants to tell on you or bribe them before they cry out.",
      course_id: 2
    },
    {
      title: "Indiana Paws and the Quest for the Holy Relic",
      abstract: " The player is a treasure hunter tasked by the king to recover a magical relic from an ancient civilization. The relic is said to grant incredible powers to the user and would help in the war effort against the Evil Mice nation. The player will start at the entrance of an ancient tomb and proceed to gain items and skills to reach the final door. However, the door requires keys to unlock. These keys are scattered throughout the tomb and would require the player to recall and backtrack to previous locations to recover the necessary keys for the final door.",
      course_id: 2
    },
    {
      title: "Heresy of Set",
      abstract: " Based on Ancient Egyptian Mythology, Heresy of Set is a tower defense game that uses statues of the various Ancient Egyptian Gods as the primary source of defense. Using powers from these statues, players will have to defend against the invasion by the followers of Set, the evil God of Chaos. Special Features! - 10 unique towers for players to deploy throughout the map! - 3 different levels where players have to defend against the onslaught of enemies! - More than 30 types of enemies! - Relation buff when towers of related Ancient Egyptian Gods are placed near each other",
      course_id: 2
    },
    {
      title: "The New World",
      abstract: " The New World is, for the most part, a Turn-based Strategy game. The game features two different phases: the macro phase where players would move their troops around their territory on the world map, much like the game Risk; the micro phase happens when combats are initiated in the macro phase mentioned above, these skirmishes involve maximum 6 units from each side, and are turn-based combat.",
      course_id: 2
    },
    {
      title: 'Quick Eat',
      abstract: "Many of us queue for food everyday because of our similar lunch times, whether at school or at work. From noon to two daily, students and teaching staff spend at least 10-15 mins queueing for food. With our application, we aim to employ existing technologies to alleviate this problem. With Quick Eat, simply order and pay for your food via the mobile app, instead of physically queueing for your food, just wait at your table comfortably and when your order is ready, you will be notified via your mobile to collect your meal. It's that easy!",
      course_id: 3
    },
    {
      title: 'Phatima',
      abstract: "Forgetfulness stems from the hectic lifestyle most people adopt in society nowadays. Often than not, drivers face common issues such as getting fined due to forgetting to renew the parking coupon.Our application aims to provide drivers with reminders to their parking woes, some features include parking coupon reminders and easy access to coupon prices at the current parking lot. It can also be used to store the parking location, especially in areas with huge car parks.",
      course_id: 3
    },
    {
      title: 'Bedridden Boredom',
      abstract: "“Science shows that you can die from boredom, literally”. - And what can be more boring than being bedridden in a hospital? Our team plans to tackle this problem with our easily accessible tablet-based application designed for the elderly. We will be focusing on 3 main categories. Our first category is Games, which are responsible for keeping their minds active and alert. Next is Current Affairs, to help the user remain up-to-date with the latest news and issues. Finally, we will allow them to easily connect and communicate with their loved ones via our specialized chat application.",
      course_id: 3
    },
    {
      title: 'Hawt Mug',
      abstract: "Hot beverages always turn cold when you leave it for some time. And these hot beverages usually taste the best when they are hot. If you want to enjoy your favorite cup of hot beverages in your tea time slowly, it is impossible to keep it hot over time. That is why Hawt Mug is made. It helps to maintain the optimal temperature of the beverages and guarantees the satisfaction at every sip you take.",
      course_id: 3
    },
    {
      title: 'HeadSync',
      abstract: "Meetings are spontaneous. We can only plan the agenda, but the actual discussions are often unpredictable. Every time an unfamiliar topic arises, participants have to dig out relevant information to aid their understanding; it's disruptive! We can continue with the traditional way of doing meetings and spend more time on them. But we don't see why we should. HeadSync listens to and analyses the discussion during a meeting. It then retrieves and organises relevant information on the screen for the participants to further their meetings. HeadSync attempts to streamline traditional online meetings and transform its participants to become more efficacious.",
      course_id: 3
    },
    {
      title: 'Tour Itinery Planner',
      abstract: "Nowadays, people often like to travel overseas during holiday and festive seasons. However, due to insufficient information gathered from their part, they had to travel down to the tour agencies for more information and ticket booking. This results in more monetary costs from the tourists’ point of view due to the extra money paid for the middlemen services. The users may also feel frustrated if they do research by themselves instead of relying on the agencies, since information from the Internet is scattered. With our implemented idea, the application can help to save the users’ time and money as most of the information regarding the designated tour area is centralised in it, thus enhancing convenience and usability.",
      course_id: 3
    },
    {
      title: 'STAGED',
      abstract: "Choreography is usually an elaborate affair which is exploratory in nature. During the process of instructing dancers to move to various formations with respect to stage coordinates, a given area or landmark, the choreographer often find difficulties mapping artistic expectations into reality. This problem is more evident for items that have large numbers of dancers. Hence our application is designed to assist choreographers not only in visualizing artistic effects but also help in keeping track and managing dancers' positions. The aim of the app is to ultimately optimize efficiency of dance choreography.",
      course_id: 3
    },
    {
      title: 'FitnessRight',
      abstract: "Sometimes, gym users aren't using the equipments correctly, potentially causing long-term injuries as a result. Furthermore, instructors are only able to focus on a small group of individuals at once. This is where FitnessRight comes into play. It is state-of-the-art system that is mounted on each equipment, providing users synchronous feedback such as their sitting posture, fine-tuning the appropriate amount of weights before/during the workout and even suggests variations of exercise on the same equipment for maximum output. With this system in place, everyone can exercise without worries of sustaining injuries with maximum output.",
      course_id: 3
    }
  ]
)

Project.all.each do |pj|
  User.all.each do |us|
    if (rand(9) % 2) == 0
      Evaluation.create(
        {
          user_id: us.id,
          project_id: pj.id,
          comment: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
          rating: rand(1..9)
        }
      )
    end
  end
end

Project.all.each do |pj|
  User.all.each do |us|
    if (rand(9) % 3) == 0
      ProjectParticipant.create(
        {
          user_id: us.id,
          project_id: pj.id
        }
      )
    end
  end
end
