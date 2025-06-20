function Get-Quote {
    <#
	.NOTES
	This list is taken from various places and some I've added along the way:
    One big source: [notepad-plus-plus](https://raw.githubusercontent.com/notepad-plus-plus/notepad-plus-plus/master/PowerEditor/src/Notepad_plus.cpp) on Nov 8th, 2022
	#>	
    $quotes = @(
        # "Some Quote.`n -Some Guy`n"
        #Region Long Jokes
        "`n`nA man is flying in a hot air balloon and realizes he is lost. He reduces height and spots a man down below. He lowers the balloon further and shouts,`n`"Excuse me, can you tell me where I am?`n`"The man below says, `"Yes, you're in a hot air balloon, hovering 30 feet above this field. `"`n`n`"You must be in IT`", says the balloonist.`n`"I am`", replies the man. `"How did you know?`"`n`"Well`", says the balloonist, `"everything you have told me is technically correct, but it's of no use to anyone!`"`n`nThe man below says, `"You must be in management.`"`n`"I am`", replies the balloonist, `"but how did you know?`"`n`"Well`", says the man, `"you don't know where you are, or where you're going, but you expect me to be able to help. You're in the same position you were before we met, but now it's my fault.`"`n`n"
        #endRegion

        #Region Dad Jokes
        # "XXXxXXXxXXX.`n`nXXX.`n`n"
        "I've never been very good at geography.`n`nBut I can name at least one city in France, which is Nice.`n`n"
        "Why don't scientists trust atoms?`n`nBecause they make up everything.`n`n"
        "I changed all my passwords to 'Kenny.'`n`nNow I have all Kenny Loggins.`n`n"
        "I just got fired from my job at the keyboard factory...`n`nThey told me I wasn’t putting in enough shifts.`n`n"
        "I was wondering why the football was getting bigger.`n`n ... then it hit me.`n`n"
        "What do you call a factory, that just makes okay products?`n`nA satisfactory.`n`n"
        "To the guy who invented zero...`n`nThanks for nothin'!`n`n"
        "My cat accidentally ate an entire bag of scrabble tiles. So, I took her to the Vet.`n`nNo word yet.`n`n"
        "I asked my wife to rate my listening skills.`nShe said 'you're an 8 on a scale of 10'.`n`nI don't know why she wants me to urinate on a skeleton.`n`n"
        "When does a joke become a dad joke?`n`nWhen it becomes apparent.`n`n"
        "I can't believe my wife accused me of stealing her thesaurus!`n`nNot only was I shocked,`nI was appalled, aghast, and dismayed.`n`n"
        ###--above shared @ work already ... or too dumb or risque to share
        "I was going to change my password to 'beef stew'.`n`nBut I decided that it wasn't strong-anoff.`n`n"
        "My wife said quilts are better than duvets.`n`nI said you better be careful making blanket statements like that.`n`n"
        "What concert costs just 45c?`n`n50 Cent, featuring Nickelback!`n`n"
        "Why did the non-binary prospector hike up the mountain?`n`nBecause there's Gold in Them/Their hills!`n`n"
        "My son asked me what it was like to be married.`n`nSo I told him to leave me alone.`n`nAnd when he did, I said `"Why are you ignoring me?`"`n`n"
        "I love going outdoors.`n`nIt's much safer than going out windows.`n`n"
        "I have a career tip for you. Every time I get to work, I hide.`n`nGood employees are hard to find.`n`n"
        "I made a playlist for hiking.`nIt has music from Peanuts, The Cranberries, and Eminem.`n`nI call it my Trail Mix.`n`n"
        "It's so sad, my friend is addicted to brake fluid....`n`nHe says he can stop anytime he wants.`n`n"

        #endRegion

        #Region From some codebase easter egg I found once
        "Censorship is telling a man he can't have a steak just because a baby can't chew it.`n -Mark Twain`n"
        "If I'm the Father of Open Source, it was conceived through artificial insemination using stolen sperm without my knowledge or consent.`n -Richard Stallman`n"
        "Always code as if the guy who ends up maintaining your code will be a violent psychopath who knows where you live.`n -Martin Golding`n"
        "To iterate is human, to recurse divine.`n -L. Peter Deutsch`n"
        "The trouble with programmers is that you can never tell what a programmer is doing until it's too late.`n -Seymour Cray`n"
        "Most software today is very much like an Egyptian pyramid with millions of bricks piled on top of each other, with no structural integrity, but just done by brute force and thousands of slaves.`n -Alan Kay`n"
        "Measuring programming progress by lines of code is like measuring aircraft building progress by weight.`n -Bill Gates`n"
        "Sometimes it pays to stay in bed on Monday, rather than spending the rest of the week debugging Monday's code.`n -Christopher Thompson`n"
        "Fine, Java MIGHT be a good example of what a programming language should be like.`nBut Java applications are good examples of what applications SHOULDN'T be like.`n -pixadel`n"
        "Don't worry if it doesn't work right. If everything did, you'd be out of a job.`n -Mosher's Law of Software Engineering`n"
        "Picasso had a saying: ""Good artists copy, great artists steal."".`nWe have always been shameless about stealing great ideas.`n -Steve Jobs`n"
        "Do everything for greatness, not money. Money follows greatness.`n -brotips #1001`n"
        "A good programmer is someone who always looks both ways before crossing a one-way street.`n -Doug Linder`n"
        "I'm not totally useless. I can be used as a bad example.`n -Anonymous #3`n"
        """SEX"" is not the answer.`nSex is the question, ""YES"" is the answer.`n -Anonymous #5`n"
        "Everything is a knife if you're strong enough.`n -Anonymous #8`n"
        "Etc.`n`n(Abb.) End of Thinking Capacity.`n`n -Anonymous #10`n"
        "We stopped checking for monsters under our bed, when we realized they were inside us.`n -Anonymous #11`n"
        "Whoever says Paper beats Rock is an idiot. Next time I see someone say that I will throw a rock at them while they hold up a sheet of paper.`n -Anonymous #13`n"
        "A better world is where chickens can cross the road without having their motives questioned.`n -Anonymous #14`n"
        "Never get into fights with ugly people, they have nothing to lose.`n -Anonymous #18`n"
        "People who say they give 110% don't really understand how percentages work.`n -Anonymous #19`n"
        "Never make eye contact while eating a banana.`n -Anonymous #20`n"
        "I love my sixpack so much, I protect it with a layer of fat.`n -Anonymous #21`n"
        """It's impossible."" said pride.`n""It's risky."" said experience.`n""It's pointless."" said reason.`n""Give it a try."" whispered the heart.`n...`n""What the hell was that?!?!?!?!?!"" shouted the anus two minutes later.`n -Anonymous #22`n"
        "A programmer is told to ""go to hell"".`nHe finds the worst part of that statement is the ""go to"".`n -Anonymous #23`n"
        "An Architect's dream is an Engineer's nightmare.`n -Anonymous #24`n"
        "I don't have a problem with caffeine.`nI have a problem without caffeine.`n -Anonymous #27`n"
        "Don't think of yourself as an ugly person.`nThink of yourself as a beautiful monkey.`n -Anonymous #42`n"
        "Kids are like farts.`nYou can only stand yours.`n -Anonymous #47`n"
        "London 2012 Olympic Games - A bunch of countries coming across the ocean to put their flags in Britain and try to get a bunch of gold... it's like history but opposite.`n -Anonymous #50`n"
        "I don't need a stable relationship,`nI just need a stable Internet connection.`n -Anonymous #51`n"
        "Don't be ashamed of who you are.`nThat's your parents job.`n -Anonymous #55`n"
        "No, no, no, I'm not insulting you.`nI'm describing you.`n -Anonymous #57`n"
        "Yesterday I named my Wifi network ""hack me if you can""`nToday when I woke up it was changed to ""challenge accepted"".`n -Anonymous #60`n"
        "Yo mamma so fat,`nthe recursive function computing her mass causes a stack overflow.`n -Anonymous #61`n"
        "I'm not saying I am Batman, I am just saying no one has ever seen me and Batman in the same room together.`n -Anonymous #63`n"
        "I took a taxi today.`nThe driver told me ""I love my job, I own this car, I've got my own business, I'm my own boss, NO ONE tells me what to do!""`nI said ""TURN LEFT HERE"".`n`n -Anonymous #64`n"
        "A man without God is like a fish without a bicycle.`n -Anonymous #65`n"
        "Men also have feelings.`nFor example, they can feel hungry.`n -Anonymous #71`n"
        "Project Manager:`nA person who thinks 9 women can deliver a baby in 1 month.`n -Anonymous #72`n"
        "If you try and don't succeed, cheat. Repeat until caught. Then lie.`n -Anonymous #73`n"
        "I think therefore I am`nnot religious.`n -Anonymous #75`n"
        "Even if being gay were a choice, so what?`nPeople choose to be assholes and they can get married.`n -Anonymous #76`n"
        "Governments are like diapers.`nThey should be changed often, and for the same reason.`n -Anonymous #77`n"
        "I'm a creationist.`nI believe man created God.`n`n -Anonymous #79`n"
        "Let's eat kids.`nLet's eat, kids.`n`nUse a comma.`nSave lives.`n`n -Anonymous #80`n"
        "A male engineering student was crossing a road one day when a frog called out to him and said, ""If you kiss me, I'll turn into a beautiful princess."" He bent over, picked up the frog, and put it in his pocket.`n`nThe frog spoke up again and said, ""If you kiss me and turn me back into a beautiful princess, I will stay with you for one week."" The engineering student took the frog out of his pocket, smiled at it; and returned it to his pocket.`n`nThe frog then cried out, ""If you kiss me and turn me back into a princess, I'll stay with you and do ANYTHING you want."" Again the boy took the frog out, smiled at it, and put it back into his pocket.`n`nFinally, the frog asked, ""What is the matter? I've told you I'm a beautiful princess, that I'll stay with you for a week and do anything you want. Why won't you kiss me?"" The boy said, ""Look I'm an engineer. I don't have time for a girlfriend, but a talking frog is cool.""`n`n -Anonymous #81`n"
        "Copy from one, it's plagiarism.`nCopy from two, it's research.`n`n -Anonymous #83`n"
        "Race, religion, ethnic pride and nationalism etc... does nothing but teach you how to hate people that you've never met.`n -Anonymous #85`n"
        "The biggest step in any relationship isn't the first kiss.`nIt's the first fart.`n -Anonymous #89`n"
        "Clapping:`n(verb)`nRepeatedly high-fiving yourself for someone else's accomplishments.`n -Anonymous #90`n"
        "Mondays are not so bad.`nIt's your job that sucks.`n -Anonymous #92`n"
        "[In a job interview]`nInterviewer: What's your greatest weakness?`nCandidate: Honesty.`nInterviewer: I don't think honesty is a weakness.`nCandidate: I don't give a fuck what you think.`n -Anonymous #93`n"
        "What if the spider you killed in your house had spent his entire life thinking you were his roommate?`nEver think about that?`nNo. You only think about yourself.`n`n -Anonymous #95`n"
        "My neighbours listen to good music.`nWhether they like it or not.`n -Anonymous #98`n"
        "Dear YouTube,`nI can deal with Ads.`nI can deal with Buffer.`nBut when Ads buffer, I suffer.`n -Anonymous`n"
        "If IE is brave enough to ask you to set it as your default browser,`ndon't tell me you dare not ask a girl out.`n -Anonymous`n"
        "The main idea of ""Inception"":`nif you run a VM inside a VM inside a VM inside a VM inside a VM,`neverything will be very slow.`n -Anonymous`n"
        "When I die, I want to go peacefully like my grandfather did,`nin his sleep--not screaming, like the passengers in his car.`n -Anonymous`n"
        "Remember, YOUR God is real.`nAll those other Gods are ridiculous, made-up nonsense.`nBut not yours.`nYour God is real. Whichever one that is.`n -Anonymous`n"
        "What's the best thing about UDP jokes?`nI don't care if you get them.`n -Anonymous`n"
        "A programmer had a problem, so he decided to use threads.`nNow 2 has. He problems`n -Anonymous`n"
        "A colon can completely change the meaning of a sentence. For example:`n- Jane ate her friend's sandwich.`n- Jane ate her friend's colon.`n -Anonymous`n"
        "How can you face your problem if your problem is your face?`n -Anonymous`n"
        "YOLOLO:`nYou Only LOL Once.`n -Anonymous`n"
        "GRAMMAR`nThe difference between knowing your shit and knowing you're shit.`n -Anonymous`n"
        "You don't need religion to have morals.`nIf you can't determine right from wrong then you lack empathy, not religion.`n -Anonymous`n"
        "SELECT finger`nFROM hand`nWHERE id = 2 ;`n`n -Anonymous`n"
        "3 men are on a boat. They have 4 cigarettes, but nothing to light them with.`nSo they throw a cigarette overboard and the whole boat becomes a cigarette lighter.`n -Anonymous`n"
        "What is the most used language in programming?`n`nProfanity`n`n -Anonymous`n"
        "Linux is user friendly.`nIt's just picky about its friends.`n -Anonymous`n"
        "Theory is when you know something, but it doesn't work.`nPractice is when something works, but you don't know why.`nProgrammers combine theory and practice: nothing works and they don't know why.`n -Anonymous`n"
        "To most religious people, the holy books are like a software license (EULA).`nNobody actually reads it. They just scroll to the bottom and click ""I agree"".`n -Anonymous`n"
        "You are nothing but a number of days,`nwhenever each day passes then part of you has gone.`n -Anonymous`n"
        "I dig, you dig, we dig,`nhe dig, she dig, they dig...`n`nIt's not a beautiful poem,`nbut it's very deep.`n -Anonymous`n"
        "Declare variables, not war.`nExecute programs, not people.`n -Anonymous`n"
        "I can't see an end. I have no control and I don't think there's any escape. I don't even have a home anymore.`nI think it's time for a new keyboard.`n -Anonymous`n"
        "So my wife said`n""take off my shirt"".`nI did as she said and take off her shirt.`nThen she said,`n""Take off my skirt.""`nI took off her skirt.`n""Take off my shoes.""`nI took off her shoes.`n""Now take off my bra and panties.""`nand so I took them off.`nThen she looked at me and said`n""I don't want to catch you wearing my things ever again.""`n -Anonymous`n"
        "I love the way the earth rotates,`nit really makes my day.`n -Anonymous`n"
        "Homonyms are a waist of thyme.`n -Anonymous`n"
        "What has 4 letters`nsometimes 9 letters`nbut never has 5 letters`n -Anonymous`n"
        "The 'h' in ""software development"" stands for ""happiness"".`n -Anonymous`n"
        "A journalist asked Linus Torvalds what makes code bad.`nHe replied : No comment.`n -Anonymous`n"
        "If you spell ""Nothing"" backwards, it becomes ""Gnihton"" which also means nothing.`n -Anonymous`n"
        "Q: Why do we need a backend, why not just connect front end to database???`n`nA: Yeah! And why do we eat and go to the bathroom while we can throw the food directly in the toilet? Because stuff needs to get processed. ;)`n`n -Anonymous`n"
        "Someday, once humans are extinct from covid-19. I hope whatever species rules Earth makes chicken nuggets in the shape of us, like we did for dinosaurs.`n -Anonymous`n"
        "Linkedin is basically a reversed Tinder.`nHot girls write to nerd guys and they don't reply.`n -Anonymous`n"
        "A vegan said to me, ""people who sell meat are gross!""`nI said, ""people who sell fruits and vegetables are grocer.""`n`n -Anonymous`n"
        "Documentation is a love letter that you write to your future self.`n`n -Anonymous`n"
        "Workers play football`nManagers play tennis`nCEOs play golf`n`nHigher the function, smaller the balls.`n`n -Anonymous`n"
        "I met a magical Genie. He gave me one wish.`nI said: ""I wish I could be you.""`nThe Genue saud: ""Weurd wush but U wull grant ut.""`n`n -Anonymous`n"
        "Dear Optimist, Pessimist and Realist,`n`nWhile you guys were busy arguing about`nthe glass of water, I drank it!`n`n$(' '*20)Sincerely,`n$(' '*20)The Opportunist`n`n`n"
        "Dance like nobody's watching.`nEncrypt like everyone is.`n`n -Anonymous`n"
        "Everyone complains about the weather,`nbut no one wants to sacrifice a virgin to change it.`n`n -Anonymous`n"
        "The two most difficult programming challenges are naming things, cache invalidation, and off-by-one errors.`n`n -Anonymous`n"
        "The greatest security vulnerability in any computer system is located between the keyboard and the chair.`n`n -Anonymous`n"
        "You can't force someone to love you.`nBut you can lock this person in the basement and wait for him/her to develop Stockholm syndrome.`n`n -Anonymous`n"
        "Do you know:`nthere are more airplanes in the oceans, than submarines in the sky?`n`n -Anonymous`n"
        "Why do programmers always mix up Halloween and Christmas?`nBecause Oct 31 == Dec 25`n`n -Anonymous`n"
        "When I am tasked with sorting through a stack of resumes, I throw about half of them in the garbage.`nI do not want unlucky people working in our company.`n`n -Anonymous`n"
        "Never have I felt so close to another soul`nAnd yet so helplessly alone`nAs when I Google an error`nAnd there's one result`nA thread by someone with the same problem`nAnd no answer`nLast posted to in 2003`n`n""Who were you, DenverCoder9?""`n""What did you see?!""`n`n(ref: https://xkcd.com/979/)`n -xkcd`n"
        "No hugs & kisses.`nOnly bugs & fixes.`n -A developer`n"
        "Don't set your password as your child's name.`nName your child after your password.`n -Elon Musk`n"
        "If you have some problem in your life and need to deal with it, then use religion, that's fine.`nI use Google.`n -Simon Amstell`n"
        "Only 3 things are infinite:`n1. Universe.`n2. Human Stupidity.`n3. Winrar's free trial.`n -Albert Einstein`n"
        "Artificial Intelligence is no match for natural stupidity.`n -Terry Pratchett`n"
        "Software and cathedrals are much the same - first we build them, then we pray.`n -Sam Redwine`n"
        "In theory, there is no difference between theory and practice. But, in practice, there is.`n -Jan L. A. van de Snepscheut`n"
        "Earth provides enough to satisfy every man's need, but not every man's greed.`n -Gandhi`n"
        "There is not enough love and goodness in the world to permit giving any of it away to imaginary beings.`n -Friedrich Nietzsche`n"
        "Feel free to mock my lack of belief in any Gods.`nIt won't hurt my feelings.`nIt won't damage my faith in reason.`nAnd I won't kill you for it.`n -Ricky Gervais`n"
        "Knowledge is power. France is bacon.`n`nWhen I was young my father said to me: ""Knowledge is power, Francis Bacon."" I understood it as ""Knowledge is power, France is bacon.""`n`nFor more than a decade I wondered over the meaning of the second part and what was the surreal linkage between the two. If I said the quote to someone, ""Knowledge is power, France is Bacon"", they nodded knowingly. Or someone might say, ""Knowledge is power"" and I'd finish the quote ""France is Bacon"" and they wouldn't look at me like I'd said something very odd, but thoughtfully agree. I did ask a teacher what did ""Knowledge is power, France is bacon"" mean and got a full 10-minute explanation of the ""knowledge is power"" bit but nothing on ""France is bacon"". When I prompted further explanation by saying ""France is bacon?"" in a questioning tone I just got a ""yes"". At 12 I didn't have the confidence to press it further. I just accepted it as something I'd never understand.`n`nIt wasn't until years later I saw it written down that the penny dropped.`n`n -Francis bacon`n"
        "Freedom of expression is like the air we breathe, we don't feel it, until people take it away from us.`n`nFor this reason, Je suis Charlie, not because I endorse everything they published, but because I cherish the right to speak out freely without risk even when it offends others.`nAnd no, you cannot just take someone's life for whatever he/she expressed.`n`nHence this ""Je suis Charlie"" edition.`n -#JeSuisCharlie`n"
        #endRegion

        #Region Gurwinder — 40 Mind-Expanding Concepts (Winter 2022) —— https://gurwinder.substack.com/p/40-useful-concepts-you-should-know <--- (links to wiki articles for each found here)
        "When we notice something new, like an unusual word, we start seeing it more often. It feels like it's become more common but really we're just more alert to it, and we confuse our attention with reality itself. Hence conspiracy theories.`n -Baader-Meinhof Phenomenon`n"
        "We often try to avoid info that we fear will cause us stress. Thus bills and work emails remain unopened, bank balances remain unchecked. This is counterproductive because ignoring a problem doesn't eliminate the problem or your anxiety; it only prolongs them.`n -Ostrich Effect`n"
        "We idolize those who excel in a particular field, inflating their egos and afflicting them with the hubris to opine on matters they know little about. By celebrating people for their intelligence, we make them stupid.`n -Nobel Disease`n"
        "Online content that provokes people gets more engagement than content people merely agree with, which incentivizes content creators to be provocative.`n`n`tSo much is alarming and enraging only because so much is trying to get your attention.`n -Warnock's Dilemma`n"
        "We all get our answers from whatever tops the search results, so these results come to dominate a topic, muscling out unluckier viewpoints. Google has trapped us in an orgy of intellectual incest where everyone is drawing from the same tiny meme-pool.`n -Google Scholar Effect`n"
        "Researchers Gunn et al. (2016) found that when eyewitnesses unanimously agreed on the identity of suspects, they were more likely to be wrong.`nThe more people agree, the less likely they are thinking for themselves.`nTherefore, beware of consensuses.`n -Paradox Of Unanimity`n"
        "Instead of trying to be right, try to be less wrong. Avoiding idiocy is easier than achieving genius, and by beginning from the position that you don't know enough (which you don't), you'll gain more awareness of your blindspots and become harder to fool. `n-Epistemic Humility`n"
        "Craving is contagious; watching other people want a thing makes us want it too. It's why ads are so effective. But it puts us all into unnecessary competition as we fool ourselves into chasing what others are chasing simply because they are chasing it.`n -Mimetic Desire`n"
        "We think people judge us by a single success or failure, but they don't. If you mess up one meal no one thinks you're a bad chef, and if you have one great idea no one thinks you're a genius. People just aren't thinking about you that much.`n -Ethan Mollick (Overblown Implications Effect)`n"
        "People prefer a clear risk over an unclear one, even if it's no safer. E.g. They'd rather bet on a ball picked from a mix of black balls than on one where the exact ratio of red to black balls is unknown. Helps explain market volatility.`n -Ellsberg Paradox`n"
        "We often attach value to things simply because they're hard to get. People will be more attracted to a painting if it costs `$3 million than if it costs `$3 The price becomes a feature of the product in that it allows the buyer to signal affluence to others.`n -Veblen Goods`n"
        "People in a hierarchy such as a business or government will be promoted until they suck at their jobs, at which point they will remain where they are. As a result, the world is filled with people who suck at their jobs.`n -Peter Principle`n"
        "An ideology parasitizes the mind, changing the host's behavior so they spread it to other people. Therefore, a successful ideology (the only kind we hear about) is not configured to be true; it is configured only to be easily transmitted and easily believed.`n -Meme Theory`n"
        "We often feel we're owed luck for being unlucky. `"The coin was heads 10 flips in a row, the next flip has gotta be tails!`" But probability has no memory; it won't make amends for its past behavior. Therefore, treat every possibility independent of the past.`n -Gambler's Fallacy`n"
        "We often procrastinate because we're intimidated by our task. So make your task less intimidating by dividing it into steps and focusing only on the next step. Action creates traction, so each step you take will facilitate the next.`n -Do Something Principle`n"
        "The longer a non-biological system has existed, the longer it's likely to exist, because its age demonstrates its ability to weather the fickleness of fashions and the erosion of eons.`n -Lindy Effect`n"
        "Teaching people about deepfakes and other disinfo doesn't make them skeptical of falsehoods as much as it makes them skeptical of reality. Amid such confusion, they default to believing what they want to, discounting anything they don't like as disinfo.`n -The Liar's Dividend`n"
        "An absurd ideological belief is a form of tribal signaling. It signifies that one considers their ideology more important than truth, reason, or sanity. To one's allies, this is an oath of unwavering loyalty. To one's enemies, it is a threat display.`n -Shibboleth`n"
        "Before criticizing their own tribe, people feel the need to reaffirm their loyalty to the tribe. `"I support X but...`"`nThey do this because other people cannot comprehend that someone could see flaws in anyone other than the enemy team.`n -Throat-Clearing`n"
        "A company needs a nuclear reactor and a bike shed. Few workers understand reactors, but all understand sheds, so the shed becomes the focus of debate as everyone tries to enact their vision.`nProjects that require the least attention tend to get the most.`n -Law of Triviality`n"
        "When punishment for what people say becomes widespread, people stop saying what they really think and instead say whatever is needed to thrive in the social environment. Thus, limits on speech become limits on sincerity.`n -Chilling Effect`n"
        "Joseph Goebbels said*, `"Repeat a lie often enough and it becomes the truth,`" and he was right; repetition can make people believe things they otherwise wouldn't.`nGoebbels didn't actually say this, but everyone thinks he did because of the Reiteration Effect.`n -Reiteration Effect`n"
        "We know others are biased, but think we see the world as it is. Thus, teaching people about biases & fallacies doesn't make them doubt their own beliefs, it only makes them even more doubtful of their opponents'.`n -Naive Realism`n"
        "Members of political tribes inevitably begin competing with their fellows to be the most ideologically pure. The constant one-upmanship toward moral superiority causes the whole group to gradually become more extreme. E.g. Maoist China, Twitter echo-chambers.`n -Purity Spiral`n"
        "Politics is pro-wrestling in suits. Opposing parties are collaborators in a greater system, whose choreographed conflict entertains and distracts us from what is really going on.`n -Kayfabrication`n"
        "The press lost its monopoly on news when the internet democratized info. To save its business model, it pivoted from journalism into tribalism. The new role of the press is not to inform its readers but to confirm what they already believe.`n -Postjournalism`n"
        "Curiosity is the desire to fill gaps in knowledge. Thus, curiosity occurs not when you know nothing about something, but when you know a bit about it. So learn a little about as much as you can (like you're doing now!), and it will spur you to learn even more.`n -Curiosity Zone`n"
        "What's the minimum number of grains of sand needed to make a heap? We don't know, because human language (in this case the word `"heap`") is imprecise. If our language can't even quantify a heap, how can it resolve the complex questions we so fiercely debate? -Sorites Paradox`n"
        "It takes a lot more energy to refute bullshit than to produce it. Hence, the world is full of unrefuted bullshit.`n -Brandolini's Law (aka the Bullshit Asymmetry Principle)`n"
        "We find growth while searching for other things. Algorithms give us exactly what we want on demand, so we never need to search, and never find what we never knew we needed.`nIf you wish to grow, defy the robots' recommendations.`n -Algorithmic Blindspots`n"
        "a) Future people matter morally as much as people alive now.`n`nb) There are likely many more future people than people alive now.`n`nc) Small changes now can have huge repercussions in future.`n`nIf these are true, should we be doing more for future generations? -Longtermism`n"
        "If a task would take less than two minutes, do it immediately. This is because adding the task to your mental to-do list, keeping it in your memory, and managing the anxiety of not having done it will take far more effort than just doing it now.`n -The Two-Minute Rule`n"
        "Technology is outpacing wisdom; we're changing the world faster than we can adapt to it. Lagging ever more behind accelerating progress, we're increasingly unable to foresee the effects of what we create. We're amassing the power of gods, yet we remain apes.`n -Promethean Gap`n"
        "The mark of useful info is that it makes us act differently. Most info we consume doesn't make us act differently; we just passively graze on it like cattle before defecating it undigested.`nStop mindless scrolling and seek out info that changes you.`n -Information-Action Ratio`n"
        "In order for you to beat someone in a debate, your opponent needs to realize they've lost. Therefore, it's easier to win an argument against a genius than an idiot.`n -Gurwinder's Third Paradox`n"
        "Writing has existed for <2% of human history, so our brains are not evolved for reading; we need vocal/facial cues for context. Thus, accept that you'll be misunderstood online. But never stop posting, for the only way to write clearer is by writing.`n -Media Naturalness Theory`n"
        "An online stranger doesn't know you; all they have are a few vague impressions of you, too meager to form anything but a phantasm. So when they attack `"you`", they're really just attacking their own imagination, and there is no need to take it personally.`n -Tilting At Windmills`n"
        "Every single person is exactly what you would be if you were them. This includes your political opponents. So instead of dismissing them as evil or stupid, maybe seek to understand the circumstances that led them to their conclusions.`n -Principle Of Humanity`n"
        "We can be convinced that a concept is real by the mere fact that it has a name, but the world is full of names for things that aren't real (e.g. Batman). As such, assume nothing is true just because it has a name (including every concept here!)`n -Empty Name`n"
        #endRegion

        #Region From https://kk.org/cooltools/paradox/
        "The superfluous is the most necessary.`n -Voltaire`n"
        "Always remember that you are absolutely unique. Just like everyone else.`n -Margaret Mead`n"
        "I shut my eyes in order to see.`n -Paul Gauguin`n"
        "We learn from history that we do not learn from history.`n -Georg Hegel`n"
        "To be believed, make the truth unbelievable.`n -Napoleon Bonaparte`n"
        "The final delusion is the belief that one has lost all delusions.`n -Maurice Chapelain`n"
        "When a dog runs at you, whistle for him.`n -Henry David Thoreau`n"
        "What we really want is for things to remain the same but get better.`n -Sydney J. Harris`n"
        "Always be sincere, even if you don't mean it.`n -Harry S. Truman`n"
        "Man can believe the impossible, but can never believe the improbable.`n -Oscar Wilde`n"
        "War is a series of catastrophes which result in a victory.`n -Georges Clemenceau`n"
        "First I dream my painting, then I paint my dream.`n -Vincent van Gogh`n"
        "We are confronted by insurmountable opportunities.`n -Walt Kelly, From Pogo`n"
        "A man chases a woman until she catches him.`n -Anonymous`n"
        "I want peace and I'm willing to fight for it.`n -Harry S. Truman`n"
        "Study the past, if you would divine the future.`n -Confucius, in Analects`n"
        "Love is a kind of warfare.`n -Ovid`n"
        "All works of art should begin ... at the end.`n -Edgar Allan Poe`n"
        #endRegion

        #Region From Tony's collection
        "Some people study Artificial Intelligence; I study actual stupidity.`n -Carl Icann`n"
        "Life is hard. People like to tell you that it gets better.`nThey're wrong! It doesn't get better; YOU get better.`n -Joan Rivers`n"
        "As we express our gratitude,`nwe must never forget that the highest appreciation is not to utter words,`nbut to live by them.`n -JFK`n"
        "Everyone has a plan until you get punched in the face.`n`n -Mike Tyson`n"
        "It does not matter how slowly you go as long as you do not stop.`n`n -Confucius`n"
        "Things done well and with a care, exempt themselves from fear.`n`n -William Shakespeare`n"
        "People say nothing is impossible, but I do nothing every day.`n`n -Winnie the Pooh`n"
        "Once men turned their thinking over to machines in the hope that this would set them free.`nBut that only permitted other men with machines to enslave them.`n -Frank Herbert (Dune)`n"
        #endRegion

        #Region New ones
        "The secret to success is honesty and fair dealing. Once you can fake that, you've got it made.`n -Groucho Marx`n"
        "People who think they know everything are very annoying to those of us who do.`n -Mark Twain`n"
        "Light travels faster than sound. This is why some people appear smart until you hear them speak.`n"
        "People in cars cause accidents and accidents in cars cause people.`n`n -Garrison Keillor`n"
        "A smooth sea never made a skilled sailor.`n`n -Franklin D. Roosevelt.`n"
        "Do not confuse understanding with a larger vocabulary.`n`n -Sri Yukteswar Giri`n"
        "The whole purpose of education is to turn mirrors into windows.`n`n -Sydney J. Harris`n"
        "Some people want it to happen, some wish it would happen, others make it happen.`n`n -Michael Jordan`n"
        "Every battle is won before it is fought.`n`n -Sun Tzu`n"
        "Guilt lives in the past.`nWorry lives in the future.`nPeace lives in the present.`n`n -James Clear`n"
        "I never see what has been done;`nI only see what remains to be done.`n`n -Buddha`n"
        "Dost thou love life? `nThen do not squander time, for that is the stuff life is made of.`n`n -Benjamin Franklin`n"
        "The young man knows the rules, but the old man knows the exceptions.`n`n -Oliver Wendell Holmes Jr.`n"
        "The reasonable man adapts himself to the world; the unreasonable man persists in trying to adapt the world to himself. Therefore all progress depends on the unreasonable man.`n`n -George Bernard Shaw`n"
        "Don't show up to prove. Show up to improve.`n"
        #endRegion

        #Region sysadmin ones
        "Jesus saves!`nThe rest of us better make backups.`n"
        "There are two types of people in this world,`nthose who can extrapolate from incomplete data.`n"
        "A network admin gets stuck on a deserted island with`na spade, a granola bar, and a single piece of fiber.`nHe laughs, eats the granola bar, and buries the fiber.`n`n24 hours later a construction crew came to dig it up, and he was saved.`n"
        "Nothing's impossible to the person who doesn't have to do the work.`n"
        "If you perform the miracle of the loaves and the fishes once, when the people are in great need, you're the messiah.`nIf you do it whenever they ask, you're a caterer.`n"
        "When you try to teach a man to fish,`nhe becomes very upset because you are clearly communicating that`nyou will not be handing him a fish every day.`n"
        "Intelligence is the ability to avoid doing work,`nyet getting the work done.`n`n -Linus Torvalds`n"
        "When you do things right, people won't be sure you did anything at all.`n"
        "The problem with troubleshooting is that trouble shoots back.`n"
        "To err is human,`nto really foul things up requires a computer.`n`n -Bill Vaughan"
        "If Java had true garbage collection, most programs would delete themselves upon execution.`n"
        #endRegion

        # https://datatracker.ietf.org/doc/html/rfc1925
    )

    ($quotes | Get-Random).Trim()

}#END: function Get-Quote
