gt j  j�@Our goal as software professionals is to deliver useful, working 5to usersJLquickly as possible.St O O�NReleasing software is too often an art; it should be an engineering discipline.*t ' '�The key to fast feedback is automation.�t � �pThe key to reducing stress ishave t&|ind of automated deployment proc4that we	6$described,Idperform it frequently, andgda good story when it comes#(your abilit�Xback changes out should�0worst happen.et i i<In software, whe�mething is painful, the way to reduce'�to do it more frequently, not less.2t 0 0hYou should automate as much@you possibly can.�t � ��If releasing software is painful, aim to 	&�^e it every time somebody checks in a change that passes all the automated tests. If you can’t�f tt0al users upony	_ ,:, pa production-like environment6? eck-in.|creat�applica> docu6	.do! das you develop new feature!0stead of leav[it�th�d. Make:c for aD part@2$definition done, and5H%process�<far as possible.>t ; ;�The earlier you catch defects, the cheaper they are to fix.t  XBring the pain forward.bt ^ 	^�]Every single artifact related to the creation of your software should be under version control�t � 
��Analysts should store requirements docu
. Tester-�Ikeep their test scripts and procedures in version control. Project managerSsaveS4release plans,Q0gress charts,fDrisk logs here. In�Hrt, every member ofT team 2� any � or fileyated to6pr	�inB� {t ~ ~�One thing that we don’t recommend	�you keep in version control is the binary output of4(r applicatiX4s compilation.�t � ��In these situations, a commit message explaining what34 person was do	 eM y>�ted that change can save you hours of debugging.�t � ��IOne style we like is a multiparagraph commit message in which the first pa,@(summary and	%ollowing)Ts add more detail. TheNO pwhat gets shown on line-per-c	�\displays—think of it a�4newspaper head:, giving��reader enough information to figure out if sh%`interested in reading on.�t � ��Maven, a build tool for Java, allows you to specify the JAR�<r application depends on and downloads them from repositories(�the Internet (or a local cache, if you have one).�t � ��XConfigurable software is not always the cheaper solution it appears to be. It’s almost <pbetter to focus on deliveringZ�high-value functionality with little configurat|and;n add co. opAXs later when necessary.�t � ��qTry to imagine someone reading the configuration file without a manual—it should be possible to understand what FS 8properties are.Qt M M�LAvoid overengineering the configuration system. Keep it as simple as you can.�t � ��Virtualization can also improve the efficiency of	@nvironment manage�process. Instead of creating a new .: 8from scratch us%(n automatedO, you�@simply take a cop�(each box in*r .d |and store it as a baseline. Then0is trivial to	� e>� s—it�<be done by click�  button. :Q\has other benefits, such�!\abilityyHonsolidate hardware�4to standardize	�!(platform ev� f	applic%Ԑs require heterogeneous environments.]t [ [�The goal of continuous integration is that the software i$t a working state all the time.�t � ���Everything in your project must be checked in to a single version control repository: code, tests, database scripts, build and deployment scand an�(else needed~Pcreate, install, run,2m	�,application.wt u u�aEvery time a build fails, it indicates that a problem has been found that may otherwise have made H4to production.jt f f�eContinuous integration is a practice, not a tool, and it depends upon discipline to make it effective.ft e e�The objective of our CI system is to ensure that  software�working, in essence, all of the time�t � ��Until their check-in has compiled and passed it$mit tests,9� developers should not start any new task. They s$dn’t go out for lunch or 9 meeting26 � be paying sufficient attention to the build to know �xoutcome within a few seconds of�com�@stage completing.�t � �XIf the commit succeeds,4developers are(n, and only8free to move onhtheir next task. If it fail	Y yOat hMPto start determining �nature o	�problem�fix%�it—with another check-in or a revert toOHprevious version incontrol�(at is, backdout> i\(anges until@y understand how !0ake them work�t � ��The effect of a broken build generally, and specifically a 	$left6at tPnd	M�day’s work, is magnified if you are�ing in a distributed development team with groups.differ0ime zones. In�tse circumstances, going home oj b.� 4is perhaps one��most-ive waysalienatOLyour remote colleagu��Just to be absolutely clear, we are not recommendMthatR$ stay lateCfix�)oLafter working hours.�t � ��Whatever our reaction to a failed commit stage, it is important that we get everything working again quickly. If we can’t fix the problem quickly, for wh�reason,eshould r� t�th>`evious change-set held in*is�$control an?medy< ozin% Dlocal environment.�t � ��iEstablish a team rule: When the build breaks on check-in, try to fix it for ten minutes. If, after ten minl, you aren’t finished withoHsolution, revert todprevious version from your8control system.�t � ��If you commit a change and all the tests &pwrote pass, but others break,,�Rbuild is still broken. Usually this means that you have introduced a regression bug o]8application. Itgpyour responsibility—because made> c�(—to fix a� e�,that are not�ing as aZLult of your changes.�t � �PRefactoring means mak�Fa series of small, incremental changes that improve your code without c'O y�@application’s behavior. CI and test-driven development enable r�by assu�you �f� df@t alter the exist�y��. Thus	J`team becomes free to makedlwhich might touch large area%;^2worry��4they can break>� @is practice also )�Dquent check-ins—-5ers	 in af! eachf� .�t � ��LAs we have said before, CI works best with small, frequent commits. If the co� tests take a long time to run, it can r�a seriously detrimental effect on the productivity of0team because gsp�(waiting for/ build and�Rcess��>complete. This will, in turn, discourage frequent check-ins, so^�:D start to store up ir.4 mak�$each one m)	�x—w!jplikelihood of merge conflicts�'chanc%int%*_rrors,'so fail!�%�. All t�0slows everyth%Ddown even further.�t �  ��iTesting is a cross-functional activity that involves the whole team, and should be done continuously from 5beginnpof 4project. Buildqualr,in means wri��Cautomated tests at multiple levels (unit, component, and acceptance)�ru	�,them as part��deployment pipeline, which is triggered every time a change!Lmade to your applica!K4, its configuror� environt�8software stack )z t�,s on. Manual%!0!�@lso an essential � bFVD: Showcases, usabi%o tI)2 explorato�	 need�R�$throughout�r��)�8constantly work�$to improve-E2�0ing strategy.�t � !��Acceptance tests are critical in an agile environment because they answer the questions, “How do I know when I am done?” for developers and “Did I get what I wanted?” for usersQt M "M�LAcceptance tests should be run when your system is in a production-like mode.�t � #��>Regression tests represent the entire corpus of your automated 4|. They serve to ensure that when54 make a change�don’t break existing functionality.�t � $��Many organizations use canary releasing (see the “C	 R” sec>� on page 263) where several subtly different versr0of the applic�0 are in produ	ZDsimultaneously and5ir eff}Hveness is compared.�t � %��[Legacy systems: Test the code that you change. The first priority when dealing with such a sT�I is to create an automated build process if one doesn’t exist, and then NC ,functional t�\scaffolding around it. C~.� 	2|uite will be easier if documenta_p, or better still, members of�H team who worked on l._p are available. However, this!(Hoften not the case.Lt V &Vxa staging environment is a testB �dentical to the production environment�t � '�8The code will b�mpiled repeatedly in different contexts: during tC�mmit process, again at acceptance test time,for capacity<ing, and often o6%Peach separate deploym�4target. Every \ you c	��de,run\risk of introducing some�Dce. The version of8Vr instal!$ i	R<later stages may!H91fromAPthat�used�Dyour commit tests.[t W (W�VRecompiling violates this principle because it takes time, especially in large systems.�t � )�8When you deploy4r application,�C should have an automated script that does a smoke test to make sure	$lit is up and running. This cc(be as simpl
0launching the.� Bchecko :j /main�een comezwith@expected content.�t � *��XBut the most fundamental one was that unit tests only test a developer’s perspective ofV�solution to a problem. They have NLa limited ability to-ve	~�applicaM\does what it is supposed7\from a users perspective�t � +��uCrucially, the development team must respond immediately to acceptance test breakages that occur as part of the normal2h process.�t � ,��The reality is that the whole team owns acceptancsts, in(same way as>= 4every stage of#(pipeline. I	>]  fail,,OHshould stop and fix#4m immediately.�t  -�IThe less control we have over the environment in which our code executes, ,�more potential there is for unexpected behaviors.at ] .]�\frequent release into production—a process we recommend very strongly when it is applicable�t � /��you could start with a bare minimum: a commit$�ge to build your application and run basic metrics <unit tests, a stH-$acceptance!(nd a third +deployFt (to a produc�L-like environment so50 can demo it.�t � 0���To tame some of this complexity, a common convention adopted by teams working on large codebases is to create a Makefile for each directory, and have a top-level Makefile that recursively runs the Makefiles in each subdirectory.�t � 1�LWhen you first start�}r project, it makes sense to have a single script containing every operation that will be performed in the course of executing�Ldeployment pipeline, with dummy targets for steps that are not yet automated.Kt G 2G�FThe most common mistake in a build is to use absolute paths by default.?t < 3<�Your default should be to use relative paths for everything.�t � 4��The general rule of thumb is not to check in anything created as part of your build, test, and deploy cycle into source control.�t � 5��qThe principal goal of the commit stage is to either create deployable artifacts, or fail fast and notify the team _Xreason for the failure.�t � 6��If that developer has been following our advice and committ�changes frequently, the scope of each&< will be small. {�e deployment pipeline is able to identify	�0failure quickm$ideally atx c� stage� n s�� c�dlimitedgthose0s made person^by:9%$This means�ix!_<problems found i	�.� { significa!4 simplerL/�� ied laterIprocess, s��(may be test�Da larger number of�@batched together.�t � 7��XThe commit stage should be focused on one thing: detecting, as fast as possible, the mostVTon failures that chang o)�system may introduce, and notifying(,developers s: y can fix<problems quickly�t � 8��eThe commit stage of your deployment pipeline should be run every time someone introduces a change into	S�application’s code or configura4. Thus it willlHexercised multiple u0s each day by	 member of	pdevelop�team[De natural tendency/* ers is to!Xplain if the performanc%"�build falls below an acceptable standard: Let�grow\8over five minut!,ndSco	v0ts will startgt d 9d�Iit is more important to have a comprehensive automated test suite than one	Tt runs in ten minutes.�t � :��aWhen the isolation of your acceptance tests is good, another possibility to speed things up presen94tself: runningp t	S$n parallel?t < ;<�we generally prefer to avoid capacity testing through the UI�t � <��uA zero-downtime release, also known as hot deployment, is one in which the actual process of switching users from one f�> to another happens nearly instantaneously. Crucially, it must �$be possiblObacknouta�<previous versionZf 4 too, if somet�(goes wrong. t  =pif it hurts, do it more often�t � >��<Continuous deployment isn’t for everyone. Sometimes, you do	%�Xwant to release new features into production immediately. In companies with constraints o	tliance, approvals are required� d�<s to production.�t � ?��>A good practice in the UNIX world is to deploy each version of ,�\application into a new directory and have a symbolic link that points to the current version.�t � @��aA “build and deployment expert” is an antipattern. Every member of the team should know how toT ,`ev�8  maintain ]��scripts. This can be achieved by making sure thatv time you 	�V|software, even on a developers mV(ne, it uses4realN� �t � A��FThe most effective mechanism to migrate data in an automated fashion is+versyour0tbase. Simply create a table in6( D that contains itsP\number. Then, every timeA makU� ge to the} ,#need�8two scripts: onztakes2=  from a� xD v�Px + 1 (a roll-forwardW), and>[ it	Q6B toObackL8. You will also�hav� onfigurat!z(setting for�r applicpecify !$�ofdat%��$is designe%8|work with (this can be kept as a!�stant!�W!�rol%
updated.� aq-�0is required).�t � B��uIn our projects, we will often isolate the code creating test instances of such commonly used data structures and sharQ`m between many different [�cases. We may have a CustomerHelper or DFixture class that	� simplify ��on�9 obj� for our~s, so3y aU88ed in a consist�(manner withllect`Tstandard default value	g0each CustomerTt P CP�OOne solution is to put in the new features, but make them inaccessible to users.{t w Dw�vThe most important property of an artifact repository is that it should not contain anything that cannot be reproduced.�t � E��The main purpose of branch. So if you merge
 rH to (not just from)G<line once a day,4(’re OK. IN�=$doing that)Tcontinuous integration�t � F��s is to facilitate parallel development: the ab$ y0Hwork on two or more	(streams at 3�same time without one affecting the other.�t � G�8So if you merge
�>r branch to (not just from) mainline once a day, you’re OK. IN’re =$doing that)Tcontinuous integration�t � H��It’s worth saying again: You should never use long-lived, infrequently merged branches as the preferred means of managing the complexity of a large project.+t ( I(�Iterations are no longer than two weeks.9t : J:@Like most things,� get worse before they get better.#t   K |Perfection is the enemy of good.�t � L��“A great team doesn’t mean ththey had the smartest people. W#$made thoseG sSis B@everyone trusted �another. It can be a powerful thing whe�Pmagic dynamic exists.�t � M���Steve continues, “One of my favorite books about team dynamics is Five Dysfunctions of a Team, by Patrick Lencioni. He writes that in order to have mutual trust, you need to be vulnerable. So, I’m going to tell you a little ab��Mmyself and what makes me tick. And then I’m going to ask you to do the same.gt l Nl�>Studies have shown that practicing five minutes daily is better-n -lonce a week for three hours.�t � O��Our view is that a complex problem is really just!Xllection of smaller, si8 r8hs waiting to be solved. Makbig* sD4, and in so do$achiev
.Xresults with less work.�t � P��[Overengineering is one of the many enemies of scale. Developing a solution beyond that whichM�useful simply wastes money and time. It may further	& process�Hresources, increase�cost�scale,Qlimitoverallability,�@system (how far t�can be6$ed). Build�so	� s	/arec4ly complex has!<imilar effect. Sm64work too hard �your	�!	�0ultimate size:L make!`rs:W 	@�quicklyL  � likely to{$the number!usO�!�eforeBI  will growW$r business:� o� c-$to underst^ kD4organizational!�ductiv!�%�%�withMSyou%�add Q�s orfunc	MC8to your system.t  QdDesign for 20x capacity. nt  RdImplement for 3x capacity.$t ! S!�Deploy for roughly 1.5x capacity.�t � T��^If you cut unnecessary features from your product, you can do five times as much work, and your6�y will be significantly less complex! By simplifying our scope, we have more computational power because we are doing less.wt { U{�XComplexity elimination is about cutting off unnecessary trips in a job, and simplificatioDXfinding a shorter path.bt g Vg0The simplest �mentation is almost always one that has already been :Xed and proven scalable.�t � W��>The Domain Name System (DNS) is one of the most important parts4infrastructure�Internet or any other network that utilizes the0�Protocol Suite (TCP/IP). It allows the translation from d	� n��(www.akfpartners.com) to an IP address (184.72.236.173) and�8ften analogized: ph! book. DNS)�maintained by a distributed database system, �nodes!#<which are called	�serv� The top*7<hierarchy consis9}root:< Each d),has at least%�4authoritative �	t)� publishes!�orm)_Dabout that domain.�t � X��LThis process of translating domains into IP addresses is made quicker by cach5Ton many levels, includdthe browser, computer oper	o\system, Internet service�vid6Dand so on. While cvTsignificantly improvess�Rperformance of name resolution, today’s pages can have hundreds or even thousandsHobjects�<ed from multiple1:. Each( requires aF� and� s.� 1ests��add up to time that’s noticeable to the consumer.�t � Y��As a general rule, the fewer DNS lookups on your pages,%better� download performance will be. There is a)Pside to combining all	MLobjects into a singl^hmain, and we’ve hinted at� reason in�previous discussion about maximum simultaneous connects.�t � Z���Now we need to think about breaking these objects up into a number of smaller ones that can be downloaded simultaneously. One final variable�ad�4e equation is Tpart�mened�.Z D persistent connec+T server, which will br�4us full circle�8our DNS discuss�<noted in Rule 4.�t � [���The client that we talked about earlier who was in the online magazine industry and had a 12-second page load time used this technique across seven subdomains and was able to reduce the average lYto less�,n 5 seconds.+t ( \(�Leaner (smaller) is almost always faster�t � ]��It is always wise to make a page as light	possibl$�achieve the desired result. And whereC�s must be heavy, implement Gzip compression to reduceX p�8weight transferh(and ideally(,total respon�<ime of the page.�t � ^��^One technique for scaling databases is to take advantage of the fact that most applications andF|perform significantly more readsF`n writes. A client of our4t handles book�reserva	o��customers has on average 400 searches*a singleL. Each is a	�  � e s@ a � ,}@ulting in a 400:1-to-� r�$. This typ%6Lsystem can be easily%u$ed by creaUe�-only copies (or replicas) of the data.�t � _��FNow that we’ve covered the time sensitivity, let’s start discussing/Dways to distribute data. One! is#$use a cach=8ier in front of78base. An object1e can beD dLread;m instof goYback#tthe application for each query�ly when*�p has been marked expired woul).Q haveiPE8primary transacwal[�,retrie8he, and refreshD! Pe. We highly recommen�Xis as a first step give	�,availability!�numerous excellent, open-source key-value stores E.i@as object caches.�t � `��RThe next step beyond an object cache between the application tier and the database is repl*ng :!<. Most major relLal � systems allow for some type of rX on “outb,box.” ManyO(s implement2; through	\sorFXmaster-slave concept—]	W be�Dprimary transactio2� Pthat gets written to,57	k1 sW<read-only copies�:�  .�t � a��iHaving the ability to run your product on multiple servers through all tiers is scaling out. Continuing toU�systems on larger hardware at any tier is scaling upFt B bB�A“When all you have is a hammer, everything looks like a nail.”3t 8 c8\Using the right tool forPjob at the right time�t � d��CUse relational databases when you need ACID properties to maintain r?(ships betwe	; rOd and consistency. For othe storagei s	*�eder more appropriate tools such as NoSQL DBMSs. An RDBMS provides great transactional integrity but is	c`difficult to scale, costs ,��has lower availability than many ot�ʨoptions. Because of this guarantee of ACID � e%Tj  	�can be�, challenging�	y	t,data stores.�t � e���File systems are great alternatives when you have a “write once, read many” system. Put another way, if you don’t expect to UTconflicting reads and f$s over timqT a structure or object.yo_need]maintai7tlarge number of relationships,2> reallyE$he transac.al�headE4a database; fi:K a-Mpchoice for this kind of work.�t � f���Read and write ratios are important as they help drive an understanding of what kind of system we need. Data that is written once } r��Cmany times can easily be put on a file system coupled with some sort�,application,3\, or object cache. Image	�4great examplesA	b�,at typically��0file systems.�t � g���Logs provide powerful insights into the performance and errors occurring within your application that might prevent it from scaling.�t � h��The first step in using log files is to aggregate them. As you probably have dozens or perhaps even hundreds of servers, you need to pull this data together to use it. If the amount of data	�o large I o	? ,��re are strategies such as sampling, pul	X data from every nth se�KTat can be implemented.�t � i��URedirects in general delay the user, consume computation resources, are prone to error�nd can negatively affect search engine rankings. A few ofyreasonsRavoid r�|4when possible 4that it always	� s�4s from getting\	�y want,< takes up �al .� nd4 r	tman>ys�break.� , hurs$user brows�or^Zt V jV�UConsistency— The client perceives that a set of operations has occurred all at once.Jt F kF�EAvailability—Every operation must terminate in an intended response.^t ^ l^hPartition tolerance—Opera�s will complete, even if individualXonents are unavailable.�t � m��To solve latency and scale issues, the first thing Lon’s team did was to add a content distribution network; they chose Akamai. Lon stated, “It was really simple^�just take all of our static assets �pushf mre [	g ]�le�4em handle cach�Lclosest to the user.�t � n��<CDNs are a collection of computers, called nodes or edge serv	Xonnected via a network,7�ra backbone, that have duplicate copies of their customers’ data or content (images, Web pages, and so on) on themft b ob�aUse Expires headers to reduce requests and improve the scalability and performance of your system.�t � p��If you have the ability to postponeTsplit of a database orpurch�wlarger server, which is not a recommended approach to scaling, by implementing an object cache this is an easy decision.�t � q��UResearch has long supported the position that we learn more from our failures than fro	4successes. But=8can only truly 	L0faGif-�Ffoster an environment of open, honest communication and fold in lightwe pro	��Dt help us repeated�and get�most�mistakes#�. RatherV n emulate=world�8politics, where;( are hiddeneI	_Xas a result bound to be� ovtime,!)0should strive+cr�>:in which	3our�|$tipatternsHbes!;$actices. T�-�ful~nee�)�|aggressively by watching custome� t�each�	�H oE�unity, rP(on organiza!�s like QA appropriately, expect systems�!�, !� design fo!�os.�.E . TheAKlow�|story illustrates how one compan�s ableo�` both deeply and broadly.Vt R rR�QTake every opportunity, especially failures, to learn and teach important lessons.�t � s�,Doing someth
�without measuring the results or having an incident4learn3�from it are wasted opportunities that your competitors /takB<advantage of. We	\ best	^<pmistakes—not our successes.dt e te�FOur philosophy is that while mistakes are unavoidable, making the same * twiceF0unacceptable.�t � u�lEnsure that all releases hav�Ie ability to roll back, practice it in a staging or QA environment, and us+\production when necessar	bdesolve customer incidents.�t � v��@Database changes must only be additive—Columns or tables should., 0ed, not delet�until the next version of code is released that deprecates 5ldependency on those columns.�t � w��^The cost of fixing a broken data model after it has been implemented is likely 100x as much as Shit during the design phase.#t   x |Don’t use Select * in queries.�t � y��qAs a best practice, do not get in the habit of using Select or Insert without specifying the columns. Besides wastA<resources and be8likely to break^�potentially even corrupt data, it also pr`ts you from rolling back.Bt > z>�=Swim lane is a term used to identify a fault isolation domain.�t � {��aIn mathematics, singletons are sets that have only one element {A}. In programming parlance, the sQH pattern is a desig tcmimics6�Pal notion and restric�(e instantia 0of a class to�object�t � |��when you have a stateful system and something fails, now 4dsome real problems. How doX,recover that	^ ?long are%8willing to waitallow 	4fully recover?�t � }��UAnother very serious con that was brought to light by the Firefox plug-in Firesheep is	>�Csession data can be easily captured on an open WiFi network and usedwnefa� ly log intsomeone else’s account. With�4aforementioned� ,�Lcookies from most of9�@popular sites such as Google, Facebook, Twitter, and Amazon, just��Xname a few, can be compromised. A little later we suggest a way to protect your users’ �againlhhis type of hack or attack,s`monly called sidejacking.�t � ~��yFor ultimate scalability we recommend avoiding sessions altogether. However, this isn’t always possible. In these cases 2a stor`the sed data in<user’s browserVt l l�Asynchronous systems tend to scale more easily and  bThighly available than JX �t � �xRFM. Recency accounts for how r�mtly the data item in question has been accessed. This might be a file in your storage system or rows within a f(base. Frequ� speaks to� f		�at 2 is �4Sometimes this$captured aDe mean period betw� and�<rough inverse ofL—!numberu,s over some zH interval. Monetiza%. i	value t� a�$cific piecj�!Yto y!5business!zgenerY,When applied*6 ,� s[hree terms help us calculate�allW	��4access speeds.;t 9 9\downtime (the amount of lyour service is unavailable)�t � ��IStateful Stream Processing: Virtually all data is created as continuous st?Ds of events. Thinkxuser interactions on websites oL mobile apps, placemF\ of orders, server logs,64sensor measure/; all4 these areJ� �t � ��Operators without input ports are called data sources and oB: outpf; inks. A I�flow graph must have at least one&o	n0ne data sink.Ft A A�@Latency indicates how long it takes for an event to be processed.�t � ��FThroughput is a measure of the system’s processing capacity—its rat1 p". ThaR, ta\tells us how many eventsj canH4 per time unit�t � ��qIf the system continues to receive data at a higher rate than it can handle, buffers might become unavailable and O m"�get lost. This situation is commonly known as backpressure�t � �hData ingestion is the opera@of fetching raw d0�from external sources and convert.`it into a format suitable4 processing. Onor|,at implement	min�<logic are called	 . A.  can;	�0a TCP socket,�ile\Kafka topic, or a sensor	;(interface. %/egressR,produc�outpu!gorm6� consump%cby=LystemsBperE%�B	ink)�exa!D$s include �s,>bas,message queudand monitoring interfaces.@t < <�Extract duplication only when you see it for the third time.Ft A A�@Duplication is far easier to refactor than the wrong abstraction.�t � �|If your test names express busin	4ehaviors, when1� change the technical implementation or refactor code, >k \should remain unchanged.%t ! !�Tests should test one thing only.Kt F F�EAvoid technical names for tests. Example: myMethodNameReturnsSomethingit d d�cAvoid leaking implementation details in test names Example: myTestReturnsFalse or CommandPatternTestXt ] ]�Avoid writing technical tests; you shouldH behaviors, not the4Dity of components.�t � ��If you need something once, build it. IR& twi'4pay attention.2, �it a third time, abstract it. Keep in mind that duplicaI� is easier to tackle than the wrong abstractions.�t � ��Like most developers starting TDD, I encountered a common blocker: coming up with good test names. With experience and a little help from other programmerszllearned to not reach for thee@ too soon. I givexa temporary name; foo is a finel. Then I concentrate on whatJXassertion should look l!;�4behavior I’m�8ing. Once I get:J (right, I ne	� think how/reAhave all's,�ingSltest becomes so much easier.�t � ��Perfection (in design) is achieved not when there�nothing more to add, but rather when 
 eN. �take away.” Antoine de Saint-Exuperyt  XKeep all entities smallt  \• 10 files per packaget  T• 50 lines per classt  T• 5 lines per methodt  d• 2 arguments per method�t � ��To improve readability, you should start with better names for variables, methods and classes. The idea is to express intent rather than implementation details.nt j j�LDelete dead code. Don’t make the reader waste time trying to figure out cod0`at is not in use anymore.�t � ��MessageChains–Toomanydots:Dog.Body.Tail.Wag()Shouldbe�MExpressHappiness(). “One dot per line” object calisthenics rule violation.}t ~ ~�CDon’t use primitive types as substitutes for classes. If the data . i-Hfficiently complex,Za 9@ to represent it.�t � ��Functions that change state should not return values and fu29 6! :.R $.” BertrB�Meyer, Object-Oriented Software ConstructionWt X X�A Test Double is any kind of object used in placea real Pfor testing purposes.�t � ��uQueries A query is a method call that returns data and shouldn’t have any effect on the state of an object. (They sh=< be idempotent).>t : :�Mocks are all about verifying the occurrence of a behaviorKt M M�Mocks are set up with expectations of the calls
y /	#4ed to receive.�t �  ��uMock objects might also be Stubs, but should not add any additional complexity to the test environment. Their behaviorQ|be obvious and self-explanatory.�t � ¡��[“Don’t change production code that is not covered by tests. If we need to refactor some ?has no 4,, then startI`adding behavior tests.”�t � ¢��Lwhen I think of design patterns, I don’t even remember the solution – I r. �problems they are meant to solve. For any{�g else we have Google (or DuckDuckGo).Nt W £W�“Write programs that do one thing and it well. >1 Ho work together.”4t 0 ¤0�Composition expresses the concept of “has a”7t 3 ¥3�inheritance represents the “is a” relationships�t � ¦��Many people try to come up with a great name all at once. This is hard and rarely works well. The problem is that naming is design: it is picking the correct place for each thing and creating the right abstraction. Doing that perfectly the first time is unlikely.�t � §��>Acceptance criteria defines “what needs to be done” and acc<tests98<how it should be8.” q	5Pare organized similarn�the arrange-act-assert sections of a unitI0. However, inB�  ,Nse=v�Cusually known as give-when-then. (Given) some context, (When) some a�H is carried out, (T#a set�hconsequences should happen.�t � ¨��OCommunication is one of the most important aspects of every organization, and itC(crucial forHsucces9tprojects. So, handling informaIt through too many lines raisesPchanc�<misunderstandingWt X ©X�>software development is a team activity. Success and failure is	&su	(or failure.ot } ª}�^we can say that knowledge answers the question “what” about something, while understanding 	EJD y.”�t � «��I“Software projects fail when you don’t understand the business domain +Fxworking within well enough. Typis not	FPottleneck for deliver% a� duct; codis3�easy part of development. [...] [C]reating and keep  useful s�modelEthe d	�<that can fulfill�$-use cases�$difficult �$. However,Omore%>,invest in un1@�your]~@e better equipped) w� e9�!itryIto� if�Pto solve its inherentr,problems.”�t � ¬���Collaboration with domain experts is at the core of DDD, which coined the term “knowledge crunching” to express it. “Knowled.) m�the art of distilling relevant inform	�from0problem��in order to build a useful model that can fulfillEneedswTbusiness use cases.”�t � ­��}In our experience, we have found that the best way to achieve understanding is by asking questions. Never be afraid to ask que"One ofg0most powerful$  v8sk for reachingF @very simple: WHY?�	t � ®��XFrom this point-of-view, synchronous dependencies between services imply that the calling  blocks�execution and waits for a response fr�	GedF�efore continuing. Very similar tobXconcepts of Connascence E}Order�:# Timing,)kind8�y is vutro(,ightly coupl� t�r withLd. It does not scale	Lwell,�=I s)]p may be impacted by errors in19',. In systems	�Xhigh availability as on%qnon-func!�<al requirements,6 communica+!�desir�TA powerful alternative1�.MapproachC a. 6a us!da publish/subscribe messag	��E�!�ario�IB&-LsiE�Qes itsMpe about a domain event occurrDA�M| e-Zoth!�(ork (unrela!�to	�!Iest).!� i)� ba
NA�: 4after it sendse qIQ# ieprovesEF-�. Probl!� ia^	��do%�break )*)	Vwhen ot�\s are temporarily brokenVY ma	b!I l%�complete!�rocessly, butE� c:.1+o!�$elf. Thus,Q.4U	�2�  m�1dee�ed, pre ng	autonomy_ e downsiduVg  soluq t��(it increase��8infrastructural� xa{of�I� becauseBA.ireA�chanismsAJAE{handlQ�es. Fur!�more	�designbflow.� sq4omes essential)�Epata�!�$used heavi!�A�"can mov��!� x�into anA. a-�# difficult�0monitor, open!��zdoorE�4unwanted risks6t 6 ¯6|Remember, with great power comes8responsibility.Jt I °I�What a childish concept; it wasn’t my code or his	<– it was ours.Lt J ±J�Software development is a learning process, working code $,side effect.�t � ²��One of the things I see people havingLhardest time with is�midea that microser‐ vices should not share databases. If one service wants to access data held by another se- ,yn iVa$go and ask	�Ufor+  w/<needs. This give	��.Hability to decide w� i�aredlPhidden. It also allowX!H�map from internal implementation details, which can change �dvarious arbitrary reasons,]�a more stable public contract, ensuring!se	��faces. H)�C between5 s!�essential if we want independent deployab%G—iIbW aP4 exposes keeps	�ing,A�$s will hav1ripA�Heffect causing otheU s!need8change as well.�t � ³��CDon’t share databases, unless you really have to. And even then dorything0�can to avoid it. In my opinion, it’s one of the worst tB	sCdo ifQ ’re tryaY�chieve independent deploya‐ bility.�t � ´��If you know PHP best, start building services with PHP!1 Don’t be part of the problem! Choose the approach that works for you, and change things to address problems as and when you see them.kt s µslCoupling speaks to how changone th
$requires a	de in another; cohesion talGPwe group related code�t � ¶��Smaller releases make for less risk. There is ltto go wrong. If something does, work0out what went	9 and howM�fix it is easier because we changedy. FindQways:Hreduce the size of � g�toheart�continuous delivery, which espouses1$importance60fast feedback�e-on-dem�!ods%+ s-T�copF8 ,�>safer-to roll!5 ,9�er ��Cwe’ll get. My own interest in microservices comes from a pre‐ vi! focus on J<—I was lookingE(architectur%,Xat made adop‐ tion ofNP  easier.0t , ·,�Bounded contexts hide implementation detail.�t � ¸��microservices are independently deployable &‐ *�Imodeled around a business domain. They communicate with each other via netS�@works. We use the principles of information hiding together with 	uP-driven design to cre{� i� w-stable b�(aries that �easier:� on5�%0, and we do w8we canreduc	�Xmany forms of coupling.�t � ¹�|You should be thinking of migrat�to a microservice architecture in order((chieve someMpg that you can’t currently -with#r exiss\sys‐ tem architecture.�t � º��<You also risk falling into a cargo cult mentality, just assum+�Gthat “If microservices are good for Netflix, they’re good for us!”�t � »��eA real startup is likely a small organization with limited funding, which needs to focus all its atten=on fi3D the right fit for+�product. Microservices primarily solve =sorts of4blems �$s have onc)<y’ve found tha	qwith��ir cus‐ tomer base. Put a different way, mi.� (are a great of�in	�F� ,you’ll get	�you �initi!�,uccess as a �$. So focus'Tly on being a success!Pt N ¼N�Doing microservices just because everyone else is d2Tit is a terrible idea.t  ½<Trust is earned.Qt N ¾N�Focusing initially on small, easy, low-hang&xfruit will help build momentum.�t � ¿��Once you’ve got some success, it becomes important not to sit on your laurels. Quick wins might be the only wins if you don’t continue to push on. It’s ims2Xpause and reflect after�es (,failures) so8�can think about how to keep driving the change.et c Àc�FIf you do a big-bang rewrite, the only thing you’re guaranteed of is =  =D. —Martin Fowler[t V ÁV�UIf you make a small change, it’s much easier to spot (and fix) a problem you create.�t � Â��Take inspiration from what other organizals have done, absolutely, but0’t assume tC wlorked for someone else will @ in your context.�t � Ã��The right answer could be to bring new people into the team that have the skills you need. Rather than helping the developers learn more about Kafka, you c�hhire a Kafka expert to joinkr �. This�solv�Thort-term problem, and8�0n have an in-G`,who can help) i! lleagues �@in this area too.�t � Ä��XMistakes are inevitable, so if accepting that as a given, you should aim to make small miWhrather than big ones. BreakV�a transi‐ tion to a microservice architectu�toc`incremental steps ensuresm t the misY�we m�will beFhand easier to recover from.�t � Å�hIn the context of software,�Rparallel here is to have our new system initially be sup‐ ported by, and wrapping	YexistingA$. The ideaehatold <�ncan co<, giving�time�4grow and poten�	,rely replace=e	=	�(key benefitI�this pattern, as we’ll see shortly,�(it supports%$goal!Wallow�`for incremental migrationl a�� Moreover,Vgives us�(abil‐ ity7pause� even stop'\altogethM8while still tak� advantage�1m	�D delivered so far.Ht C ÆC�BNGINX allows you to use code written in Lua to add custom behavior.�t � Ç��}When migrating functionality, try to eliminate any changes in the behavior being moved—delay new features or bug fixes untilAmig~�on is complete if you can. Otherwise,$may reducer abi��,roll back ch	�8to your system.ht c Èc�btrunk-based development (where changes are made directly on the main line and branches are avoided)�t � É��One of the real problems associated with "use-�Ifeature flags is leaving old ones lying around—don’t do that! Remove fAyou "�need anymore to keep things simple.�t � Ê��I think direct sharing of a database is appropriate for a microservice architecture in only two situations. The first is when considering read-only static reference data.Qt T ËT�Keep schema separation where you think 
8may have servic p00in the future�t � Ì��If your microservices use shared libraries, remember that7< have to accept might	`different versions of theZ`y deployed in production!�t � Í��OStrongly consider implementing log aggregation as the first thing you do before 2> �Xa microservice architecture. It’s incredibly useful, and is a good test of your organiz� �?$ability to�$ change in�oper1al spac|$ suggest i	� tJ� 4should do when	_‐ 1n� Wt X ÎXlNames should explain things 
Te terms of the context,y are in, no, caller’s.�t � Ï�tValidate early, and return as �< as possible. Put the exceptional cases inside if statements Pxtry to put your happy path outs54of the blocks.�t � Ð��[Tests assure you that a fixed bug will remain fixed and it won’t appear again. Every time Ofix aHX, adding a test for it,	_make �Y@have to deal with	��m�, ever. Otherwise, who knows when ano changeYtrigge�	I? -(re critical�saverL8used like that.�t � Ñ�hOne of my managers had thispual technique to ensure that $lteam wrote reliable tests: HDmoved random lineso`code from the production an2Htest again. If your s passed,	�@meant you failed.Rt M ÒM�LConcurrency measures how many clients your system can serve at the same time.�t � Ó��>Performance measures how long it takes to process a request or  eB� a certain task, whereas scalability 2b pmuch we can grow (or shrink).xt v Ôv,GeoDNS is a 	�service that allows domain names to be resolved�IP addresses based on the location of the customer.it w ÕwLEdge cache is a HTTP�server located near the customer, allowing . 0 to partiallyK 0HTTP traffic.�t � Ö���Overengineering usually happens when people try to do the right thing, but choose the wrong perspective or assume too much about future needs. I encourage you to ask yourself “What tradeoffs am I making here?” or “Will I rea�need� s"Pand work closely with�Pbusiness stakeholders� better un tAxthe biggest risks and unknowns.�t � ×��iCoupling is a measure of how much two components know about and depend on one another. The higher the coupf, strong dA,ency. Loose -�L refers to a situation where different components know as little as necessary�each � ,	I$ osbetween.� that�y ar�4mpletely unawa)-W8’s existence.�t � Ø��XWhen designing a class, first consider what functionality your clients really need and thWfine� minimal interface as the contract.�t � Ù��RDrawing diagrams is a must-have skill for every architect and technical leader. Dia	HLsummarize knowledge,	4�hey truly are worth a thousand words.#t  ÚxPromoting Single Responsibility8t 4 Û4�Keep class length below two to four screens of code.Lt J ÜJ�Ensure that a class depends on no mor |n five other interfaces/classes.4t 0 Ý0�Ensure that a class has a specific goal/purpose.�t � Þ�xSummarize the responsibility of�class in a single sentence and put it	 4comment on top6A tname. If you find it hard to s2� 	r6�  ,/Dusually means thatN r1 does more,n one thing.�t � ß��Inversion of control (IOC) is a method of removing responsibilities from a class to make it simpler and less coupled to the rest of the system. At its core, invF� $is not hav��>to know who will create and use your objects, how, or when. It �bout beNas dumb> oblivious possible, h6{ less� a good thJLfor software design.�t � à��<In short, keep all your web servers stateless, both front-end& a.ice,ers. KeepingG  will letk` scale them easily by add;,more clones.�t � á��LCAP theorem which stated that it was impossible to build a distributed system	5�would simultaneously guarantee consistency, availabilitxnd partition tolerance. In this�, R~ ZPs of nodes (servers) [network(necd(s allowing 	1to talk0each other. C� ensure�at?ntheAsee,same data attime. A�9Rny1 l	U can �h client requests even when ��4fail. Finally,NR6� �-�koperate ] i!ze face�1Cc%wher!�mmunica!U between�4is impossible.tt � â�<Always consider �to reduce the number of possible cache keys. The fewer * ,B4better for you)(efficiency.�t � ã�`Bundling CSS and JS filespublish �Cthem under unique URLs gives you two important benefits: your staticZlcan be cached forever by any	Ps (browsers, proxies,�,CDN servers)	|R4have multiple !ions of� same0 available to=,r clients at�dpoint in time. This allows/6maximize r	�$ hit ratio�,makes deploy!>new cod�0ch easier. IfB'ed a(��$JavaScript	� by replacXan exist URL, some�who h!an old>Z LHTML page might load%-�>w ADget errors. By rel�ng1�%r s.�I5new�s,�<guarantee that u!�%�(always down�compati!�.a � ,A� ,�:� s.st y äy�A content delivery network (CDN) is a distributedTof cache servers that :Hin a similar way as,,ing proxies.�t � å��@One of the most important things to remember about caching is tha)(e higher upJHcall stack you can 5e,lmore resources you can save.�t � æ��If you can cache an entire page fragment,'Dwill save more tim14d resources thJ�Fing just the database query that was used to render this page fragment.�t � ç�|Engineers tend to think alike, a�hey often create similar solutions toDproblems. When the(ve.Dbe successful overl		�gain, we call it a pattern, but wBY is rep�0dly difficult�4maintain or ex�6[ n anti-a(. A typical2 ba � that seems like a good idea at first	�! Dlonger you use it,(more issuesdisc%lwith it. By getting familiar	.� s,>should!Yable�,easily avoidqm i�0e future—it��h a vaccina!� a!�Xst a common design bug.&t ) è)`Hope for the best, preparworst._t Z éZ�YLean Startup advocates minimal viable product (MVP) development and a quick feedback loop.�t � ê��[An exchange is just an abstract named endpoint to which publishers address their messages. P#`do not have to know topic`$s or queueasM ye me	T< e�<s. Consumers, on24 other hand, c	=,from queues.�t � ë��Publishers have to know the location ofDmessage broker andname #0exchange, buty do not6^ Panything else. Once a`is p� d�anXPRabbitMQ applies routKrules� sends cop��to all	=,cable queues�' s!ear in , consum!)can� m without%:ing�<about exchanges.�t � ì��<First of all, to understand EDA (event driven arch), you need0�stop thinking about software in termsa requests [lresponses. Instead, you haveVQNcomponen;nouncj"gs that 6@already happened.�t � í��OA full table scan is often the term used for this type of search, as you need to	DHthe entire data setfindrow that:<are looking for.�t � î��XBig O notation is a way to compare algorithms and estimate their cost. In simple terms, B6X �tells you how the amount of work changes assize*input!. Imaginat �%number3rows inm,r data set (%V )�:� express! e� s(�Y8executing your 5 over t�o. Whe� se� e._ 0O(n), it meandat doubl\��rS roughly	*:� )��on�� ^2B�  a%�=:� e%S� ,m% g%k\quadratically (much fast)$n linear).�t � ï��A compound index, also known as a	 site!is an	H that contains more\n one field. You can use	Ll�[es to increase search efficiency where cardinality or distribution of values of individual f| s�<not good enough.�t � ð��To be able to model data in NoSQL	�Fstores and access it efficiently, you need to change the way you design&�r schema. Rather than starting with	tin mind,5[(	%8queries in mindst r ñrtAn inverted index is a type of�Lthat allows you to search for phrases or individual words (full text search).�t � ò��uWith the safety net of automated tests, your teams can become what Robert C. Martin calls fearless engineers. Fearless� are not afraid to make changes. They control�ir softw8and0y have legiti�0 fidence t�bug	jdetec�beforey	qdtheir way into production.*t & ó&�Key-value data stores: Dynamo and RiakCt > ô>�=Document oriented data stores: MongoDB, CouchDB, and Couchbase>t : õ:�Wide columnar data stores: BigTable, Cassandra, and HBase.�t � ö��By staying close to our users and by show"�them progress in small pieces, we had found a wayNPbe successful withoutK beautiXrequirements documents.5t 1 ÷1�Software requirements is a communication problem.Nt N øN�the key is that stories should be written so "2\customer can value them.@t J ùJ�it is better to have more stories than <t are too large.�t � ú��Rather than writing all these details as stories,T better approach is foF3Dvelopment team and4customl\o discuss these details.kt f ûf�ethe developers will estimate how much work they'll be able to do per iteration. We call this velocity.3t / ü/�A release is made up of one or more iterations.�t � ý��Acceptance testing is the process of verify�that stories were developed such !Deach works exactlyRwa	�customer team expected it to work.Mt J þJ`Dependencies between stor�lead to prioritization and planning problems.et m ÿm�What you want to avoid are stories that�only valued by developers. For example,C?(like these::t > Ā>�All connections to the database are through a* pool.Jt G āGhAll error handling and logg�is done through a set of common classes.�t � Ă�4Accept the fac	�[at you simply can’t learn everything. Remember, desires are endless; needs are limited. AcJl �newer is not always better. ThereW�people working with ancient programming languag�(nd still ma4ta lot of money. Practice daily%subtlq(sayl@‘no’. No to t!"�$st library2  f�Lr platform. Say more	Kes’ so%fcanh y	to wbTreally matters to you.Ft A ăA�@what problem is this new technology or framework trying to solve?�t � Ą��If you decide to become a great developer, it’s important.��understand core concepts such as algorithms, logic, network, accessibility, security, and user experience. You don’t necessarily need them�build�\r first app, but knowing	* will help+5Lthe next ten complex? lications,: c!<e in the future.Ct B ąB�“If you really want to learn something,$have,teach it”.�t � Ć��One way of truly knowing a concept or technology is try"�ito create a practical project. Another very effective method is when you try to explain it to someone else�t � ć��“Everything that needs to be said has already been �. But, since no one was listening, evYmustPdagain.” ― Austin Kleon�t  Ĉ|you can’t win in programming,  �W only keep evolving the software to be better, more scalable, and more useful every day.�t � ĉ�hDon’t try to be clever, d6 4code something,Hmake you feel smart8<need+hshow off all the new tricks08just learned. J8write readable �. Think about maintainability, and use meaningful names forfLr classes, functions	6varif,s. Next time2T start developing, ask8rself this quesL : “Will�futur� underst��inten0@ of this code?”�t ~ Ċ~�}However, I truly believe that if you want to have a successful career in tech, you need to invest extra hours into your craft.et f ċfhThe better you understand tusiness,,more capable.�will be to solve those problems yourself.�t � Č�,Every indust	�s different, so there’s no recipe to follow when it comes4better knowing>h business side. However, myP4ommendation isC$start with?Pvocabulary. Pay atten/ t�� specific words and terms used byF�Pfolks. If you emulate#same:inology,�unicas��m will be much more effective. Once` s�read!�consum5con� about3r 1� ,	h@naturally develop	=@domain knowledge.�t � č��^One misconception many people have is that we need to listen to reply, whereas in reality, we nB0 0understand. U$ing someonoDfar more important�n rm,to/. Any7 c , few(understand.@t = Ď=�The greatest of all weaknesses is the fear 4ppearing weak.-t ) ď)�Provide Options, Don't Make Lame Excuses.�t � Đ��iDon't leave "broken windows" (bad designs, wrong decisions, or poor code) unrepaired. Fix each one as soondit is discovered. If there\insufficient time to fix7 properly,/n board\up. Perhaps you can commCout.( offending � ,�Ldisplay a "Not Imple4$ed" messag	(Psubstitute dummy data�Ttead. Take some action�prev~Dfurther damage and show that�'re 5p o%( situation.�t � đ��@Broken Window Theory, people lose the will to fight entropy becau	" y perceiv0Pat no one else cares.\� frog just doesn't notice the change.rt n Ēn�UStriving to better, oft we mar what's well. (Daha iyisi için çabalarken çoğu zaman%L olanıda bozarız.)vt u ēu(If you give	�Cr users something to play with early, their feedback will often leadH7da better eventual solution<t 9 Ĕ9�An investment in knowledge always pDthe best interest.�t � ĕ��This is a very dynamic industry. That hot technology you started investigating last month might be stone cold by now. Maybe you need to brush up on that database tecxthat }(haven't use�L a while. Or perhaps(could�Pbetter positioned for	PDnew job opening if; tried out	&Dother language....�t � Ė��Learn at least one new language every year. Differentts solve the same problems in d/ways. Bye0rning several$|approaches, you can help broadendr thinking and avoid gettiS4tuck in a rut.2t . ė.�Once you're in the habit, read a book a month.�t � Ę��It is important to remember that computers are used by people—people whose needs you are trying to satisfy. Don't forget the human side of the equation.�t � ę��ULook for interesting courses at your local community college or university, or perhaps:�the next trade show that comes to town.�t � Ě��Don't just go and listen, but actively participate. Isolation can be deadly to your career; find out what people are working on outside of your company.�t � ě��yIf you've worked only in Windows, play with Unix at home (the freely available Linux is perfect for this). If you've used ilmakefiles and an editor, tryIDE,(vice versa.�t � Ĝ��Stay current. Subscribe to trade magazines and other journals (see page 262 for recommendations). Choose some that cover technology different from that of your current project.Zt X ĝX�Sit back and be patient. People are busy,!�it may take days to get a specific answer.�t � Ğ�THaving the best ideas,fincode, or�Zmost pragmatic thinking is ultimately sterile unless you can communicate with other people.Vt \ ğ\�There's one technique that you must use if Pwant people to listen
you:them.�t � Ġ��eEncourage people to talk by asking questions, or have them summarize what you tell them. Turn the meetGtinto a dialog, and you'll make�r point more effectively. Who knows, ghmight even learn something.�t � ġ��Always respond to e-mails and voice m0, even if the0hse is simply "I'll get backJ�you later." Keeping people informed makesS@m far more forgiv.of@ occasional slip,�mak:eel thatsXhaven't forgotten them.~t � Ģ�lUnless you work in a vacuum,8need to be able�communicate. The more effective that %ion, t'Xinfluential you become.�t � ģ��LMost people assume that maintenance begins when an application is released, t>9 lmeans fixing bugs and enhanc\features. We think these�Tre wrong. Programmers 0constantly in2� 8mode. Our under& dm4changes day by@. New requirement[riv!
0 we're design?or codi�erhaps� environ>b$. Whatever"reason,2� tis not a discrete activity, bu8routine part ofJenti�Dvelopment process.�t � Ĥ���With a bit of ingenuity you can normally remove the need for duplication. Often the answer is to write a simple filter or code generator.Pt K ĥK�JSometimes, duplication comes about as the result of mistakes in the design.�t � Ħ��Where possible, always use accessor functions to read and write the attributes of objects.[1] It will make it easier to add functionality, such as caching, in the future.�t � ħ��RImpatient duplication is an easy form to detect and handle, but it takes discipline$0a willingness@Hspend time up front8ave pain later.`t _ Ĩ_hif it isn't easy, people wo|do it. And if you fail to reuse,hrisk duplicating knowledge.�t � ĩ��uWe want to design components that are self-contained: independent, and with a single, well-defined purpose. When compo	_�are isolated from one another, you know	�$can change*u�out having to worry about the rest. As long as Fdon'tH t��X's external interfaces,}be,fortable	=S w	S,ause problem->ripp*rough�4entire system.^t Y ĪY�XThe more loosely coupled your systems, the easier they are to reconfigure and reengineer.�t � ī��An orthogonal approach reduces the risks inherent in any development. Diseased sections of code are isolated. If a module is sick, it is less likely to spread the symptoms around the rest of the system. It is also easier to slice it out and transplant in something new and healthy.�t � Ĭ��When teams are organized with lots of overlap, members ,�{confused about responsibilities. Every change needs a meeting of the entire team, because any one of them might be affected.�t � ĭ�xAlso ask yourself how decoupled�u design is from changes in the real world. Are you using a telephone number as a customer identifier? What happens whe	]�phone company reassigns area codes? Don't rely on�Lproperties of things�8 can't control.�t � Į��Keep your code decoupled. Write shy�—modules that don't reveal anything unnecessary to other 8and6< ly on 2% D' implementations.�t � į��Get into the habit of being constantly critical��your code. Look for any opportunities to reorganize it to improve its structure and orthogonality. This process is called refactoring,Ht E İE�Nothing is more dangerous than an idea if it'Le only one you have.�t � ı�TPrototyping is a learn�experience. Its value lies not in the code produced, bulessons	Q@ed. That's really=Ppoint of prototyping.�t � Ĳ��>Computer languages influence how you think about a problem, andR# Pcommunicating. Every `�Ues with a list of features—buzzwords such as static versus dynamic typing, early verTlate binding, inherita�Tmodels (single, multip
4or none)—all�8which may sugge��r obscure certain solutions. Designing a 	��Lisp in mind will produce different results than A@based on C-style %��and vice%a. Con!ely, w-8 more importantthe 5�of-� dom��also� a"Dgramming solution.mt z ĳz�Tools amplify your talent. The better+, and t2 < know how to usem,l more productive you can be.Rt M ĴM�Lyou can't be a great programmer until you become highly skilled at Debugging.7t 4 ĵ4�All software becomes legacy as soon0it's written.#t  ĶxUse the Power of Command Shells"t  ķtAlways Use Source Code Control"t  ĸtFix the Problem, Not the Blameht c Ĺc�bIt doesn't really matter whether the bug is your fault or someone else's. It is still your problem./t + ĺ+�The easiest person to deceive is one's selfct ^ Ļ^�]Always try to discover the root cause of a problem, not just this particular appearance of it.ut s ļs�You may need to interview the user who report#8he bug in order4�gather more data than you were initially given.�t � Ľ���Artificial tests (such as the programmer's single brush stroke from bottom to top) don't exercise enough of an application. You must brutally test both boundary conditions and realistic end-user usage patterns	Wneed��do this systematically (see Ruthless Testing).|t z ľz�UA very simple but particularly useful technique for finding the cause of a problem is O8y to explain it,someone else�t  Ŀ�It is possible that a bug exists in the OS,�Ncompiler, or a third-party product—but this should not be your first thought.t  ŀdDon't Assume It—Prove It�t � Ł�TFinally, if the bug is�result of someone's wrong assumption, discuss2,problem with(whole team:adone person misunderstands,.xn it's possible many people do.�t � ł��eUnix developers often like to use the power of their command shells, augmented with tools such as awk -�ed. Learn a Text Manipulation Languaget  ŃhWrite Code That Writes CodeFt D ńD�Keep the input format simple, andtcode generator becomes simple.�t � Ņ��You can use code generators to write just about any output: HTML, XML, plain text—any text that might be an input somewhere else in your project.$t   ņ |You Can't Write Perfect Softwaremt h Ňh�gJava keyword final to indicate our intentions that the parameter shouldn't be changed within the method.Xt S ňS�Ryou can get much greater benefit by having the compiler check your contract for you�t � ŉ��when your code discovers that something	�was supposed to be impossible just happened, U�program is no longer viable. Anyt]�<it does from this point forward becomes suspect, so terminate>�oon�$. A dead p�normally	k@a lot less damage�@n a crippled one.>t : Ŋ:�If It Can't Happen, Use Assertions to Ensure That It Won'tot j ŋj�iwe suggested that it is good practice to check for every possible error—particularly the unexpected ones�t � Ō��However, many developers have no consistent plan for dealing with resource allocation and deallocation. So let us suggest a simple tip: Tip 35 Finish What You Start�t � ō��XThe class represents a resource, the constructor gives you a particular object of that re	@$ type, andIdesHremoJHit from your scope.�t � Ŏ��uBecause Pragmatic Programmers trust no one, including ourselves, we feel that it is always a good idea to build code t,@actually checks tXresources are indeed fr4appropriately.�t | ŏ|�OA good way to stay flexible is to write less code. Changing code leaves you open2�the possibility of introducing new bugs.�t � Ő��we suggested that writing "shy" code is beneficial. But�works two ways: don't reveal yourself to others, and 	%tinteract with too many people.wt } ő}�@If n objects all know about each other, then a change to just one=D can result in the	: n 1#Ds needing changes.t  ŒdConfigure, Don't Integrateet d œd�program for the general case, and put�specifics somewhere else—outside AHcompiled code base.et ` Ŕ`�_we recommend representing configuration metadata in plain text—it makes life that much easier.�t � ŕ��Without metadata, your code is not as adaptable or flexible as it could be. Is this a bad thing? Well, out here in the real world, species that don't adapt die.@t ? Ŗ?dDon't let your project (or	xcareer) go the way of the dodo.�t � ŗ��We need to allow for concurrency an�[think about decoupling any time or order dependencies. In doing so, we can gain flexibility creduceP-based .M  in mphareas of development: workf�xanalysis, architecture, design,�(deployment.!t  ŘpAlways Design for Concurrencyt z řz�yIf we design to allow for concurrency, we can more easily meet scalability or performance requirements when the time comes�t � Ś��Objects should be able to register Pceive only the events(y need, andEneverKsent2+ don't1. Wewantq<spam our objects�t � ś��RSomething that should be in the back of your mind whenever you're producing code is	J�ll someday have to test it. Make code easy , and<increase�(likelihood �lit will actually get tested,\t b Ŝb�Fred doesn't know why the code is failing because he didn./ ,it worked in<,first place.�t � ŝ���It may not really be working—it might just look like it is. The boundary condition you rely on may be just an accident. In different circumstances (a different screen resolution, perhaps), it m�behave dR<ly. Undocumented	!ior�xchange with the next release of0library. Addi�8al and unnecess�dalls make your code slower28 	( also incrgxriskp�introducing new bugs of their own.�t � Ş�lAlways be aware of what you �udoing. Fred let things get slowly out of hand, until he ended up boiled, like the frog in Stone Soup and Boiled Frogs.it d şd�cSo next time something seems to work, but you don't know why, make sure it isn't just a coincidence.Wt R ŠR�Qestimating the resources that algorithms use—time, processor, memory, and so on.)t % š%�Estimate the Order of Your Algorithms�t � Ţ��You also need to be pragmatic about choosing appropriate algorithms—the fastest one is not always the best for the job. Given a small input set, a straightforward insertion sort will perform just as well as a quicksort, and will take you less time to write and debug.�t � ţ��As a program evolves, it will become necessary to rethink earlier decisions and rework portions of the code. This process is perfectly natural. Code needs to ev�d; it's not a static thing.�t � Ť��When you come across a stumbling block because the code doesn't quite fit anymore, or you notice two things that should really be merged, or anyt+L else at all strikes�as be��"wrong," don't hesitate to change it�t � ť��CKeep track of the things that need to be refactored. If you can't re	 some=T immediately, make surZLat it gets placed onu(schedule. M6/ users �Daffected code know	�it isDF�  and h.Pis might affect them.�t � Ŧ��+Take short, deliberate steps: move a field from one class to another, fuse two similar methods into a superclass. Refactoring often involves making many localized changes that result in a larger-scale change. If you keep your steps small, and test after each step, you will avoid prolonged debugging.�t � ŧ��Iif the code broke once, it is likely to break again. Don't just throw awayHPtest you created; addMto Hexisting unit test.�t � Ũ��All software you write will be tested—if not by%and8r team, then byL eventual users—so+T might as well plan on`xing it thoroughly: Test Your So	�, or	$Users Will�t � ũ��uBut unless Joe actually understands the code that has been produced on his behalf, he's fooling himself. He's programm8by coincidence.Ut n Ūn�Perfection is achieved, not when there isLhing left to add, bu~' 0take away....�t � ū��^Documenting the reasons behind requirements will give your team invaluable information when makW$daily implH<ation decisions.Vt w Ŭw�Requirements are not architecture. R# (design, nor7they4 user interfacR> eed.)t % ŭ%�Abstractions Live Longer than Details�t � Ů��UCreate and maintain a project glossary—one place that defines all the specific termsP<vocabulary used .Z D. All participantsI{$, from end=drs to support staff, shoul  9�*Hensure consistency.�t � ů�XSometimes you will find�rself working on a problem that seems much harder n:l thought it should be. Maybe$feels like.|'re going down the wrong path—m�there must be an easier way than this!�t � Ű��As a developer, you've been doing the same kind of thdurPyour entire career. YDtry'4 s and see,which worked	didn't6D  accumulat8$experience	6(isdom. When�, feel a nagg/ doubt, or.9 ,some reluctaI w=`faced with a task, heed i	�X may not be able to putt�r finger on exactly what's wrong, but give it tim	�%;�|s will probably crystallize into�%C, more solid,`you can address. Software1�0ment is still�a sc%G. Le�Hinstincts contribut��,performance.;t 7 ű7�Good developers tend to be passionate about their work.`t [ Ų[�ZA great way to ensure both consistency and accuracy is to automate everything the team doesit f ųf�>Civilization advances by extending the number of important oper8�s we can perform without thinking.�t � Ŵ��When you don't run tests regularly,�nmay discover that the application broke due to a code change made three months ago. Good luck finding that one.6t ; ŵ;�Misleading information is worse than no2 at all.�t � Ŷ��Most developers hate testing. They tend to �� gently, subconsciously knowing where the code will break and avoiding the weak spots. Pragmatic Programmers are different. We are driven to find our bugs now, so we don't have to endure the shame of others finding our bugs later.,t ( ŷ(�Coding Ain't Done 'Til All the Tests Run�t � Ÿ�dIf the parts don't work bymselves,,y probably w(Lwell together. All o	S�modules you are using must pass their own unit tests before4,can proceed.�t � Ź��Usability testing is different from the types of 'Ldiscussed so far. It<|performed with real users, under	`environmental conditions.jt { ź{�(Not only do we want our own tools to fit$hands, but,the(Dwe create for user<their	>$ as well.)ht � Ż��Because we can't write perfect software, it follows that Z1 tes6H either. We need to	!$the tests.*t & ż&�Test State Coverage, Not Code CoverageLt Z ŽZ�Once a human tester finds a bug, it should be the last timeV7  that bug.2t . ž.�The palest ink is better than the best memory.�t � ſ��qIn general, comments should discuss why something is done, its purpose and its goal. The code already shows how itAsoshing on this is redundant—Z�s a violation of the DRY principle.Dt ? ƀ?�>a document's presentation should be independent of its content.�t � Ɓ��iDocumentation and code are different views of the same underlying model, but the view is all that should bQ0. Don't let d2� �become a second-class citizen, banished from ohmain project workflow. Trea>\ with� c�you t+�, ! Vusers (a�tainers who follow) will sing your praises.�t � Ƃ��UIn reality, the success of a project is measured by how well it meets the expectations?,its users. AJ<that falls belowtir 2< tis deemed a failure, no matter~good;, deliverable8Din absolute terms.�t � ƃ��ePragmatic Programmers don't shirk from responsibility. Instead, we rejoice in accepting challenges and�making our expertise well known. IfNarRn@le for a design, 4piece of code,5do a job�can be proud of. Tip: Sign Your Work#t  Ƅx$ git checkout -b <branch ismi>)t % ƅ%�Yeni bir branch açıp, ona geçiyor.t  Ɔ<$ git stash listt  Ƈ8$ git stash popGt B ƈB�AEn son değişikliğin Stash’den silinerek dala geri yüklenmesit  Ɖh$ git stash apply stash@{0}Ht C ƊC�BEn son değişikliğin Stash’den silinmeden dala geri yüklenmesit  Ƌd$ git stash drop stash@{2}8t 4 ƌ4�Stashdeki bir değişikliğin yüklenmeden silinmesi�t � ƍ���Birleştirme için dal>merge>master şeklinde bir işlem sırası var ve bunun komutu da merge. Hangi dala (hedef dal) entegre edecekseniz öncelikle git checkout komutu ile o dalı aktif hale ge�llisiniz. Daha sonra da hedef�da iken Z m�L <kaynak_dal_adı> k	�ile�9,yapabiliriz.Yt _ Ǝ_�Rebase işlemi uzaktaki ana dalınız ile yerenel6 |ın birleştirilmesi işlemidir.%t ! Ə!�$ git pull --rebase origin master*t & Ɛ&�Son COMMIT Açıklamasını Düzeltmek,t ( Ƒ(�# Son commit işlemini tekrarlamak içint  ƒDgit commit --amendXt U ƓUx# Son commit işlemini içeriğ�değiştirmeden sadece mesajını düzeltmek içint  ƔPgit commit --amend -mgt c ƕcx# Son commit işlemini içeriğ�?düzeltmek değişikliklerinizi yaptıktan sonrası sırası ilet  Ɩ,git add -A .t  ƗDgit commit --amendt  ƘD# git reset --hard?t ; ƙ;�Tüm dosyalardaki değişikliği tek kodla geri almak için/t + ƚ+�Commit edilen bir değişikliği geri almak4t 4 ƛ4,git revert <�ettiğiniz commitin hash değeri>�t � Ɯ��@The first thing you need to know is that Puppeteer was not create*\compete with Selenium. S
E@a cross-language,,browser test�4tool, whereas 6v cr	rpas a multi-purpose automationB��exploit all the power of Chromium.�t � Ɲ�XA headless browser is a�Ithat you can launch and interact with using a particular protocol over a p\communication transport,	L4no UI involved�t � ƞ�tPuppeteer is nothing more, andlless, than a Node.js package�t knows how to open a browser, send commands,Zreact,messages }Dfrom that browser.�t � Ɵ��A browser can contain more than oneext. A is a:Dsession (not to be($fused with+`window). The best exampleR�the Incognito Mode or private mode, depending on 1�h, which creates an isolated�insid�e same;  process.7t 3 Ơ3�A page is a tab in a browser or even a pop-up page.�t � ơ��LThe frame object is more important than it looks. Every page has at least one	J, whichJ8called the main	 . ex.A.click& s!,frame.click.�t � Ƣ���The execution context is a mechanism Chromium uses to isolate the page from the browser extensions. Each frame will have its own e>} @. Internally, allf f?func�0s that involv�Dng JavaScript code	puse anJ� to run` c.Hinside the browser.�t � ƣ��Service tests are also known as Integration T$. Thes1�Owill check how your code interacts with other components. When we talk about com, we areing 	!4the following:t  Ƥ0• Databases#t  ƥx• Other components in the appt  ƦP• External services t  ƧlPuppeteer.launch func params�t � ƨ�tignoreHTTPSErrors: Whether to 	   e h during navigation. This op�^ will become handy when you want to automate websites with invalid or missing SSL certificates.Tt P ƩP�<slowMo: Slows down Puppeteer operations by the specified numb#8f milliseconds.:t 9 ƪ9da viewport is the visible ion of<entire document.�t � ƫ��<networkidle0 will resolve the promise when there are no more =< connections for	;,ast 500ms. O=0 other hand, ;x 2�x than 2D~ �t � Ƭ��<HTML5 brought a new kind of container element: The Semantic E	s. goal6these se%a@Hs is to communicate/ type;qent e	]<ains. So, instea��using DIVs for everything, developers should start 	3ZDs such as <header>H the site 	, <foot. 	, <nav40navigation op,s, <articles	'Pblog posts, and so on)=purpos%)@�)2Phelp external tools (�screen r�<s, search engineleven[4 same browser)!�underst��0HTML content.�t � ƭ��OPuppeteer provides two functions to get elements from the page. The $(selector) 9  will run,docu?.queryS.f$ and retur	/first e	s< matching that s=0or null if no-0s were found.	�ޞ All� ,��(an array ofv� e2� an empty4f� �t � Ʈ��O$x('//div/a'), which would mean "Bring me all the div elements, and from there a% a#� that are a direct child of those divs.%t ! Ư!�Selector: [@attributeName=value].#t  ưx$x('//div[@class="card-body"]')t  Ʊ`Selector: [text()=value].'t # Ʋ#�Selector:[contains(text(), value)]._t d Ƴd4Promise.all wiait for  p	8s to finish. It	)Lalso resolve as soonDone promise fails.Mt H ƴH�GWhatever you undertake, act with prudence and consider the consequences.�t � Ƶ��ITechnical debt is like a loan: you benefit from it in the short term, but +Xhave to pay interest on6until	Tis fully paid off. Pay	 te2� as soonxpossible. It would be imprudentt0do otherwise.Mt H ƶH�GWE ALL TEND TO ASSUME THAT OTHER PEOPLE THiNK LiKE US. But they don’t.�t � Ʒ��The best way to find out how a user thinks is!4watch one. Ask#�o complete a task using a similar piece of softwareN|hat you’re developing. Make su'he	R is a realL: “Add up a column^$numbers”0OK;(lCalculate your expenses for _\last month” is better.�t � Ƹ��RIt’s why the best way to capture requirements is to watch users. Spending an hour	ing	!3Xmore informative than s9$ day guess7what�y want. �� �� �� �t � ƹ��^Make sure code formatting is part of the build process, so that everybody runs it automatically	 l time they compile the code.ot m ƺmpUse static code analysis tool$ scan the  �<for unwanted antipatterns. If any are found, break the build.dt _ ƻ_�^Learn to configure those tools so that you can scan for your own, projectspecific antipatterns.|t � Ƽ��eDo not only measure test coverage, but automatically check the results, too. Again, break the build if6S , is too low.Kt L ƽLhBeauty of style and harmonygrac	�good rhythm depends on simplicity.�t � ƾ���If you haven’t spent time studying other people’s code, stop reading this right now and find some open source code to study. Seriously!�t � ƿ��Avoid the temptation to rewrite everything. It is best "�use as much code as possible. No matter how ugly g)�is, it has already been tested, reviewed, etc.@t < ǀ<�Many incremental changes are better than one massive change.^t Y ǁY�XAfter each development iteration, it is important to ensure that the existing tests pass.et a ǂa�IPersonal preferences and ego shouldn’t get in the way. If something isn�%Hbroken, why fix it?9t 5 ǃ5�New technology is an insufficient reason to refactor.�t � Ǆ��LRemember that humans make mistakes. Restructuring will not always guarantee tC,the new code	,�be better—or even as good as—3@previous attempt.�t � ǅ��“Always leave the campground cleaner than you f it.” If	0ind a mess onC	? ,D4 it up regardl*`f who might have made it.�t � ǆ��OYou don’t have to make every module perfect before you check it in. You simply6E �it a little bit better than when J$ed it out.�t � Ǉ��iYou might simply improve the name of one variable, or split one long function into two smaller functions. jhbreak a circular dependency^�add an interface to decouple policy from detail.t � ǈ�pthe act of leaving a mess in �code should be as socially unacceptable0littering. It4someth[Xthat just isn’t done.�t � ǉ��Given how rare compiler bugs are, you	H far better puttinghr time and energy into find",the error in	/ code than	)prov	)at.�0is wrong. All,usual debugg4dadvice applies, so isolate/\problem, stub out calls,�psurround it with tests; check)b$convention_,hared librarqland version numbers; explainYPto someone else; look�for stakorrupc	O\ariable type mismatches;try� c!EPon different machines'8build configurag�uch as)K0 and release.}t x Ǌx�wMy personal strategy to mitigate these problems is to start small by using only the tools that are absolutely necessary.�t � ǋ���I also tend to isolate the external tools from my business domain objects by means of interfaces and layering, so that I can chang	m4tool if I have�twith a minimal amount of pain.�t � ǌ���Making domain concepts explicit in your code means other programmers can gather the intent of the code much more easily than by trying to retrofit an algorithm into what they understand about a domain.at \ Ǎ\�[Make your functions short and focused on a single task. The old 24-line limit still applies.Gt B ǎB�AFunctions should have few parameters (four is a good upper bound).6t 9 Ǐ9h“If it was hard to write, should beread,”ct f ǐfDWhat of comments t�<are not technically wrong, but add no value to the code? SuchL are noiselt m Ǒm�LEach comment should add some value for the reader, otherwise it is waste thatA b-Hmoved or rewritten.?t ; ǒ;�Comments should say something code does not and cannot say.3t 0 Ǔ0TTry to express as muchTpossible through code.Bt B ǔB�Comment what the code cannot say, n	imply	%<it does not say.;t 7 Ǖ7�you need to take responsibility for your own education.�t � ǖ��Read books, magazines, blogs, Twitter feeds, and websites. If you want to go deeper into a subject, consider joining a mailing list or newsgroup.Ut S ǗS�If you really want to get immersed in a technology,hhands on—write some code.�t � ǘ��^Always try to work with a mentor, as being the top guy can hinder your education. Although you (,learn somethH0from anybody,?  &@a whole lot more -<4one smarter or	<experienced thanM. IfU ’t find�Hconsider moving on.�t � Ǚ���Use virtual mentors. Find authors and developers on the Web who you really like and read everything they write. Subscribe to their blogs.�t � ǚ��IGet to know the frameworks and libraries you use. Knowing how something wo3make	+Q hUHo use it better. IfjXy’re open source, you	Hreally in luck. Use4  debugger�,step throughcode\ee what’s going on und8Hhe hood. You’ll g)6Bwritten�(reviewed by�  �0smart people.�t � Ǜ��uWhenever you make a mistake, fix a bug, or run into a problem, try to really understand what happened. It’s likely t8someone else ra\the samec@ and posted it on"<Web. Google is r(seful here.�t � ǜ�|A good way to learn something is�teach or speak about it. When people are go5 to listen
(you and ask$questions,`’ll be highly motivated;�T. Try a lunch-’n’-X at work, a user group,�Ha local conference.�t � ǝ��FJoin or start a study group (à la patterns community) or a local user 	1 f	Language, technology,d�discipline you are interested in.Wt [ Ǟ[�Go to conferences. And if you can’t go, many )� put their talks online for free.%t ! ǟ!�Long commute? Listen to podcasts.�t � Ǡ�LFollow the advice of�CPragmatic Programmers* and learn a new language every year. At least2* �technology or tool. Branching out gives you new ideas$can use in r current.R stack.�t � ǡ��Not everything you learn has to be about technology. Le"$the domain7$’re workHin soT can better understand<0requirements $help solve <business problemx_how t�more!$ductive—work 	z—icDother good option.{t w Ǣw�^APIs are supposed to hide underlying complexity, so we can realistically expect good API designNLrequire some effort.�t � ǣ���An API should provide an expressive language, which gives the next layer above sufficient vocabulary to ask and answer useful questions.�t � Ǥ��For example, we prefer to say run instead of walk(true), even though it could be viewed as essentially the same operation, just executed at different speeds.�t � ǥ��RStarting your project with an installation process will give you time to evolve theF c)asV morough  hduct development cycle, and#chancXmakeges toapplic	�cod(^2� easier.{t � Ǧ��Putting deployment last means that the �process may need to be more complicat	�work around assumptions in the code.�t � ǧ��RTHERE ARE BASiCALLY TWO REASONS that things go wrong at runtime: technical problems	4�prevent us from using the application and b ess logic2> s ?mis'BB �t � Ǩ��Mixing technical exceptions and business hin the same hierarchy blursdistincEDconfuse	@caller about what3method* tract is,	condiJs id required to ensure beforeZing,tZsitua.= suppos	=8handle. Separat% hF�0gives clarityQincrea t&hance��N=will beg@d by some applica�$ framework�ile[ b1rdomain2�(ctually are!sidered� h�h�(lient code.�t � ǩ�`Deliberate practice means$ing someth
�you are not good at. The key [to developing expertise] is diivk :Ijust do`,it again and	
4, but challeng$lyourself with a task that is	Lbeyond )P current ability, tryF$it, analyz+@performance while	�fter�5 d correct:4any mistakes. NOdoes�meanI w�you !M-I ;�$ sR�  ,N; 2�So it’	n<necessarily fun.N� Lis about learning—)S,changes you,&B (r behavior.�t � Ǫ��Be the surgeon who isn’t afraid to cut out * ick parts�qmake room for healing. The attitude is contagious and will inspire others to start working on those cleanup projecx�@hey’ve been putting off. Keep a “hygiene” list of tasks tha	�`team feels are worthwhile��lgeneral good of the project.[t X ǫX�“a lie can travel halfway around the world while �truth is putting on its shoes,”�t � Ǭ��In summary, when writing any text in your code—whether comments, logging, dialogs, or test data—always ask yourself how it will look if it becomes public.�t � ǭ��No matter how unlikely you think an error is inr code,x should always check for it, an�handle it. Every time. You’re not saving  if^don’t;	)stor&Pup potential problemsz(the future.kt g Ǯg�RIf you ignore an error, turn a blind eye, and pretend that nothing has gone wrong, P<run great risks.3t / ǯ/�Deal with problems at the earliest opportunity.;t 7 ǰ7�Don’t Just Learn the Language, Understand Its Cultureet d Ǳd�it takes more than just learning the syntax to P a language: you needXunderstand its culture.�t � ǲ��If you instead explore new languages to4and your mind Tget fresh ideas on how%� can solve things in different ways, ywill fQ0that the codeDwrite9v0trusty old la	� gets m�Hbeautiful for every2� D4’ve learned.qt m ǳm�R“every piece of knowledge must have a single, unambiguous, authoritative represenTon within a system.”ot n Ǵn|The goal is to ensure that thereponly one way of accomplishing'0 task, and it2\as painless as possible.�t � ǵ��LFloating-point numbers are intended for efficient scientific computation. But&�cy is worthless without accuracy, so remen� the source of rounding errors, and code accordingly!ot o Ƕo�The harder you work on an open source project, the fast	/0’ll realize@�r true ambitions as a programmer.�t � Ƿ���you could start by volunteering to write test code. While that may not sound exciting, the truth is you learn much faster by writing te\� for other people’s software than almost any 	*Pactivity in software.ht r Ǹr�@It’s not enough to write tests for an API you develop; you have0unit5\code that uses your API.�t � ǹ��If someone seems like a guru, it’s because of years dedicated to learning and refining thought processes. A “guru” is simply a smart person with relentless curiosity.+t ' Ǻ'�by working less, you might achieve more�t � ǻ��^You need to spend evenings, weekends, and holidays educating yourself; therefore, you cannot spQ&  �V workT(overtime on	:<current project.�t � Ǽ���Don’t blame others or deny the bug’s very existence. Instead, ask for more information or consider what you could have missed.t  ǽhImprove Code by Removing It@t D ǾD�(Hint: Write code because it adds value, not . (muses you.)�t � ǿ�dSomeone thought that it mixbe needed in the future, so fel*<was best to code>0now. (Hint: TRXsn’t YAGNI. If you do	d it runow,writS(right now.)�t � Ȁ��XWhen you’re designing an application, be mindful of the number of interprocess communic8|s in response to each stimulus. ~analyzur�>s that suffer from poor performance, I have often found IPC-to-c r�s �ousands $one. Reducxthi*@, whether by cachw arallelizsome ot*�etechnique, will pay off much more than changing data structure choice or tweaking a sorting algorithm.�t � ȁ��To make warnings useful again, I try tol a zero-tolerance policy for@Xfrom the build. Even ife�I isn’t important, I deal with it. If it’s not critical but still relev;fix5zcompile	��s about a potential null-pointer exceptio�JCause—e�,I “know”! problem w�<never show up induction.�RDembedded documenta� (Javadoc or similar) refers to parametPhat have been removed8renamed!Eclean ups4documentation.�t � Ȃ��FBy making sure that the build is always clean, I will not have to decid: a warning:�irrelevant every time I encounter it. Ignor2things9�mental work, and I need to get rid of all�0unnecessary m: I can.lt m ȃm�@Don’t wait for a big cleanup. When something appears that you d@�nt to see, deal with it right away.�t � Ȅ��when a tool is easy to use, it’s because the (�Smaking decisions for you and doing a lot of things automatically, behind the scenes.�t � ȅ��^By working with command-line build tools, you will learn a lot more about what the tools are doXhen>`r project is being built.ot j Ȇj�iProgrammers should always be interested in learning new languages, preferably from an unfamiliar paradigm.Lt G ȇG�FMy first step in learning an IDE is to memorize the keyboard shortcuts.+t ' Ȉ'�PROGRAMMERS NEED TO COMMUNiCATE. A lot.�t � ȉ�|Good programmers need to be able�stand outside their daily routine, 1pware of other languages that 8expressive for 	(�purposes. The time always comes when this pays off.zt z Ȋz�Most of the best programmers I know are also very fluent in4�ir mother tongue, and typically in 	Dlanguages as well.�t � ȋ��A linker is a stupid, pedestrian, straightforward program. All it does is concatenate together the code and data sections of the object files, connect the references to symbols with their definitions, pull unresolved symbols out of the library, and write out an executablePt M ȌM�polymorphism refers to many forms of a particular classDobjects or method.�t � ȍ��Automating configuration in the build can enable you to get1�sistent results when multiple peoare workeHon a project, avoidan “it((s for me”dvers�. Many b�,tools allow �lrun reports on code quality,	*k-8sense potential�Lblems early. By spen�4time understan(how to make=(yours,%3helpXrself and everyone else�2  team. Yo	6focuscok<features, benefi%�8,stakeholders_ma%e!m< more enjoyable.�t � Ȏ��As a team member, be patient with developers less experienced than you. Confront your fears about being intimidated by more skilled developers. Realize that people are different, and value it. Be aware of your own strengths and weaknesses, as well as those of other team )$s. You may!surprise�how much�8 can learn from0r colleagues.�t � ȏ��eThe code becomes more readable, as it expresses concepts of a domain, not just Float or String. • ThNd testd t��encapsulates behavior that is easily ; .6_ facilit;�reuse across applications and systems.it e Ȑe�OThe moral is to start exploring domain-specific types for the purpose of develop4@quality software.�t � ȑ��YOU’VE BEEN FOCUSED FOR HOURS on some gnarly problem, and there’s no solution in sight. So you get up to stretch your legs or to hit the vending machines and, onj$ way back,|answer suddenly becomes obvious.�t � Ȓ��So, the next time you hit a nasty problem, doDrself a favor. Onc	3@really understandW p=Tgo do something involv
Lthe creative side ofiH brain—sketch out-Tlisten t	Xh music, or just take a walk;Z. S�imes wbe( h�you can�Plv=k is p�(mouse down �lstep away from the keyboard.kt m ȓmdSo, the next time you feel,ed to improv�r programming skills, don’t read another book. Read code.st s Ȕs�XReinventing the wheel is as important to a developer’s education and skill as weightlifRis	;0body builder.Ft A ȕA�@Write code as if you had to support it for the rest of your life.�t � Ȗ��qYou leave a trail of your knowledge, attitude, tenacity, professionalism, level of commitment, and degree of enjoyh with every method, class, 2lmodule you design and write.�t � ȗ��[Good programming is not born from mere technical competence. I’ve seen highly intellectualX(ers who canduce )xnse and impressive algorithms, 3�know their language standard by heart, but /write0$ most awfu�8de. It’s painto read,. use,�%modify6� (more humble�%<�stick^<very simple code>� elegantpex5-�ts that are a joy to work with.�t � Ș��XIn any coding situation, you refuse to hack something that only seems to work. You strive6Dcraft elegant code	: is clearly\rrect (and has good testVshow44t is correct).�t � ș��Any time you touch a piece of code,tstrive to leave it better than#found(either!(structured,test\more understandable...).�t � Ț�XYou care about code andLprogramming, so you -�>constantly learning new languages, idioms, and techniques. But G|pply them only when appropriate.>t : ț:�Başkalarına yardım edersen, onlar da sana yardım eder.zt ~ Ȝ~�Gerçek insan ilişkileri kurmak demek, başka '(ların dahalı olma� için imkan ve yollar sağlamak demekti.�t � ȝ��>Tanıdığım en başarılı insanlar, ne özel yetenekleri oladı!eğitim!4veya tılsımlV va00. Ortak nokta4, güvenebilec	a ,n4i ve ilham ver$ n�tdan oluşan, gereksinim duyduk^nda yz�ma koşacak bir çevreye sahip olmalarıydı.�t � Ȟ��İnsanlarla ilişki kurmak dediğim zaman kastett	�budur. Sürekli olarak yardım etmek veiste s1cidir. {$ arasında�ler�T, o� a�ayır	duzmanlığınızı paylaş  mevcut��An ortadaki pastanın herkes için büyümesini sağlayabilirsiniz.�t � ȟ��Almadan önce vermek daha iyidir. Asla da çetele tutmayın, hesap yapmayın. Yaptıklarınıza cömertliğimiz hükmederse, ödülleriniz de peşi sıra gelecektir.�t � Ƞ��eHedefleriniz mutlaka yazılı olmalı. Onları kağıda dökmenin büyük önemi olduğunu asla unutmaF$sınız. Y._ �yan bir dilek, rüya olmaktan öteye geçemez2< an	5 ise C taahhüt,lhedef kimliğine bürünür.�t � ȡ��Oysa, çevreleri en geniş insanlar iyi bilirler ki başka  �la temas kurmaya henüz hiçbir şeye gereksiniminiz yokkenK8lamalısınız.At T ȢTTÇekingen insanlar, ç4lerle, girişk$#8 yakınlaşır.�t � ȣ��RUnutmayın, yapacağınız telefon görüşmesinden beklediğiniz sonucu elde edece	(e inanmazsaN\, muhtemelen sahiden de ]ninLL hüsran olacaktır.�t � Ȥ�|İnsanların size geri dönmemel4sık karşıla	�n bir olaydı. Böyle durumlarda yapmanız gereken, egonuzu:\kenara kaldırmak ve ara
�<ya da mesaj göndermek konusunda ısrarcı davranmaktır. Son!�Ctemas sağladığınızda, sakın ola ki beklediğiniz kadar çabuk >dik%�için şikayetçi olmayın. Bir sepet incir`<rbat edersiniz, ^ a)pız!(Xzık olur. Öte yandan,�l��~dde özür dilememelisiniz.�t � ȥ��Hiç tanışıklığınız olmayan birini ilk aray�*(mda, sırad	;�> bir saatte olmasına dikkat ederim. Meşgul insanların telefo�Nı sabah sekizde ya da akşam altı buçukta açma ihtimalleri daha yüksektir.]t X ȦX�WNe zaman bir yönetici asistanıyla çatışma durumuna girsem, kaybeden hep ben olurum.�t � ȧ�xSekreterler ve asistanlar patro
�<ına yardım eden personel değildir. Gerçekten iyilerse, paDTın iş yaşamlarındau(hatta özel> Hgüvenilir arkadaş:$, taraftarF,ayrılmaz bi�<rçası olurlar.�t � Ȩ��Yeni ve önemli birine ulaşmaya çalışırken �qden fazla iletişim yöntemini kullanmak bazen çok etkili olabilir. Bir e-posta, mektup, faks ya da kartpostal ul�Dk istediğiniz ki�	n el�Tdoğrudan ulaşabilir.rt m ȩm�lBaşarısızlıktan daha kötü bir şey varsa da o da görünmezliktir. İnsanlarla iletişiminizi kesmeyin.�t � Ȫ��Yakın zamanda bir meslektaşınıza yemek ısmarlad�( mı? NedenR7 (ı ve onunlX@likte şirketiniz9<ya da iş çevre�birkaç kişiyi daha bugün yemeğe davet etmiyorsunuz?Et F ȫF�Her başarılı insanın arkasında bir dizi )@sızlık vardır.Bt L ȬL|Tutkularımız bulaşıcıdır. >  $azı insan50 bize çeker.�t � ȭ��yÇevre edinmek anlamında en temel araçlarınızdan birinin insanlarla ilişkilerinizi sıcak tutmak, tanıştığınız =`ı daha sonra da takip et��olduğunu sakın unutmayın. Asl���, TAKİPÇİLİK HER ALANDA BAŞARININ ANAHTARIDIR.�t � Ȯ��Yeni tanıştığınız kişinin ad	(ı ve yarat.( holumlu izlenimi hatırlamas8 sağ(k, biriyle o`ktan hemen sonra başlatm� z gereken9, süreçtir.}t � ȯ��İnsanlarla aranızı sıcak tutmayacaksa , hayatı,da yer ayır2&  oP tO�şma zahmetine neden katlanasınız ki?�t � Ȱ��Konferanslar, insanların bir araya gelmesine vesile oluyor2Hbenzer düşünceliF6C �Serek misyon ve hedeflerine yardım edecek kişilerle tanışma fırsatı buluyorlar.�t � ȱ��JSoru-cevap oturumlarında elini havaya kaldıran ilk kişilerden biri olun. Sağlam ve akıl ürünü olan bir soruyla bütün dinleyici kitlesinin sizi fark etmesi işten bile değildir. Kendinizi tanıtın, hangi şirketten olduğunuzu, ne iş yaptığınızı söyleyip dinleyiciler üzerinde etki bırakacak sorunuzu yöneltin.�t � Ȳ��İki kişi arasında bir temas kurulm, için belli!hsamimiyet düzeyinin oluşm0 gerekir. c<dakikalık süre	O4de karşınız$	�Kgözler v(lb dlik�Fe bakabilmelisiniz. Can kulağıyla ne söylediğini dinlemeli, iş dı�$da sorularU|zaaflar	��a dair bazı ufak tefek bilgiler vere6� `Yanlış okumuyorsunuz, Z.X ı�stߘ diyorum. Çünkü bu, bulaşıcıdır.�t � ȳ��qDünyadaki herkesin birbirinden ancak altı kademe uzakta olduğuna dair bir teori var. Teoriye göre, gezegendekihf, başka kiş-0ne fazla beş	lik*�zincirle bağlanabilir. Yani tanıdığının2  mant	yla gid:se enn_0 halkada orta	wZk buluv�Peki ama bu nasıl oluyor? Çünkü oOki baz!@�hler, pek çoğumuzdan daha 	�`sayıda insanı tanıyor.mt { ȴ{�Tanıdık demek, sosyal bir güç		Ltir. Ne kadar çok t@@ğınız varsa, o%da	(Hgücünüz vardır.�t � ȵ��[Arkadaş çevrenizi genişletmenin ve ondan tam verimle yararlanmanın en etkin yolu kendi �RLle bir başkasınınpsi ardda temas sağlamanızdır.�t � ȶ��iBir başkasının arkadaş çevresini paylaşıyorsanız sizi bu yeni dünyaya götüren kişiye yeterinceE\e vermeyi ihmal etmeyin.�t � ȷ��(İletişime başlamak) Her iş dalı için`arılı olması kesin açş lafl%l elbette vardır. “İşe n: lO4ladınız?”,#�Mesleğinizle ilgili olarak en çok sevdii�%( şey nedirDgA$in zor yan�@ndan bahseder mis$4 biraz?” vs.�t � ȸ��RBaşkalarının gözünde kendinize “özel” bir yer edinmek istiyorsanız, onlaK	>lerini2@ hissetmeHsağlamalısınız.�t � ȹ��Greg’ten Johari Penceresi kavramını, pe n�rşındaki kişiye göre açıp kapaman gerektiğini öğrendiğimde ise her şey yerli yerine oturdu. Greg, kiminle konuştuğuna bakmaksızın kendisi gibi hareket eder, ama mesajını, kN� �en uygun tonda ve sitilde verirdi.�t � Ⱥ��“Bu gece burada muhteşem insanlar var. Gidip birkaçıyla tanışmayı denemezsem kendimi kötü hissederim. Müsadenizi isteyebilir miyim?”�t � Ȼ��CUzun ömürlü bir temas sağlamak istiyorsanız, ayaküstü konuşm�ı, ilişkiyi sürdürmenize yönelik`�davet ile bitirmelisiniz. “Şaraptan gerçekten anlı�Dun. Seninle tekrarRvesO,buluşup bu �$ hakkında�yı ço�\erim. En ilginç şişelizden`�ini de yanımızda getirelim, ne dersin?;t 7 ȼ7�“Sen bir harikasın. Daha çok şey anlat lütfen.”(t $ Ƚ$�Başkalarıyla gerçekten ilgilenin.ct ^ Ⱦ^�]İyi bir dinleyici olun. Karşınızdaki kişinin kendisinden söz etmesi için cesaret verin.Dt B ȿB�Konuşmanın büyük kısmını karş\zdaki kişiye bırakın.t  ɀ,GülümseyinGt B ɁB�AKarşınızdaki kişinin ilgi alanlarına uygun şekilde konuşun.<t 8 ɂ8�Takdir duygularınızı içten ve dürüstçe gösterin.jt m Ƀm�CBütün insanlar, tanıştığınız her bir kişi yardım etmek ve -0 almak için 4,fırsattır.qt t Ʉt�İnsanlara bir şey yaptırmanın yolu, o$|önemini kabul etmek ve kendiler$dli hissettirmekten geçer.�t � Ʌ�Xİnsanların kim olduklLı, hayattaki amaçl  4Hmaya çalışmak, o	J\ takdir etmenin ve gurur>okşamanu8en iyi yoludur.�t � Ɇ��IBirinin amacını gerçekleştirmesine yardımcı olursanız o kişiyle arLda bir bağ kurulmas	WDsağlamakla kalmaz	z, o0dın güçlü ve sürekli oEdaH rsınız.kt i ɇi�R“Tanıştığım her insan bir şekilde benden üstündür. Ondan öğrenilecek b	5<yler vardır.”�t � Ɉ�tSağlık ile ilgili bir konudaTine yardım ederseniz,	Din kişisel servet.olumlu"� etkide bulunursanız ya da çocuklarına karşı samim	�0ilgi gösteri	wL hayat boyu sürecekh$sadakati d�Datmış olursunuz.t � ɉ�Dİnsanların hayat	�daki en önemli konulara girecekseniz, o phak ettikleri ilgiyi gösterm.` gerektiğini unutmayın.�t � Ɋ��@Tanıdığınız insanlara ne kadar çok şey verirseniz karşıl;da oB/ alırs�Y`. Bir başka ifadeyle, ard�ş edinmek ve işlerinizin iyi şekilde yürümes$sitiyorsan�	Z8ları için eliC ta��0 altına sokm�kzam?B$ı, enerji6�lgrerek o!^bir�Pyler yapmalısınız.>t : ɋ:�Kendinizi başkaları için vazgeçilmez kılmalısınız.\t a Ɍa�Bir konuyu en iyi şekilde ögrenmek ve o&tda uzmanlaşmak istiyorsanız,%(ders verin.�t � ɍ��qİşin sırrı, sahip olmadığınız yeteneklerin üzerinde takıntılı bir şekilde durmamak ve güçlü yanlar	SıI@e odaklanmaktır.�t � Ɏ��aAmacınız, hedefiniz ne olursa olsun, kimse bunları tek başına başaramaz. Herkes kendisi dı�%�da birçok kişinin yardımına ihtiyaç duyar.�t � ɏ��(Ünlü insanlara bakarken) Halkın opı görmek istediği şekilde:# 0nizi ve sadec"la bir@ey olarak ilgilen4göstermjPçin şöhretlerindenV\odaklarından uzak durupO al�Hına yoğunlaşın.�t � ɐ��(Sadece Örnek) Siyasette bugün kimsenin tanımadığı birine yardım ederseniz, o kişi yarının güçlü siyasetçisi olduğunda belki de size yardımcı olacaktır.^t Y ɑY�XBilgisine ihtiyaç duyduğunuz biri varsa, o kişiye yararlı olmanın yollarını bulun.�t � ɒ��İşinizden nefret ediyorsanız hayatı0ı da sevmezs4�. İnsanların büyük kısmı işlerinden,	7�dikleri kişilerle çalışmak zorunda kaldıklW içi�Htmektedir. Başka i��la ilişki kurmak, sizi yeni ve heyecan verici 	�Pe götürecek fırsat�( iki-üç k% 0a çıkarır.�t � ɓ��There are two ways of constructing a software design: One,| is to make it so simple that th[pobviously no deficiencies and( otherVS $complicate+2X no[4 deficiencies.Yt T ɔT�SQPS: Queries per second.Usually how many web hits for API calls received per second.Xt S ɕS�RTraffic: A generic term for queries, API calls, or other requests sent to a server.jt e ɖe�dEvery minute spent simplifying a design pays off time and time again when the system is in operation.Dt ? ɗ?�>A request sent to any replica should produce the same response.�t � ɘ��FThe term fan out refers to the fact that one query results in many new ies, '@to each backend. e" “k”+g$individual5s andreplies�in as,y are set upEfrontend:(combined in�,inal result.�t � ə�lTo query the entire dataset,0root receivesoriginal9Dand forwards it to&,parents. The(!w	.dleaf servers, which search,Xir parts of the corpus.�t � ɚ��The easiest way to store state is�}put it on one machine, as depicted in Figure 1.4. Unfortunately, that method reaches its limit quite quickly: an individual man can�only a <0ed amount of 	�$and if the.� H dies we lose acces� 100 perce	C6G. !� haswcertainwproNTing power, which meansRnumber �@imultaneous reads�writes!d�Q!}�0. In distribu�computs w!�9�by%&Hfractions or shards��whole!� iBis.�t � ɛ��CAP stands for consistency, availabilit8nd partition re(�eance. The CAP Principle states that it is not possible to build a distributed system that guarantees cv� � to��ing. Any one or two can be achieved but��all three simultaneously. When using such�(s you must Opware of which are guaranteed.Lt G ɜG�Favailability also guarantees that the system is able to report failure.�t � ɝ��mPartition tolerance means the system continues to operate despite arbitrary message loss or failure of part ofU. Ta(implest exa
 of,>� is when@  R� even if(tmachines involved in providing#service� e�Fability to communicate with each other due to a network link going down�t � ɞ��>SQL and other relational databases use the term ACID to describ(ir side of (0CAP triangle.	1pstands for Atomicity (transacq�s are “all or nothing”), Consistency (after each @y�4 is in a valid}te), Iso	�0 (concurrent Es giv�D same results as i�dy were executed serially),%DDurabil�a commit'c’s� will� be lost�!>ev�$of a crash!)�,problem). Da1�that v!�weaker c=/Pmodels often refer tohmselve�NoQ d=�!(BASE: Basic� Available Soft-state services with E�<ual consistency.Jt H ɟHlTwo of the biggest consumers�ime are disk access and network delays.�t � ɠ���How did we know that it will take 3 disk seeks to read the index? It requires knowledge of the inner workings of the UNIX file system: how files are looked up in a directory to find an inode and <inodes =,used to lookC��data blocks. This is why understanding +$internals �operat$system youeCkeykbeable$design and< e!B tributed 	F�e 2n UNIX7	-likeA^7�`well documented, thus giv)�them an advantage over other systems.�t � ɡ��Ucomposition is typically done: load balancer for many backend replicas, frontend with % different/Ps, and a server tree./t + ɢ+�Your job is to design systems that operate.�t � ɣ��@Rather than the term “operational requirements,” some organiz%s use2@ non-funcJC  .C We consid}is y<misleading. WhilT�se features are not directly responsible for the x of�applic�, or service,w�:� (” implies! t+.� do�have a p. A] can�,exist withouF support�U ;e<y are essential.�t � ɤ��Roccurs when the service is told to stop accepting new requests but complete any req	tthat are “in flight.” This`|sometimes called lame-duck mode.�t � ɥ��This mechanism is particularly important when using a load balancer with multiple backend replicas, as described in Section 1.3.1. Software upgrades are implemented by removing one re[, at a time, 	<Ding it, and return	l to service. If each replica��msimply “killed,” any in-flight requests will be lost. It is better to have a draining mode, where the replu continues�process d\but intentionally fails B l.|@’s health checkD�it sedheV& X ,FX $ stops sen%TnewY�P� . Once no6% %`been received for a while%� the exist!(�4are completed,�is safex!�8}HLperform the upgrade.�t � ɦ��One way to achieve live backups without interfering8 the service is@perform b?d on a read-only replica of%(database. I	�system can dynamically add and remove r	Fs, \	Risd from� ,zen,@used�make� b�. Th@Kthenved#4 t�	�Hlater. It is common"@have a particular�  dedicate}0this process.�t � ɧ��>It is good practice to segregate these kinds of queries even if�> database does not have any replicas and both connections go toC�same server. Someday you will want to add read-only r\L. Deciding which conc a�,y should use�4best done when�query0originally beT invented,�Tmonths or years later.�t � ɨ���A configuration setting (a toggle) should be present to enable or disable each new feature. This allows roll-outs of new software releases to be independent of when the new feature is made availa�pto users. For example, if a n� is+$appear on Zsit�4cisely at noon0Wednesday, it<0very difficul%$coordinatejXbinary “push” exact	YDthat time. However�eac2; can!p,individually-rd,	�oftw!>*Ddeployed early and'-�& e%�(d via chang!� aZ�$he desired�This!	`often called a flag flip.�t � ɩ��Google Docs deploys many graceful degradation techniques. G:�C’s word processor can switch into read-only mode when only a read-�database replica is available. The client-side JavaScripto(work with t)achedS in$browser ifserv8s inaccessible.�t � ɪ��IP addresses are the weakest form of identification because+�yy can be easily forged. Something better should be used, such as a public key infrastructure (PKI) that uses digital certi�Pes to prove identity.Yt T ɫT�SWhen software generates an exception, it should be collected centrally for analysis.�t � ɬ��>When designing software for operability, it is common to use a 0�Lramework that detects exceptions, gathers the error message and other informa2 ,$submits ituxa centralized database. Such a �(is referred8s an�( collector.�t � ɭ��If the vendor is unresponsive to your requests,( may be abl"�write code that builds frameworks around ih’s software. For example,	bPight create a wrapper	_�>provides startup and shutdown services in a clean manner around�~	UDhandles those task!
�egracefully. We highly recommend publishing such systems externally as open source products. If you nee%�m, someone else will, too. Developing�ommunity1Uyour)}3� make its support less dependent on	2,own efforts.Dt ? ɮ?�>A service runs on a computing infrastructure called a platform.�t � ɯ��UIaaS providers have expanded beyond offering just simple machines and networks. Some p	P� a variety of storage options, includXrelaal (SQL)	Ton-. �NoSQL or key/value) databases, high-speed s>j and cold(bulk>�Othat is inexpensive but has latency on the order of hours or days). More advance5���e virtual private network (VPN)–accessibl!L2#  s�\load balancing services.�t � ɰ�XPaaS enables you to run�r applications from a vendor-provided framework. These services offer you a high level of value, as they manage all aspects of the infrastructure, even much of the a� stack� y|Pvery elastic scaling �, handaddi�|al load without any input requir�om!(. Generally< are not even awof�Tspecific resources ded!Wed!n@your application.�t � ɱ���The downside of PaaS is that you are restricted to using what the vendor’s platform provides. The platform is generally programmable but not necessarily extensible. You do not have direct access to the operating system.�t � ɲ��Virtual machines are created when a physica%P is partitioned to ru)�separate operating system for each 8(. Processes> n- oE v6� � have little or no awareness that they �not	C p:� . T$can#acw7\ resources, such as diskh<memory, of other>� 2� the sameFz �t � ɳ��<Because virtual machines run a complete operating system, the|onal burden is similar to a fullV( that needsHbe monitored, patch	upgrad
Dand so on. Also, b�j� �<running, each OS4 many backgrou`�ervice processes such as maintenance tasks �00daemons. Thos!4ke up resource	-add� tV+on s%QP administration team.�t � ɴ��Containers do share some of the downsides\virtual machines. Downti/host4 affects all chd. This means that planned l tMfor pateg �Was wellun4outagesl< all containers.�t � ɵ��Containers are usually the underlying technology in PaaS. They enable customers to be isolated from each other while still sharing physical machines.�t � ɶ��[Systems like Docker define a standardized container for software. Rather than distributing s#T as a package, one can,j c]@that includes thek� and everything needed for it to run. This Oj4be created onc	HLrun on many systems.�t � ɷ��L7 load balancers work similarly to L3/L4>' ��but make decisions based on what can be seen by peering into the application layer (Layer 7) of the protocol stack. They can examine what is inside the HTTP protocol itself (cookies, headers, URLs, and so on) and make decisJ� Twas found. As a result�y offer icher mix�0features than)  previous:N4. For example,*>�%P$check whetf4a cookie has b!hset �Lsend traffic to a di�ent$of serv!� b1� t%�riterion!m�is is how some companies handle logged-in usersdly. S63 0set a special�whe%\ir most important custom�log in� configure%!2��detec!�A})9 he t9 e�<ly fast servers.�t � ɸ��When all requests appear to come from the same IP address, debugging and log analysis may be impossible at worst and confusing at best. The usual way to deal with this issue is for the load balancer to inject an additional header that indicates the IP address of�origina54er. Backends cXccess th�nformag0 as needed. Tu i6<lled X-Forwarded
`:. It contains a list of 9^es start!^wi%,e client’s%rincludes%��the previous proxies or load balancer�at, r)�h has passed through. Note t* cvr@termediate device�0n add invaliduforgedres�to the�!$,erefore you !Y only trus	� aIbed by(r own6� . UEDZrest!qHinsecure and risky.�t � ɹ��XLeast Loaded (LL):The load balancer receives information from each backend indicating howD�ed it is. Incoming requests always go to the le�8loaded backend.�t � ɺ��aLeast Loaded with Slow Start: This scheme is similar to LL, but when a new backend comes online it9Pnot immediately floodq@queries. Instead,5 s�4s receiving a ��rate of traffic that slowly builds until itx? n appropr� amountJ .	�Dfixes the problems)�LL as described in Section 1.3.1.�t � ɻ�� Sticky Connections: Load balancers have a feature called stickiness, which means if a user ’s previous HTTP request went to a particular backend, the next one should go there as well. That solves the problem discussed earlier, at least initially. However, if that backend dies, the load 1( will send �s from t=user�no�� backend; it has no choice. This new $  Y not know y uN,is logged in6 e	.be askeds$log in aga	(us, tdis only -e,al solution.�t �	 ɼ�	�qThe backends need to know that many HTTP requests are from the same user. They cannot use the source IP address of HS: duewQ:0of network ad	7Dtranslation (NAT),	�differen�chines�Hoften seen as using^� I� . Even if	� wJ’t,case,
1�4a particular m	v changes-im	�ime: wh�( laptop mov'one WiFi�(to another,60mobile device.= 9to cell�and !�, or�!��0is turned off*n again 	=M(or some�s e!%!�!? )�. U5X="Las an identity would)UG%�for�A9 runn%�8wo web browsers�u� . Instead5!Clogs in!@CapplicE.)�X generatA. secret !@<includes it with�reply. a)+is) h�K$d randomlyKgi%5o only eL�on	���jfuture	�everB*  se�an2@AasameYapp,�also4%J�. Becaahth� was not.QA?E�� ,� b8 e=diffa7guess2t  can trusaV ais!B��!!_�cheme��e�a cookie�4	� ia�$ten referr��<as a session ID.'t $ ɽ$8• www.company@/ (the main page)t  ɾd• www.company.com/sportst  ɿh• www.company.com/weathert  ʀh• www.company.com/financet  ʁ`• www.company.com/email�t � ʂ��Each of those web features is provided by a very different -<service, but all	K�<em can be combined into a seamlessly unified user experience kreverse�Txy. Requests go to the6" , whichferprets$4URL and collecHrequired pages from-(appropriate�er or
<ice. This result!4then relayed t	�Horiginal requester.�t � ʃ��eA global load balancer (GLB) is a DNS server that directs traffic to the nearest datacenter. Normally 2F returns6(same answerIXa query no matter where+	`originated. A GLB examinePHource IP address of>andxa different result depending on6(geolocationIBb  .�t � ʄ���A point of presence (POP) is a small, remote facility used for connection to local ISPs. It is advantageous to connect to many ISPs but they cannot always connect to your datacenter. For example,> 4 may not be inZ state o�untryy operin. Si�they�go�you,, must extend r network%4someplace nearFm. >� $ might creta POP�Berl� oBTdifferent German ISPs.�t � ʅ��A message bus is a mechanism whereby servers send0s to “,Tnels” (like a radio ,) and other I0listen to the) s y need. A,( that sendsz�publisV`Hreceiv�<are subscribers.at ^ ʆ^�A reverse proxy ensures that many application servers�ear to be a single large application.Ft C ʇC�The only real problem is scaling. Everything else4a sub-problem.Et @ ʈ@�?The best time to fix a bottleneck is before it becomes a problem�t � ʉ���The best strategy for scaling a running system, then, is to predict problems far enough in advance that there is enough time to engineer a proper solution. This means one should always be collect� e	V(measurement�4be aware of wh�Lthe bottlenecks are.�t � ʊ��}Methodologies for scaling to massive proportions boil down to three basic options: replicate the entire system (horizontal dup((ion); split2sy+Linto individual func,hs, services, or resources (#al&  Zs); and	ng 4chunks (lookupHDformulaic splits).�t � ʋ��One can also mark special customers for(treatment. ;finan/�aservices web site sets a cookie if a user invests multiple millions of dollars with the firm. The YPload balancer detects( c	g�and sends its traffic to a pool of ��Dthat are dedicated(`very important customers.�t � ʌ���Search engines such as Google and Bing crawl every page at Serverfault.com looking for new content. Since this crawling hits every page, it might potentially overload the service, due to both the volume of requests and the fact that hitting everyt� in order exhausts the cache. Both ?@ors make performa�suffer �dother users. Therefore req	�from web	�,ers are sent�ha dedicated pool of replica	O sK	90configured noC��HTML��at0gener_. Becaus	+lis sepa, ifD%��Hoverload it, regula� will~,be affected.�t � ʍ�dwhen we do a lookup, first�check whether the result can be found in <cache. If it is,.0 0is used. Thiscalled a	6 hit: not	[	Dnormal�=$done from xdisk.^Y miss.]t c ʎc�The effectiveness of a cache is measured by thehhit ratio, sometimes called= hit rate.�t � ʏ��<When a system starts, the cache is usually empty, or cold. Th%�hit ratio will be very low and performance !remain s!|until enough queries have warmed�t � ʐ��Sharding is a way to segment a database (z-axis) that-8flexible, scala
pand resilient. It divides theLQd on4hash value of 2( keys.Kt F ʑF�Eshards are often used to distribute a read-only corpus of information.Xt S ʒS�RThe process of unadvertising until no new requests are received is called draining.�t � ʓ��In a single-thread process, we receive a query,, it, send th&0sult, and getnext 5<. This is simple'Tdirect. A disadvantage%that�\ long request will stallc8s behind it. ItD�like wanting to buy a pack of gum but being in lineEDa person with a futhoppLcaren t�Dso-called head of 	Jlocking,�!)is "ed b�bi�!+e resul�@high latency for � t!&�otherwise could be serviced quickly.�t � ʔ��CA content delivery network (CDN) is a web-acceleration service that : sK4(web pages, im	�<video) more efficiently on behalf of your service. CDNs cacheZ o	{�ers all over the world. Requests for �areTd from2 cXnearest,user. Geoloc	�techniSE<used to identify61.5of r	�<ing web browser.�t � ʕ��The x-axis (horizontal scaling) is a power multiplier, cloning systems or increasing their capacities to achieve greater performance. The y-axis (vertical �	,es by isolaty(transactionxtheir type or scope, such as us3xread-only database replicas for  quer�0and sequester> writes tok ma  IW$. Finally,# z-Vlookup-p d�5X$bout split�M@ across servers soatQworkload!�\distributed according to	Eusage!Hphysical geography.St V ʖVpSuccess is not final, failureatal: it�the courage to continue that counts.Ft H ʗH�A failure domain is the bounded area beyond which04has no impact.�t � ʘ��mAnother technique for dealing with software hangs is called a watchdog timer. A hardware clock keeps incrementTa count/If the  exceeds"<ertain value, a W�subsystem will detect this and rebootV	'. So�runn�on  resets��to zero after any successful operation. If � sahangs,KV�stop �so6{ be�0ed. As long a	�Zkeeps�	b�EPset frequently enough�@prevent a reboot.�t � ʙ���Dean and Barroso (2013) describe a preventive measure pioneered at Google called canary requests. In situations where one would normally send the same request to thousands of leaf servers, systems using this approach send the query to one or two leaf serG8. These are theF� Queries!sent t�8e remaining serJ0 only if repl2)ca2I�received in a reasonable period of time. If�.�  crash� hang whilR� ibe�$processed,N)9 flags r)� as pot!�4ally dangerousE#M	 s further	� es by not! dm iJ#.� . Us(<this technique GIHis a!	 to achievA� mMy0of robustness!<!�faceLdifficult-to-predict�grammqerrors�wellmalici�ddenial-of-service attacks.�t � ʚ��One strategy is a simple failover. #�>load balancer (the primary) receives all traffic, and the otherN@ secondBmonitors1 health off( by sending!|rtbeat messages to it. If a loss>he',is detected,U{( takes over�become	�active6� L. Any TCP connection.|at were “in flight” are disc	-ed since� p)?�<unaware of them.�t � ʛ��Another strategy is load shedding. With this st%�the service turns away some users so that otherhcan have a good experience.�t � ʜ�HTo make an analogy,�uoverloaded phone system doesn’t suddenly disconnect all existing calls. Instead, it responds to any new attempts to 	�t call with a “fast busy” t�do that the person will tryG8call later. An ��Oweb site should likewise give some users an immediate response, such as a simple� c6back	s�g,page, rather�n requir!$them��time out after minutes of waiting.Ut Z ʝZ�Oncall is not just a way to react	Lproblems, but rather.' Pduce future problems.�t � ʞ��In a DevOps organization, software developers and opera#�Zal engineers work together as one team that shares responsibility for a web site or service�t � ʟ��^DevOps is a combination of culture and practices—system administrators, software developers, <web operYts staff all contribute to the �@environment. With, sysaxs Zj� share responsibility for a service2$its availa	# .Z aligns�0priorities of.d (dev)GsyJ orF� 8(ops) by makingam both�4le for uptime.�t � ʠ��FThey worked in “silos,” with each group unaware of the concerns of 4other, and nei0 side seeing #D“big picture.”it d ʡd�cStakeholders: People and organizations that are seen as having an interest in a project’s success.^t ] ʢ]�FReleaseCandidate: The end result of the build phase. Not all release ca>8s are deployed.�t � ʣ��The more we treat infrastructure as code, the*�Ucan benefit from software development techniques such as revision control and testing.it h ʤh�UIndividual developers should each have at least one private environment for their own K(ment needs.ft f ʥf�<The more confident we are in our service delivery process, th;,aggressively>Dcan try new things�t � ʦ��A software package is a container. This single file�Cs everything needed to install an application, patch, or library. Par�s typically include the binary executables to be cPed, any related data �s,�figura},Hd machine-interpretX  Qruc, s describ�how 2� d remov	� s-: . You may�0familiar with�t formats such as Zip, UNIX tar	�cpio. S!��!�%!� ents of m�smaller+ plus meta! !� ena whol%�like a t�ofYTr index. It encodes in	�ion 9�unpack�$individual.� � ownersh�(permissions	�(timestamps.xt � ʧ��Continuous integration (CI) is the practice of doing �build phase many times a day in an automated fashion.�h �h �t � ʨ��User Acceptance Testing (UAT): This t�Cis done by customers to verify that the system meets their needs and0claimsN0the producer._t _ ʩ_�By decoupling where storage is provided from 	it�used, machines become more disposable.wt r ʪr�qContinuous delivery (CD) is the technique in which testing is fully automated and triggered to run for each build.�t � ʫ��IThere are two environments on the same machine, one called “blue” and ,other (green.” G
 isSlive.l   and blue!� thatHdormant. Both existN� ` by a mechanism as simple
�different subdirectories, each of whichsused7 a5$virtual ho� f� s!#8web server. The	�.� �consumes very little resources. Whe)r(new release�to go%4 , trafficdi�ed to�%@p .Qprocess6 finished,4na��< sEswapped�tis system permits rolling back�previous.K <ake place easilySis a)-�way�provid^Pzero-downtime deploymQ�(applicationAXat w!�p’t designed for it, as longthe6< $support betinstI�in:2� sNw .�t � ʬ��FThe longer one waits to merge code changes into the main line source, tXore difficult and risky	3ODbecomes. Sometimes sF	m4may have been 	{�d by other developers, which creates a 	d�conflict. Merging small amounts of �Lis less error prone.�t � ʭ��aA-BTesting:Oftenthebestwaytotellifuserspreferonedesignoranotheristo implement both, show certain u?p the new feature, and observe�Oir behavior. For example, suppose sign-ups for a product are very low. Would sig	+�be improved if a check box defaulted to	ed, or( instead o63 Dan entirely differ�hmechanism was used? A groupA(users could�selectk half with�B� 	ed (gMA) !5!Jother6B   !^�48B). Whichever d%� ha)�<better results w��  %fllrs af*\the test. Flag flips can�5bo� o control1	�o enabl%� winning�when/,is finished.�t � ʮ�HErlang is one such huage. A service written in 2\can be upgraded while itKprunning. Properly structured @�Iprograms are designed as eventdriven finite-state machines (FSM). For each	2� received, a specific function is called. One3that the�canH  is a notH aD/0code has been�. Then*s
8responsible for94ing or convert any data 52@s. All subsequent	�4s will trigger�tnew versions of the functions.�t � ʯ�dOne method is to roll back�the last known good release. When problems are found,6softwDis uninstalled and (most recent2W 0,reinstalled.{t { ʰ{�Another method is to roll forward�the next release, which presumably fixes )Pproblem discovered inC8failed release.Jt G ʱGhUpgrading the software runn�in an environment is called a code push.5t 1 ʲ1�Progressive improvement beats delayed perfection.0t , ʳ,�Automation is when computers do work for us.�t � ʴ��Domain-Specific Language (DSL): A l�mthat was purpose-built for a particular use, such as system administration, mathematics, or text manipulation.�t � ʵ��eThe co-creator of UNIX and the C programming language, Ken Thompson, famously wrote, “One of my mostFTductive days was throwW`away 1,000 lines of code.Vt Z ʶZ�Using the left-over principle, we automate everythi0 at can be <d within reason.rt n ʷn�OWhen designing automation, ask yourself which view of the human component is beiDdssumed by this automation.�t � ʸ��Super automated systems often require s&Ttraining, which can be`expensive. Hiring becomes  difficult>�begins to limit the company’s ability!�>grow at its desired rate. The missed opportunities that result 	�, a burdensomjst?is 9$y cost may�more�  than wha	�sy!(l saves. Such dilemmas are whM��Plike Google implement-aggres!: recruit!=Xcampaigns to hire SREs.�t � ʹ��There is a distinction between tool building and automa%. T2 improveK`manual task so that it caZ donebter. AuP| seeks to eliminate the need forperson%,do the task.�t � ʺ�xSometimes there isn’t enough �a to automate because we’re so busy with urgent work that blocks long-term work such as creating ^ion. To `@an analogy, we do	�have�shut off�8 leaking faucetF� pend $all of our	HDmopping the floor.�t � ʻ�Apply an�}d all effort to fix the biggest bottleneck first. There may be multiple areas where automation is needed. Choose the one with .j 0impact first..t 2 ʼ2hYou can’t automate what y,do manually.;t 8 ʽ8�Failure is not falling down but refus8to get back up.Kt F ʾF�EDiurnal Cycles: Metrics that are high during the day and low at night.�t � ʿ��Measurement frequency is the rate at which new me/Hs are taken. DifferEmetric	 collectedE d#h\ies. Many pieces of dataY<`every 5 minutes, but someZl  mR�times a second and others once a day or once a week.�t � ˀ��eA trend is the direction of a series of measurements on a metric. For example, one might use visualizaR,to see that bvice�Pgrowing or shrinking.�t � ˁ�LAlerting means to brsometh
dto the attention of a pers�r another system. A sudden drop in QPS might result aw[oncallS. �@s generally need �@e acknowledged wi�@ a certain amount�time. If`Pdeadline is exceeded,�one els�<ed. This process3�4ed escalation.�t � ˂���Resolution describes how frequently the metric is collected. High (R+) is many times a second, minute, or hour. Low (R−) is many times a day.Vt Q ˃Q�PCapacity Planning (CP) is the process of predicting resource needs in the future.lt g ˄g�fA diagnostic is a metric collected to aid technical processes such as debugging and performance tuning.�t � ˅�`A common interview questi�Cs “If you could monitor only three aspects of a web server, what w7�^they be?” This is an excellent test of technical knowledge and logical thinking. It requires �to use�r NF Lto find one metric t��can proxy for many possible problems.�t � ˆ��>For example, much can be learned by performing an HTTPS GET: We	'p whether the server is up, ifice8overloaded, and" r�network congestion. TCP timings indicate time to first byteLull payh@. The SSL transacW�analyzedLmonitor+certif	lvaliditybexpiraC	Xot�$wo metricsZus	V$differenti�,between thos�$sues. Know!^$CPU utilizb  can helpZE F.�an=d$ system. M	�g!�`amount of free disk spaceuindic�lrunaway processes, logs fillK< ,zLmany other problems.8t ; ˇ;<Monitoring the m�system is called meta-monitoring.Et @ ˈ@�?Timestamps should be stored in UTC rather than local time zones.�t � ˉ��Doing an HTTPS GET of a web site’s main page is,example*�blackbox monitoring. The measurement is unaware38any load balanc��infrastructure, internal server archite�<or which technologies are in use. Nevertheless, from this one.� <, we can determiXany things: whether the%  �$p, how fas�@it responding, if.hSSL certificate has expired$systemTprodu%	@a valid HTML docu!@,, and so on.�t � ˊ��FA gauge value is an amount that varies. It is analogous to a real-worldFlike one	<�indicates barometric pressure. Examples include{3xor of how much unused disk spac	��vailable, a temperature reading, and the numberRxactive processes on a system. A	�’s-	�$, going upSXdown as whatever it mea� s�rea[,r decreases.�t � ˋ��}A counter is a measurement that only increases—for example, a count of the number of API calls received by a service or the |0>�packets transmitted on a network interface. A	�4er does not de	�f0run backward.!t  ˌpProduction code vs. test code�t � ˍ��People often think production code and testLre different. Tests ,assumed to b5 addiFtoRT �have no cost of ownership. By extension, pe�Tbelieve that the more �s,Hbetter. This isn’	)�case. Code is a liability, not an�et:V�you int% e	cs� dwsurface!Xa for potential bugs in20r software, a:higherEDproject’s upkeep%. I	always�!Xsolve7Lblems with as little	�,as possible.�t � ˎ��^Tests are code, too. You should view them as the part of your code base that aims at solving a .Picular problem: ensurO�<application’s correctness. Unit tests, just like any other 	���also vulnerable to bugs and require maintenance.gt b ˏb�aThe most difficult part of unit testing is achieving maximum value with minimum maintenance costs.�t � ː��Code tends to deteriorate. Each time you change something in a code base, the amount of disorder in it, or entropy, increases. Without proper care, such as constant cleaning and refactoring, the system becomes increasingly complex and disorganized. Tests help overturn this tendencyRt Q ˑQ�The goal of unit testing is to enable sustaingrowth0Pthe software project.)t % ˒%�A unit test is an automated test that:t 6 ˓6�Verifies a small piece of code (also known as a unit),t  ˔<Does it quickly,&t " ˕"�And does it in an isolated manner.�t � ˖��A test double is an object that looks and behaves like its releaseintended counterpart but is actually a simplified version that reduces the complexity and facilitates testing.vt ~ ˗~�if a class has a dependency on another ",, or several	4|es, you need to replace all suchNTies with test doubles.�t � ˘��iA mock is a special kind of test double that allows you to examine interactions between the system under tMTand its collaborators.�t � ˙��Runit tests themselves should be run in isolation from each other. That way, you can4theW�Cin parallel, sequentially, and in any order, whatever fits you best,*`they still won’t affect�0’s outcome.�t � ˚��Tests shouldn’t verify units of code. Rather, they 	/B* �Lbehavior: something that is meaningful for the problem domain and, ideally, s6B �a business person can recognize as useful.�t � ˛��OA test should tell a story about the problem your code helps to solve, and this 	;O,be cohesive "xmeaningful to a non-programmer.-t ) ˜)�When I call my dog, he comes right to me.zt z ˝z�IWhen I call my dog, he moves his front left leg first, then the front righ%=0is head turns*T tail start wagging…t  ˞XTest-driven development�t � ˟��Test-driven development is a software2 |process that relies on tests to M the*ject.> . T	Cconsi7�Qof three (some authors specify four) stages, which you repeat for every test case:gt b ˠb�a1 Write a failing test to indicate which functionality needs to be added and how it should behave.mt n ˡn�>2 Write just enough code to make the test pass. At this stage, /0doesn’t hav>Lbe elegant or clean.�t � ˢ�`3 Refactor the code. Unde	0protection of"�Xpassing test, you can safely clean up the code to make it more readable and maintainable.�t � ˣ�\an integration test is a	
0that verifies	@your code works i6A �with shared dependencies, out-of-process : T\developed by other teamsg(the organiz�t. There’s also a separate no�<of an end-to-end�. E6 s are>ubset5 i: sl\y, too, check to see howB%j� NH difference betweenJ�  and>� !�%�:� �s usually include more of such dependencies.t  ˤXGiven-When-Then pattern~t z ˥z�UYou might have heard of the Given-When-Then pattern, which is similar to AAA. This pat'| also advocates for breaking thet  ˦htest down into three parts:At Q ˧Q�Given—Corresponds to the arrange section  Whe^+ $ct section,t ( ˨(�Then—Corresponds to the assert section�t � ˩��<There’s no difference between the two patterns in terms of �est composition. The only distinc is thatP`Given-When-Then structure&xmore readable to nonprogrammers_us,BD is	:suit:for �x8are shared withVD-technical people.�t � ˪��myou may sometimes encounter a unit test with an if statement. This is also an anti-pattern. A test— whether .R or2,integration i|—should be a simple sequence oeps w�0no branching.t  ˫,Test fixture2t . ˬ.�The term test fixture has two common meanings:�t � ˭��1 A test fixture is an object the	Druns against. This#�can be a regular dependency—an argument that is passed to_SUT. ItHalsoMdata in <base or a file o	8hard disk. Such�8needs to remainKa known,�Led state before each�@, so it produces !Dsame result. Hence0word fixture.1t - ˮ-�[MethodUnderTest]_[Scenario]_[ExpectedResult]�t � ˯�@Unit Test Naming:e the t`as if you were describing#�scenario to a non-programmer who is familiar with68problem domain.$t   ˰ |Separate words with underscores.Dt D ˱DhDon’t include the name of@SUT’s method in4test’s name.=t ? ˲?xRemember, you don’t test code	Papplication behavior.Ht C ˳C�BAll unit tests should follow the AAA pattern: arrange, act, assert.Wt R ˴R�QMore than one line in the act section is a sign of a problem with the SUT’s API.�t � ˵��}Let’s start with the first attribute of a good unit test: protection against regressions. As you know from chapter 1, a regr	+P is a software bug. I	��swhen a feature stops working as intended after some code modification, usually after you roll out new functionality.�t � ˶�XRefactoring means changexist	�mcode without modifying its observable behavior. The intention is usually to improve the code’s nonfunctional�racter�Ccs: increase readability and reduce complexity. Some examples of ref�arDnam�a methodJextt	piece<�@into a new class.�t � ˷��Black-box testing is a method of software xthat examines the functionality4Pa system without know\hts internal structure. Sucha�is normally built around specifications and requirements: w��appl(OTsupposed to do, rather�@n how it does it.�t � ˸��<White-box testing is the opposite of that. It’s a method of4,that verifie	?(application6Hinner workings. The>Hs are derived from ~�source code, not requirements or specifications.wt r ˹r�qA test double is an overarching term that describes all kinds of non-production-ready, fake dependencies in tests.�t � ˺��>Mocks help to emulate and examine interactions between the SUT )�its dependencies, while stubs only >` Hthose interactions.�t � ˻��RTest-driven development (TDD) is a workflow where you write a failing test before y Hthe source code. Be:" < in a component,2a  tY0to makes sureV.�F behaves correctly. A popular TDD approach is red, green, refactor. RedB � wv� (red), �� t�pass (c), andn rm	��L it more readable. D)�ing�0lications likipis offers some benefits. Firs2>={ only fo	�funcT4ality that’s�!!(which keeps� s9�8 small. Second,�hforces you to think about c1�  design b9�Hstart writing code.st n ˼n�mA snapshot test takes a picture of your running application and compares it against previously saved pictures.)t % ˽%�The purpose of tests is to save time._t n ˾n�A journey of a thousand miles begins with a single step, %Tevery great test suiteV6 test.0t / ˿/pLife is about the journey, no	,destination.?t ; ̀;�Linting is a useful way to enforce code style on a project.Ot Z ́Z�Globs are the patterns used to match files. Jest uses,<Node glob module>/ �t � ̂�PHere, spec stands for�ification, because unit tests are6& 	9�how your code should behave. Each?:�es a result to expect when the func�R are<4ing is called.t � ̃��aVue single-file components aren’t valid JavaScript. You need to compile them before you can use in aB0 application.Ut S ̄SxLinting is the process of checkpcode for potential errors and8matting issues.9t 5 ̅5�Frameworks are tools to make writing software easier.�t � ̆��In medicine, a false positive is where a test indicates that you have an illness, when you in fact don’t. Doctors are careful to avoid false po	z<s, because they 	Lunnecessary grief to , families ofDwrongly diagnosed.Nt Y ̇Y�The findAll method is to document.querySelector'as2:( < .querySelector.Xt S ̈S�RTo run Vue unit tests in Node, you need to use jsdom to simulate a DOM environment.�t � ̉��LIf you’ve used Redux before, a lot of the Vuex concepts will be familiar toKp. The main difference between	Cangis that	mutatee stor,ate, whereas�cre'a new.) @ on every update.jt h ̊h�In the context of Vue applications, state is * data that�currently stored in a running application.Ut [ ̋[|Actions are asynchronous. Vuex a like muta2�, except they can be asynchronous.�t � ̌�(Mutations m
le the state of a Vuex applic( (henc	'name 74ion) To call a in an?$, you must$(commit func? with}V<of the mutation.Nt M ̍M�In server-side routing, a new page is requested from the 	64 and rendered._t c ̎c�Vue Router also links between pages without triggering a ( load by us		J8Link component.�t � ̏��You’ll use the history mode, which tells Vue Router to 0window.7P.pushState method und1Zood:setj�URL without triggering a page load.�t � ̐��Snapshot testing is like having someone play a game of Sp3the Differences between your laR\ output and a saved fileD,your output.�t � ̑��CThe fundamental difference between testing SSR code and client-side �is that it runs on the server rather than in a browser.�t � ̒���“Doğru söylüyorsunuz, Eğer insanlar zorsa, onlara karşılık vermek veya buna sinir olmak ya da kızmak hiçbir işe yaramaz.”>t < ̓<hKısa bir kurşunkalem uzunlhafızadan çok daha iyidir.ht f ̔f\Başkalarının yanlış	�Gdan öğrenmeliyiz. Hepsini kendimiz yapacak kadar çok zamanımız yok.It D ̕D�C> Birisi size hoşunuza gitmeyen bir şey söylerse ne yaparsınız??t ; ̖;�Kendinize önce şunu sorun: “Ben olsam ne hissederim?”�t � ̗��“Yapmış olduğum bütün yanl0lar, tanık o>% $saçmalık'$işlediğiHlhatalar düşünmeden davran{pmamın sonucudur.” (Anonim)�t � ̘��yDüşünerek davranmayı nasıl öğrenebilirsiniz? Birisine kızdığınızda, muhtemelen olayları kendi bakış açın�0$n gördü��üzü bj�eniz, bu hiç de zor değildir. O]8öteki kişinin6g sında	g�hmek için şu empati cümle�@ kullanın: “Be�Tsam ne hissederdim?”1t - ̙-�Kişi ne kadar çok bilirse, o kadar affeder.$t   ̚ |Hiddeti empatiye dönüştürün>t : ̛:�“Empati olgunluğun en iyi göstergelerinden biridir.”�t � ̜��İnsanların size davranış tarzından hoşlanmıyorsanız, tercih edebileceğiniz iki yol vardır. Ya hiç düşünmeden karşılık verirsiniz ve aklınızın bir parçası o��da kalır, ya da bir saniye durup olayl� o1�açıs�<gözden geçirirF{ T huzur içinde kalır.?t ; ̝;�Kendinize şunu sorun: “İnsanlar niçin bu kadar zor?”Pt N ̞N�“Zayıflar hiçbir zaman affedemez. A�bilmek güçlülere özgüdür.”]t X ̟X�W“Bir öfke anında sabır gösterirsen, yüz gün üzüntü çekmekten kurtulursun.”Ut P ̠P�O“Bir hareketi görmezden gelmek çoğu zaman öcünü almaktan daha iyidir.”3t / ̡/�“Haklı olabiliriz ya da mutlu olabiliriz.”ht � ̢��“Eğer başkalarının mutlu olmas�x istiyorsanız, merhametli davrn. 	LkendinizE k�@ ”<t : ̣:�“Eğer onları alt edemiyorsan, sen de  ,a katıl.”wt r ̤r�q“İnsanın, şoka uğramak yerine hafife almayı ögreninceye kadar belki de oldukça yaşlanması gerekiyor.”�t � ̥���“Size utanç veren bir özelliğiniz varsa, bununla dalga geçenlere söylenecek en doğru şeyi bulabilmek için arkadaşlarınızın yardımına başvurun ve hüznü sevince dönüştürün.”               o       �       �      �      K      �            ]            �      �      �            @      �      	�      
}      
�      �      �      �      U      �      5      P      �      <      W      4      g            �      2      �      R      �      �       T       �      "      "p      #c      $M      $�      %�      &      &�      'b      (U      )J      )�      )�      *s      +      ,�      -�      /&      /�      0(      0o      1�      1�      2�      3>      4D      6;      7�      7�      8�      9%      9�      :H      :�      ;(      ;i      ;�      <Q      =�      >      >�      A      A:      A_      A�      Bw      B�      C`      Ea      G      H&      IR      J=      Jp      KW      L�      N�      PU      Q      QS      Q�      S3      T�      U�      Vc      W�      X�      YL      Y�      Z      [!      [�      \l      ]<      `      `m      aB      a�      b^      c      c�      c�      d�      e      e�      f�      h      i7      i�      kt      k�      l�      m8      m�      n"      n�      p�      p�      q#      q�      q�      r9      r�      s
      s�      uz      v      v3      vW      vy      v�      v�      wq      w�      x      y      y�      y�      z�      z�      {$      {�      |n      }!      }w      }�      }�      
      �d      �8      ��      �      ��      ��      ��      �_      ��      ��      �C      ��      ��      �k      ��      ��      �#      ��      �3      ��      �d      ��      ��      �1      �E      ��      �      ��      ��      �      ��      �7      �+      ��      �T      �      �g      �      �      �}      �      �8      �      �i      �      ��      ��      �Y      ��      �+      ��      ��      �8      ��      ��      ��      ��      ��      �n      ��      �4      ��      �H      ��      ��      ��      �a      �@      �f      �>      ��      ��      �w      �;      ��      ��      �      �P      ��      �>      �{      ��      �      í      �       �[      ��      �M      ź      ��      �N      ��      �%      �l      ɷ      �k      ��      ˄      ��      ͂      ��      ύ      �^      Ц      ��      �n      �      Ӆ      �      �G      �      �P      ֊      �4      ��      �l      �*      ��      �L      ��      �?      �      �      ݉      �#      ߼      �      ��      �i      ��      �1      �      ��      �      �      �"      ��      �:      ��      ��      �=      �      ��      �      �+      �U      ��      ��      �g      ��      ��      �      �      �2      ��      �      �      ��      �      ��      �;      �      ��      ��      �m      �!      ��      �      �      ��      �&      �L      ��      �&      ��      �      �      �C      ��      �[      �.      ��      '      �     =     �     �     �     �     �     �     �     N          �     	     	�     	�     
     
�     �     �     �     e     �     {     �     �          �     N     �     1     c     �     �     �          8               8     i     �     �     �          f     �     �     �     \     �     �     �          m     �     �          3     Q     �     �          �     �      @     !2     !q     "     #     #�     #�     $     $3     $[     %     %n     %�     &D     (     )     )�     )�     )�     *     *B     *�     *�     +�     ,+     -F     -�     .�     .�     /d     /�     0<     0�     1�     1�     22     2�     2�     3�     4     4�     5r     5�     7�     8\     9      9�     :b     :�     :�     ;Z     ;�     <     <P     <�     <�     =~     =�     >�     ?k     @�     As     B^     B�     CS     C�     DG     E:     E�     FU     G     G�     HU     I     J�     LD     M�     M�     N�     Om     O�     P     P^     P�     Q�     R3     R�     Sk     S�     T�     U3     U�     V"     V�     WR     Wy     W�     Xo     Z     [�     \�     ]     ]�     ^E     ^�     _     _C     `      `�     a�     a�     c�     e     e�     fl     gQ     h�     i     i|     i�     j�     l     l�     mS     m�     n<     n�     o�     p�     q�     r|     s     s_     t     u�     v�     w     w�     x�     yF     z     zU     z�     {�     |K     |�     }�     ~�     �z     ��     �m     �     ��     ��     �@     �e     �     �O     ��     ��     �-     �y     ��     ��     �$     ��     �     ��     �Y     ��     ��     �;     �n     ��     �     ��     �W     �5     ��     �U     ��     �<     ��     ��     �o     ��     ��     �F     �     �B     ��     ��     ��     �&     ��     �     ��     �     ��     �     �a     ��     ��     ��     ��     ��     ��     ��     �"     ��     �;     �(     �C     ��     �d     �	     �      ��     �0     ��     �     ��     �m     Ŝ     ��     ��     �     �5     ǂ     Ȝ     �&     ��     �[     ˩     ��     �     �     �>     �^     �     Ҁ     �)     ��     �     �u     �     �]     �(     ك     ��     �j     �     �r     �      �     ��     �     ��     �x     ��     �O     ��     �V     ��     ��     �c     ��     �_     ��     �c     �i     �     �S     ��     �t     ��     �     �;     ��     ��     ��     �b     ��     ��     ��     �Y     ��     ��     �%     �     ��     ��     �t     ��     �F      g     [     �     �     �     �     �     �     �     	�     	�     *     �     �     �          A                    �     �     H     }     �     "     �     ^     �     h     �     �     �     �     �     '     $     �     
     D     v     �     ;     g     �     �     H     �     �     �     �     �      @      �     "�     #G     #x     #�     $     $^     $�     %f     %�     &K     &�     '{     '�     (1     )     )s     )�     *l     *�     +)     +�     ,Z     ,�     -     -�     .5     .�     .�     /g     0�     0�     0�     1@     2h     2�     3     3l     3�     4     4u     4�     58�               ?>=<;:9876543210/.-,+*)('&%$#"! 
	                                                                 ����������������������������������������������������������������@ %$#"! 
	                                       ��������������������������������������&  �   �� �   �� �   �@ �   �  �   �� �   �� �   �@ �   �  �   ��  �   ��  �   �  �   �~  �   �}  �   �|  �   �{  �   �z  �   �y  �   �x  �   �w  �   �v  �   �u  �   �t  �   �s  �   �r  �   �q  �   �p  �   �o  �   �n  �   �m  �   �l  �   �k  �   �j  �   �i  �   �h  �   �g  �   �f  �   �e  �   �d  �   �c  �   �b  �   �a  �   �`  �   �_  �   �^  �   �]  �   �\  �   �[  �   �Z  �   �Y  �   �X  �   �W  �   �V  �   �U  �   �T  �   �S  �   �R  �   �Q  �   �P  �   �O  �   �N  �   �M  �   �L  �   �K  �   �J  �   �I  �   �H  �   �G  �   �F  �   �E  �   �D  �   �C  �   �B  �   �A  �   �@  �   �?  �   �>  �   �=  �   �<  �   �;  �   �:  �   �9  �   �8  �   �7  �   �6  �   �5  �   �4  �   �3  �   �2  �   �1  �   �0  �   �/  �   �.  �   �-  �   �,  �   �+  �   �*  �   �)  �   �(  �   �'  �   �&  �   �%  �   �$  �   �#  �   �"  �   �!  �   �   �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �
  �   �	  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �   �   �uuuuuuuuuu                                                                                                                                �����������~}|{zyxwvutsrqponmlkjihgfedcba`_^]\[ZYXWVUTSRQPONMLKJIHGFEDCBA@?>=<;:9876543210/.-,+*)('&%$#"! 
	 � &      �       ��	��	:0            �C+	!;9�� F�� 9�� 78 [\ cd     uv ��	��	 :0           A ^ � &Q����� ��	��	:0            �B |� 9�� ɭ	ϭ	:0           ez6RU ��	��	:0            Z ��	��	:0            S  Ů	ɮ	:0            � 60�� �	�	:0            ZOS ��	��	:0            w Z\ ��	��	:0            [ 4+�� ۯ	߯	:0            W 
C" b��   ��   ��	��	:0           � � ���L Ӱ	װ	:0            � ��	��	:0            Q @B ��	��	:0            �HK ±	Ʊ	:0            X[ �	�	:0            $ 0	"#   ��	��	:0           `��� ��	��	:0            L �	�	:0            R !6�� ��	��	:0            Z +%�� 8�� ��	��	:0            ^ )��  �� ܳ	�	:0           [ � � ��	��	:0            � ^c &�� ��	´	:0            �O�� �	�	:0            w
  ��	��	:0            �
IL !$ ��	��	:0           ��8P�� �	�	:0            � -F( ,`"�� A�� �� -4   ") 5�� !�� �� &�� ,�� �� ��	��	*:0             * F a p u � � � �]�-K�2

-02Ll�� �� ��� ��� U�� 
 
6: ,0  6��   04 C�� ;? n�� ��	�	.:0           6 [ q � � � � "Zp	\`m�-5 '�� ��	��	:0           2 �*
?�� 	:D cm ��	��	:0            � �ow  �	��	:0           � � 
5@ )�� ��	��	:0           � � $��   к	ֺ	:0           � m$	*6 ��	��	:0            �)FL 
  lr ��	��	:0           � &8�� ڻ	޻	:0            8 @$	!^$��  
  
 `j 	<F 
,6 �� �� %  
 
<F q{ #��  
  ��	��	&:0       
      ! " ' + , / : � � �( NW 	(1 ��	��	:0           � �d2F6FC/�� \�� �� 28 .�� 
.4 �� )�� 6�� ߽	�	 :0           � � � Z_qrx2JR %�� ݾ	�	:0            � 29�� ��	��	:0            � !|� ��	��	:0            2>�� ֿ	ڿ	:0            o# ��	��	:0            &+px ��	��	:0            ]4A ��	��	:0            �1G�� ��	��	:0            ��� ��	��	:0            �1&�� ��	��	:0            } 2 ��	��	:0            � -�� ��	��	:0            p	+3 nv ��	��	:0           r�$1L:9@ 6= #�� OV |� "  ip p�� ��	��	 :0           ] � � � �f��	$�� "  %�� ��	��	:0           @ � j[
�� 	+4 ��	��	:0           O �(5'+ :�� 
	04 ae ��	��	:0           d ^  �� ��	��	:0            �1��  $�� ?�� ��	��	:0           [ d�!&��   FI 
7:  ��	��	:0           � �����!&3�� 8�� ��	��	:0           � 	
  & ��	��	:0            ##0�� *�� ��	��	:0           ��& ��	��	:0            @	)& ' :�� #�� ��	��	:0             � #�KQ ��	��	:0            < 

'#z� $��  A�� ^f ��	��	:0           N[i���� ��	��	:0            U&/ ��	��	:0            U*G.!		$&F�| �� u�� x�� ?�� �� KN EH 
14 /2 x{ ad :=  (�� �� 
58  �� !�� 8�� d�� ��	��	::0             P X Z m � � � &gj�����fgsx$F	JO 3�� s�� CH ��	��	:0           v fx�!�� kq �� ��	��	:0           � � � .[c ��	��	:0            �+$F%9C 0�� 8�� +�� )�� ��	��	:0           � ]px& ��	��	:0            v 4-Fx!c*�� �� CJ P�� 29 /�� r�� !ho  �� .�� 7�� m�� (�� 9�� ��	��	:0           W � � px|�.F!,5 FO  H�� h�� ��	��	:0           X � jx! ��	��	:0            �&@�� gu ��	��	:0           s�"
:H -�� ��	��	:0            �<h�� ��	��	:0            � 
5< ��	��	:0            0 [b ��	��	:0            �26�� ��	��	:0            o
 ��	��	:0            s+80	/8 �� ]�� Z�� ��	��	:0           ^ s � `(_k ��	��	:0            �-2)/ #��  ��	��	:0           6 ��
 `i ��	��	:0           � �!+ ��	��	:0            .&lr .�� !�� "�� ��	��	:0           i et�9��  �� a�� ��	��	:0           ,e�v ��	��	:0            F \c ��	��	:0            t&2 ��	��	:0            $ ��	��	:0            %, ��	��	:0            1)�� ��	��	:0            } ms �� ! ��	��	:0           � � �
(1 ��	��	:0            h #. ��	��	:0            � ,<�� ��	��	:0            �K	g�� DP ��	��	:0           q �$) ��	��	:0            ! wz ��	��	:0            t	&) ��	��	:0            �/"% EH ��	��	:0            � MQ ��	��	:0            � ��	��	:0            wz� )�� ��	��	:0            m $!�� ��	��	:0            $�� ��	��	:0            ,�� ��	��	:0            �)W\ ��	��	:0            1�� ��	��	:0            %�� ��	��	:0            -) �� ��	��	:0           AO /�� ��	��	:0            � 
  w ��	��	:0            � �� ��	��	:0            �C%=�� Y�� �� A�� ��	��	:0           � � C!+&	#- `j ( % 
9C �� ��	��	:0           � `ab*8�� ��	��	:0             "%�� ��	��	:0            �2 ��	��	:0            � KU ��	��	:0            L
(/$�� ��   �� ��	��	:0           ` | WY87/C�� =E $�� '�� ��	��	:0           � � � 4F	N:<$  �� A��  # 4�� 
*0 ag -3 ��	��	":0            W � � � � � h�  ��	��	:0            05 &+ QV ��	��	:0           ��C
8@ ��	��	:0             +2 ��	��	:0            $	RX %   �� ��	��	:0            V \ �
	"
:A "�� (/ ^e �� ��	��	:0           V � �<-5@CF9+
&x!.
!� B�� I�� b��  �� P�� "��  @��   &��   U�� :��   :>  	(,  �� ���  #��  $  �� [_ FJ ��  ��	��	L:0               < A y � � � � +-2]b���
\s|������� ��	��	:0            #5!�� ��	��	:0             �a�� ��	��	:0            � %# ��	��	:0            e RZ ��	��	:0            �88B Y�� ��	��	:0           ~ � 8�� &+ ��	��	:0           %3)�� ��	��	:0            J<	&N)		(.�
# Y_ &, !  "�� Z`   u�� �� !        TZ     ]c 	;A 	   dj 
FL _e !'  �� z� ��  �� K�� ��	��	L:0            V \ ] i ~ � � !&7;NX^b�����	y���)]i ��	��	:0            J8#)�� �� ��	��	:0           39 ��	��	:0            F 
 ��	��	:0            N1:�� ��	��	:0            } *7 ��	��	:0            EU^ ��	��	:0            �   ��	��	:0           ���C6  >#O#��  y "�� #�� ;�� ,�� $�� R��  NT ��	��	$:0       	    h � � �Zz����(�� ��	��	:0            �
 ��	��	:0            38> ��	��	:0            �
 25 ��	��	:0            ��� ��	��	:0            -4/�� ��	��	:0            W #.7 ��	��	:0            �, �� ��	��	:0           ��F$��  KS MU ��	��	:0           W�kx  ��	��	:0            
 >/�� ��	��	:0            �(%)�� �� ��	��	:0           � 8 % ��	��	:0            3)�� ��	��	:0            8@ ��	��	:0            E ��	��	:0            -&+ ��	��	:0            <'�� ��	��	:0            ;�� ��	��	:0            � �� ��	��	:0            /%1�F!!"3x3 �'�� 
5< �� {� \c   ���  �� ?F ,�� NU Za �� =D (�� U\ 8�� J��       BI & ��	��	>:0            : < L e } � � � � � )f�{|�����	!4CI _e 
 QW TZ pv $�� �� ��	��	 :0           ! � � $��	! ��	��	:0            � 2.�� 2�� P�� NR ��	��	:0           � �*5 ��	��	:0            @ K\�� =I R^ ��	��	:0           q ���� ��	��	:0            � x ��	��	:0            �bi �� JQ ��	��	:0           � � d!�� ��	��	:0             =�� -5 T\ � v~ ;�� EM |� �� ��	��	 :0            4 D � � .Id
 ��	��	:0            	/UX  
	(+ nq 
69 %( WZ NQ ��	��	:0           ���TU��  ��	��	:0            �!x%"��  ��� ��� dg ��
��
:0           �|
! :F
"CI 2�� -��  	6< �
�
:0           � � hx�	MW ��
��
:0            ;
.7 ܁
��
:0            
<C 	/6 ��
��
:0             S] .�� ��
��
:0           . � F/5@C9(#)'%$Ox
?
	�/�� BM "�� !�� '�� ?�� 9�� ��   "�� �� BM #�� CN Y�� -�� ;�� 
1< *�� U` 	3> oz >I  �� s~ �� :�� &  �� "�� @�� z� ��� ��� 
"- R] ]h *5 !�� 
0; w� \g %0 �
��
V:0       "           $ ) * / ? A _ ` f g #=t��� cpw|�����
-+!%$GB	JN�� O[ .�� �� %�� ) w�� ��� I�� " ��
Ɇ
":0            ^  p��

5& bq m| l{ �� Xg ��
ʇ
:0             8 ��2O�� ��
��
:0            �  2#�� $�� T[ ��
��
:0           � �� y~   �
��
:0           ���LB1{� e�� dl =E  !�� )�� ��
��
:0           p � � � +���� ��
��
:0            ( ,�� 	(3 	-8 �� +�� 0�� ��
Ȋ
:0           d � bz�Kx�� ��� �� ��
��
:0           q N�� ԋ
؋
:0            > �� ��
��
:0            � 7�� ��
��
:0            $HQ Ɍ
͌
:0            F �
�
:0            / 1��  �� ��
��
:0           25
# af Ѝ
ԍ
:0            0.; ��
��
:0            %#4 ��
��
:0            -F O�� 
BK Ď
ʎ
:0           � ]	.2 ��
��
:0            � 
09 ��
��
:0            � &>
6B �� �� GS lx 2�� %�� ! �� ��
Ϗ
:0           � � � � Wl�<e�� ��
��
:0            � �.'��� >��  ��  $ <�� ې
�
:0           � � -��54��  �� TY ��
��
:0            W�t| # �
��
:0            !bj ��
��
:0            � Ò
ǒ
:0            � )   �� �
�
:0           56J�� ��
��
:0            't� ʓ
Γ
:0            %# �
��
:0            +("	2D%�� @F \b �� bh " ek (�� F�� �� ��
��
 :0           % � � +��m�!�� " 	.5 ��
��
:0           � ��$,�� 5�� ϕ
ӕ
:0            �)(�� ��
��
:0            #)#& �� -�� ��
��
:0            � 29�� �
�
:0            � "* ��
��
:0           	 D FO ��
��
:0            5  
 ܗ
��
:0            = ��
��
:0            '# ��
��
:0            &F(W6�� wz �� '�� �� 3��  <? hk hk kn BE  ˘
�
(:0           M � � � 	-������3M�� �
�
:0            {RX " ��
��
:0           �  "& [_ Ú
ɚ
:0            �� �
��
:0            -$+2 �� BI ��
��
:0           � p�!��   <B ԛ
ܛ
:0           � ��-7�� D�� ��
��
:0            � " ��
��
:0            J.0�� �
�
:0            �$�� ��
��
:0            m # ��
��
:0            � 
)RX kq    ՝
�
:0           � � #@�.SZ JQ ��
��
:0           ��8@ ў
՞
:0            � 5? ��
��
:0            Ait ��
��
:0            �! ��
ğ
:0            � 5�� �
�
:0             
�	)  g�� ��	�	 ��
�
 
 NZ ��
��
:0            � 5qz ݠ
�
:0            ^1U�� ��
��
:0            } L	��� ��
��
:0            ��� ѡ
ա
:0            �,�� ��
��
:0            �
+' "#�� GP aj �� )2 ��
��
:0            � � �Zb %- �
��
:0           �& ��
��
:0            � ģ
ȣ
:0            �DN �
��
:0            &EN ��
��
:0            B�� ��
��
:0            4
U�� 
=J ڤ
�
:0           W �! �� ��
��
:0           ��/	, M�� :B t| "* '/  ��
̥
:0             r���� /-@(	C
	,�2; ox �� �� i�� 	5> r{ !�� )�� 
5> '�� 	-6 
3<   \e $�� DM BK   ��
��
0:0                # % ) 1 9 A � �����R_ '4 jw ��
��
:0           ��/ 
 ��
��
:0            :& #��  
 
 cm 	1; �� �� `j ۨ
�
:0            �������	��	�
 ̩
ѩ
:0            � 9(�7"GU�� /��   P�� � :�� ( ��   #�� ��
��
 :0           _ d k � � [\�(
7N5:#D?�� JS >�� *�� EN X�� "�� �� "�� ��
��
":0           %  � � ^hi�+#�� $�� ��
��
:0           [ ^ &	2	"]   ��       [` X�� 
 TY �� /��   �� ��
ʬ
*:0            ; i � � � � � � f�
[b ڭ
ޭ
:0            � /&. mu ~� ��
��
:0           ~ v$,
 MR  �� 2�� 8�� '�� ��
Ǯ
:0           ^	[p��� ��
��
:0            r	".x| FJ fj hl ?�� HL �� ��
ϯ
:0           � gj��+"�� ��
��
:0            be ˰
ϰ
:0            B1
+/ 
 �� 7�� �
��
:0           ��'2< ��
��
:0            ;�� ұ
ֱ
:0            ' �� ��
��
:0            AS ��
��
:0            /�� Ų
ɲ
:0            % �
�
:0            �
FP ��
��
:0            7!s ��
��
:0            # 	NT ۳
�
:0           �9!$�� �� ��
��
:0           = L�� ��
ô
:0           ��"C9$x,G|$�� #�� L�� *�� 
26 '�� $��  TX  $ "�� 4�� U�� ;�� b��  
04 �
��
2:0            < A _ u y � ![f|����dl ɶ
Ͷ
:0            n B 	3B\c 	6= RY CJ �� KR �� ,�� 9�� @�� �
��
:0           Xaeyz{Fx�� em 4��  �
��
:0           Xax|&)�� ��
��
:0            s6�� Ѹ
ո
:0             �� ��
��
:0            � $W] .�� ��
��
:0            f$ ˹
Ϲ
:0            f+�� �
��
:0            �&! VY ��
��
:0           U�� ƺ
ʺ
:0            71�� ��
�
:0            2 ��
��
:0            O#�� ��
��
:0            9!
kr �� �
�
:0            BOF3!!#_$, 
;C U�� L�� }�� %�� x�� # 0��   �� 	,4 lt 2�� ��
��
":0           aewxy{���OF3  
/8 F�� U�� " ��
��
:0           wx{BG�� �
��
:0            e2&C�� |� ��
��
:0           o�

 MQ ʾ
ξ
:0            � �� ��
��
:0            � ��
��
:0            / #fp ��
Ŀ
:0            �L	 �
�
:0            �
+5"-�� _c V�� CG DH ��
��
:0           � S^��
9O1> PU @�� �� LQ 3�� ^�� ty 9�� ��
��
:0           � � 2Ww��-)�� ��
��
:0             V[ DI ��
��
:0           / �5
 W�� ��
��
:0           �^-U�� ��
��
:0            6 \a ��
��
:0            (18/4 %�� 0�� ��
��
:0           ,23
VZ ��
��
:0            F8�� ��
��
:0            3�� ��
��
:0            F
CM ��
��
:0            N�� ��
��
:0            -	@K   ,7 ��
��
:0           +7-= ��
��
:0            +  ��
��
:0            )
8)"!(. 	4: ~� ou �� ��
��
:0           !3JR)�� 
 ��
��
:0           JK  ��
��
:0            
    	 ��
��
:0           8"  ��
��
:0            =kx  ��
��
:0           56{� ��
��
:0            7 ��
��
:0            7� ��
��
:0            !�� ��
��
:0            .�� ��
��
:0            %	:B ��
��
:0            N ��
��
:0            �|� '�� ��
��
:0           � �  ��
��
:0            �!
,B[a 7=  �� 	*0 $ �� V\ HN #�� ��
��
$:0       	    � � "4c����5-�#,p+�� V�� ��� #*  
5< �� �� 
	 mt &�� /6 .�� mt [b "�� ��
��
.:0            � � � 5DI������@nw ��
��
:0              ),$* z� 
$ TZ ��
��
:0           #��
$KQ �� ��
��
:0           i�+	#�� [a dj ��
��
:0           ]�B
*1 $�� ��
��
:0           ��5-	+(=h}� $�� =�� 
2: nv �� :B BJ &�� \�� �� �� LT 	6> 
JR ��
��
,:0            � � � � � � ]�����u~ $- /8 ��
��
:0           - � � 0 y %�� 5�� ��
��
:0           k�74A  �� ��
��
:0           #$. �� ��
��
:0           
��� 	FK ��
��
:0           P$105 ��
��
:0            2!MP  # �� ��
��
:0           &*0 ��
��
:0            G(2 ��
��
:0            P84��   #* :A ��
��
:0           � H��/H�� ��
��
:0            -NB=�� X` N�� ��
��
:0            � �@F ��
��
:0            07,�� ��
��
:0            $(G�� ��
��
:0            �rz ��
��
:0            � fm ��
��
:0            y .4K 
"F�!% ^�� �� 	 	*.   +/  hl "& |�    �� 	26 FJ  .�� -�� ��   �� ��
��
>:0            q s y � � � b~�����
gx���B(0)'
2#B=.�`f 2�� 
39 
9? <B .4 A�� 2�� ek  
6< �� NT 
 OU  ]c +�� 
% :@  8�� # fl nt 
.4 kq ek &�� ;A \b ou 5�� ag Q�� y %�� L�� ��
��
R:0             % J N Y � � � � � � 3~�������ej���
G((2 KQ  #�� # %+ ��
��
:0           P ` �o�8�� ��
��
:0            38"�� ��
��
:0            3
C0
Dy| �� 
 IL lo   X[ 3��  N�� qt ��
��
:0           O � � � ��5��  	$+ �� ��
��
:0           � _�# ��
��
:0            � )�� ��
��
:0            11(�� ��
��
:0            2 	 ��
��
:0            Q(0 ��
��
:0            ! ��
��
:0            !�� ��
��
:0            &�� ��
��
:0            � :?LR >�� �� ��
��
:0            h�9"�� ��
��
:0            29"& ��
��
:0            �R,7)1	8'	)		$

� 
 .1  �� �� �� �� := tw )�� JM 	 �� x{  # 
 	FI $' �� 
 ]` kn 
 	69 
IL z} �� %��  gj   03  or �� 
  
), ]`  	RU 
  
RU  [^ �� �� kn '��   JM qt 
	  !$ �� ��    ��
��
b:0       (    ���� $%&'()*+.01234568;<>CDFGHJLMO %�� ��
��
:0            78 ��
��
:0            306 ��
��
:0            (uz ��
��
:0            O)	AE # ��
��
:0           1Q/6 ��
��
:0             % 9? ��
��
:0           (HP'#) "�� ��
��
:0           %;5<   	9@ ��
��
:0           -FH	 ��
��
:0            !4< ��
��
:0            ls ��
��
:0            .�� ��
��
:0            *0< ��
��
:0            :
CS ��
��
:0            �,  +�� ��
��
:0            �go ��
��
:0            *ip ��
��
:0            N
 jm ��
��
:0           $�'}� ��
��
:0            ;@D ��
��
:0            ,  ��
��
:0            �&@H ��
��
:0            �  ��
��
:0           8�$ ��
��
:0            �!& ��
��
:0            d0K�� ��
��
:0            �-
:A ��
��
:0            � �0��� D�� ��
��
:0           � �	�0bh �� 2�� ^d ��
��
:0           � � `�2;�� ��
��
:0            � �� ��
��
:0           ��	G>B �� =�� P�� ��
��
:0            �'JO ��
��
:0            �& �� ��
��
:0            	 fj ��
��
:0           �15 ��
��
:0            �ag �� ��
��
:0            ^43�� !% ]a ��
��
:0           W +�� *�� ,�� ��
��
:0            ^ ', 
 ��
��
:0           M �+ ��
��
:0            0�� ! 
,6 ��
��
:0           � ��+�� ��
��
:0            �DJ ��
��
:0            =KH�� ;@ ��
��
:0           q �"%�� ��
��
:0            � +�� BJ ��
��
:0           =]   ��
��
:0           � �
-(=2 �� "�� "�� ,�� >�� 	 	 ��
��
:0            ` ����� ��
��
:0            Hdl ��
��
:0            "�� ��
��
:0            
 17   	 ��
��
:0           E G ��
PX NV ��
��
:0           H � ~� %�� ��
��
:0           ��5&�MDI =�� �� 6�� �� ��� 
(- ch ]b TY ty ��
��
&:0       
      # i y � gv���LU ��
��
:0            + !
# v~ nv ��
��
:0           Z � �&, ��
��
:0             
!
    +�� " !&  ��
��
:0            Z � ���� ��
��
:0            K	��� ��
��
:0            q  JO ��
��
:0           gt*�&
A FL -�� ^d  ��� ��	�	    NT ��
��
:0             w � � 
4: ����:0            � 12")  ����:0           } �.2x$�ov �� �� 
  ]d �� 	 <C gn $�� -��  PW .�� T�� &�� ��� ��� :�� x Հ�*:0           X ~ �������i|�Nx�� z�� ����:0           � |&:�� ��:0            i �� 27 ����:0           =�� ��:0            ==C ��:0            �18'!20�� *�� >@  �� �� +- ����:0           236:; 7< ���:0            MT ����:0            � !2	

Y�� or ! fi %�� g�� %( 47   
 VY #& �� ��Յ&:0       
     � � � 9<?A}��)+2.A%�� jn w{ A��  �� .��  ?�� &�� ݆� :0           � #O]v�����   ه߇:0           *P!( ����:0            �@	*4(&7!2-/
�	 uz  &��  ;@ .�� L��  % OT ,�� |� 7< " NS 4�� 
 ,�� ! $�� ?D 
38 �� )�� jo 	). gl ^c P�� Z_  "  % �� 6�� x} (- 
9> �� lq ���P:0                   % / 2 4 8 @ � � � � N����[���	kr ΋ҋ:0            @G/�� N�� _�� 1�� $ 
$, BJ ���:0             P � �2 SY %�� ͌ӌ:0           mz~� 
<A �� ����:0           ��cm ����:0            %1 1�� ߍ�:0           ,22%�� ����:0            oSX ����:0            Q8'�� ܎��:0            3fs ����:0            H�� ����:0            0'�� Ϗӏ:0            ;
PT ����:0            N  ����:0            � -5 ��Đ:0            N,IN ��:0            �.5 ����:0            % ����:0            :&JP <�� ԑؑ:0            s,%�� ����:0            �
 ����:0            �G2	0"''�c�� K�� Y�� # 	:B /�� >�� S�� .�� 
IQ /�� & bj (�� 2: �� ��  ( >�� �� ̒�,:0           P � � � � � � �����,$( �� CG ����:0           ��-9�� ��:0             0,�� ����:0            �9�� ����:0            2�� ܕ��:0            %>$�� ����:0            �7	GM ����:0            $�� ϖӖ:0             )w~    :A 
]d ����:0           1C"BI  KR ����:0            ?R �� ���:0            )'�� ����:0            18A ��Ę:0            ?09!�� JK B��   ��:0           � � 2� 9(#N9$���  �� J�� $ .��  �� 
  `e 
6; LQ uz 9�� =B hm  /�� K�� KP �� 0��  
05 TY 
 ?D �� )�� ��Ι0:0            _ ` f p � � � � � � �����N{� "�� ��:0           � i9Nd�� �� ���:0           _ � .9%>IP �� }� .�� ip 
3: U\ �� ,�� ���� :0           X _ m � � � & 2W�� 0�� ����:0           � �	nz ͝ѝ:0            � 2
,G  UY �� +�� SW �� (��   
NR rv ��� :0           � � � � ���341:�:F303LG. �A�� 
$* [a W�� 
"( ]c �� K�� �� 8�� J�� �� ^d �� e�� -3 >�� 28 x~ .�� KQ CI @�� 	5; JP 

4: TZ &�� :�� 	4: 3�� $* �� ����B:0           W n } � � � /�dhnx{������������'5�� qw աܡ:0           � �MW ����:0            � �2'4#RY A�� s�� ��� ��	�	 2��  �� ����:0           � ��+2	,C	*/ TY 3�� 9�� �� +�� :? ). Z_ [` ����":0           � � ]��TU��,>�� ����:0            � ����:0            ��-54CG.!+9(#&K1:	0�F"87N )&!
-
	/"+16$:OFx!	=.	,>&!	�	,/ kn IL  �� 3�� <�� tw +��  �� "�� g�� �� .�� t�� 
7: (�� >�� X[ B�� !�� _�� >�� �� 7�� 9�� ]` nq il @�� �� AD #��  -�� )�� ��� K�� TW �� 3�� )�� 6�� "�� �� 25 �� @�� P�� tw "�� t�� dg �� 
 6�� fi 
36 ?B @�� $' "�� %�� %�� �� 
>A hk  �� 2�� sv   IL or 	*- O�� IL �� %�� 	), 
 	+. y| EH 7: _b �� �� ad 
7: 	 X[ ,�� &) 9�� C�� 7�� 1�� mp �� �� I�� #�� �� I�� O�� V�� TW �� AD vy #�� Z] !�� M�� 5�� c�� n�� ��� X[  7: lo 69 TW ^�� 9< ,�� 
;> 	<? mp -�� ! -�� ;�� F�� W�� )�� PS �� CF AD �� Z] GJ ֤���:0       p          / 7 @ A L P T X Z ^ _ d f h i q } � � � � � � � � � � � � � � � � � � � � � � � � $)3EHQWYpsx������������2Z[fhijvwx|������������������	L&
 4: QW .�� <�� O�� ����:0           $ �EO ���:0            �/)
9�� t{ jq  '  )�� % 
 % ���� :0             � ���75  
  
HK SV ����:0           � [^	18 ʲβ:0            1[e ��:0            �$,�� %     	5=   ����:0           ' ; Q R S � � " #�� ����:0            �12w )�� ����:0           } �  Դش:0            ��� ����:0            � (��  �� ����:0           ��-?E TZ  & LR ݵ�:0           
Vpx ����:0            ch Ŷɶ:0            " ��:0            � !5�� ����:0            � 0<�� ����:0            �
(x.&F��  4�� )�� "�� ݷ�:0           % S|��#0',�� ty 1�� 0�� EJ +�� ����:0           B ~ � � � �%. ����:0            �  ����:0             
!	-$8��  % @E 4�� �� ۹�:0           );>Fu�� ����:0            � 
 պٺ:0            �N$��   ����:0           � � �$  �� ����:0           n �xS�� ��:0            |�� ����:0            l
=F ����:0            k963= ,LS 0�� :�� �� Y` #�� ټ�:0           � 2Z���>&3�� :�� ����:0           ���� �� ��:0           �jPW ����:0            >)
 þǾ:0            1Xb ��:0            �((A�� �� B�� ����:0           d �4R�� �� �� ǿϿ:0            � �'1�� ����:0            �B/5@(-&CF
!!+"�TZ !�� dj #��  *�� N�� 4�� pv '- ek *�� [a #�� v�� 
8> 
 ag  L�� {�� �� 
5; 1��  �� -�� U[ �� �� ,�� bh /5 (�� &�� !�� ^d 	5; }� )/ ����R:0                   # % 6 8 A � � � � � � � � � � � ),Q]dft���<	 �� NU �� ����:0           � G�(5-
C)"(x�%�� 9�� 8�� 	8? �� /�� ?F /�� T�� ov 	 3: %�� & �� "�� �� "�� 1�� 
4; u| ��  �� V�� Z�� <�� #* ����8:0               6 7 v � � � � #-Qf���|�5F%:0_g n��  3; 9�� Z��  ����:0            � � O h�[b ����:0            �AI �� ����:0            �mt ����:0            ��� ����:0            ��� ����:0            
 #* (/ ����:0             &/54
2BO=.�+��  (�� 
05 E�� H�� 8�� C�� 	$) 8= 	). DI 	5: 9> 1�� MR I�� P�� N�� # !�� +�� =�� 6�� ����6:0                 4 HK�����ew���=#* �� %�� @�� ����:0            ��$�� " ����:0           ) , �� ����:0           ��/HN �� ����:0            N
ty ����:0            � ����:0            � %%3=�� <�� =�� ����:0           e  {Y_ KQ bh v| ����:0           � � �$, ����:0            bty ����:0            m +�� %- ����:0           ��&�� ����:0            �54! ��   �� ����:0              �!.�� ����:0            Z |� ����:0            �*+(�� �� ����:0            ]�� ����:0            �
  ����:0            s{� ����:0            �'-�� ����:0            �$#	"�"�� !��  hm  
   $) ej �� &�� KP 	 
49 ��  	27 �� 

 	', +�� ����4:0           B { � � � � � � � � Mf����(&V] /6 BI ?F *�� 9@ ����:0           � � � 	�-2(ch R�� 	(- &�� hm NS ����:0           �m��& ����:0            ��� ����:0            ���  ����:0           �*@�� ����:0             x ����:0            ( ����:0            	-7�� ����:0             +7'F:
 ��  B�� H�� �� _�� 	8> ���� :0           [ ^ j � �ixN% 
?F -�� S�� ����:0           � � � FL�� ����:0            x3Y^ ����:0            ��� ����:0            � 1
7> ����:0            � ����:0            � ,�� ����:0            � /�� ����:0            m  ����:0            ��5($&#	N(&+
2	#'/	+2...B�VZ RV 7��   $�� ;? |� 	+/ x| hl 
 JN 
! \` 
(, 48 48 os  vz �� 
/3 @�� 	)-  �� @�� DH *�� "& z~ [_ 

 $( 8< @D  

  &*  
 pt 
-1 <@  $ Z^  LP ~�  6�� gk �� 
37 !��  (, Y] Y]  Y]  +�� �� "�� +�� SW 
 |� 
 	+/ 
	6: rv 
HL qu Y] 	!% qu J�� 
(, bf IM " 	+/  NR %�� 2�� !�� |� I�� 	*. 59 �� �� 	.2 �� Z^   NR cg %��  hl �� !�� hl 
 #�� 9�� ko "  IM H�� $( " �� *�� 2�� =A �� 
  $" ,0 rv *�� 3�� S�� 
 >B !�� 
  ?C  "& 26 
 CG 
 [_ 6: �� ;��  %�� $( '�� �� 'gk ~� B�� S�� ^�� m�� #' X\ #' 
/3 DH �����:0       o      % ' - 8 B v � � � � � � � � � � 	$+./17CDEINOPSU[\]cdegitv|������������������������������m�������������������� W` ����:0            0 !�� ����:0            -|� ����:0            �
0)/$�� -��   F��  ����:0           � #w8#�� ����:0            � HP ����:0            � `h ����:0            �

Xc }� ����:0           _i?E ����:0            � 2im #�� 59 ����:0           o�  ����:0            � v� ����:0            �*;�� 9�� ;�� ����:0            � 	&	3< ]f ��  �� 2; " ����:0           k���"�� ����:0            �#8�� 4>  ����:0           B O n (�� ����:0            l*�� ����:0            �	5< ����:0            +�� ����:0            � ����:0            � )0 �� ]d ����:0           v y " ����:0            �+�� _g ����:0           X��� ����:0            Y F, 	   :�� ����:0           � dx�<'9 P�� ,��   X�� FK sx  rw uz �� SX  ����(:0            ) � � %2Y	z�!4�� ����:0            )-CI �� ����:0           � � 5<  ����:0           6B	Rd ����:0            � ks ����:0            �&OV &��    ����:0           � ��� ����:0             
 T\   9A ����:0           ���,4$-&	
� &, #�� 
17 1��  "(  KQ GM B�� 	'-   #�� >�� 
 
 
  
  
  
   y ����<:0                  ' / 5 6 7 8 ��������& ����:0            �S] ����:0            4;B ����:0             5U^ 6�� ����:0            ^-
4> ����:0            6 -2$@#) 	 Z` 	39 e�� 8> ;�� /5  $ ����$:0       	    0 2 7 � � fl��#1PX V�� �� ����:0           B } � "
2 '_j lw 4? u�  .�� ����:0           � "�]9Ta ����:0            2K�7'
@#��   [�� h�� Z�� ( 1�� Yf t� ���� :0           q � � � � "�%Q_ ����:0             2+4 
,5 E�� ����:0           �m ����:0            �O,�� f�� m�� 7�� ����:0           > w�K��� �� �� ����:0           q -,�� ����:0            �C" ����:0            � �� ����:0            $ 
@H ����:0            �Nw�� ����:0            � FM ����:0            �+	1; ŀɀ:0            �� ��:0            s r} ����:0             $"�� pw BI ����:0           ' �$!  QY ���:0            ' S
$
2-)1�� 08 
/7  �� )�� ����:0           ' ?H�&.�� ����:0            8 &C�� ����:0            8 4	�&81�� &. ��� �� JR CK ' �� Ѓ�:0            l � � �dsBl�� ��Ą:0            e���� 2�� ��:0           � � 3�� ����:0             4G!;I��  6�� h�� �� Y` -�� $�� ÅӅ:0            O P T � �
�A ��  
 DN ��
�
 ��� %/ �� �� ��Ȇ :0           0 H U � � ����� ����:0            > NY !�� ه߇:0           �S@B*"�� @I �� #�� g�� Yb ����:0             ��!.�� ߈�:0            )	!L	CM R\ 	&0 !�� .�� �� 
 q{ mw �� 
  ���� :0           l � � � )��"+ ����:0            �     FQ ����:0           � a�

 nv ��:0            � 	, ����:0            9 �� ����:0            ] 1B�� ��:0            } &-8 	=H ����:0           i �& �� .�� ����:0           T i .9x�   ���:0           X 2" !*  ����:0           n �6O��  Ӎٍ:0           Zn1 ����:0            } JU ����:0            -3�� ΎҎ:0            � (-�� !  " ����:0           ` � � �! !�� OW  	08 19 ��Ǐ:0           � �	
;C ����:0            �     % ����:0           � WXY5'�� ���:0            ^+KT ����:0            ]'�� �� �� ��Ƒ:0           =y�-�� ����:0            �

 
/: ����:0            �#�� ΒҒ:0            � 		 ����:0            �  ����:0             @&C
/:?Z�� �� #0 v� ' ;�� �� U�� '   \�� !�� ��Փ$:0       	         8 A Th�2Q�� ܔ��:0            �O 	 	 z�� ����:0           R�w9H�� ��:0            �%�� ��:0            �%�� ����:0            e 4O�� ����:0             HP ږޖ:0            ;C W_ ����:0           ,�'dl ����:0            �Fu~ ӗח:0            x>�� K�� ����:0            ��#�� (�� ����:0            � (�� ov �� I�� ՘ۘ:0           �BK ����:0            n (	.8 '�� ?I ����:0            g�!73#7&�� #��  EP "�� q|  5�� ����:0           Z �  �g{�.�� ��:0            Y !;�� 
;G ����:0           � �(;�� 	 &  .6 dl -�� ^f {� ��Λ":0           d � � � ����c'C�� ����:0            �~� ۜߜ:0            � (75Jgr   r} +�� &�� &  �� �� J�� ^�� ����:0           d j � nr[^#/4�� !+ <F ����:0           B L47I�� �� }� ��Ş:0           W � �-C�� ����:0             Cl�� �� ����:0           A �@)d�� �� & 6@ ՟ߟ:0             #/�� ����:0            > " àǠ:0            S�� ��:0            � %0 ����:0            M& %, %�� 7�� ����:0           i � � .G�� ���:0            X   �� 5��  ����:0           � � _G?�� բ٢:0            �'>�� ����:0            :A�� ����:0            � fp ʣΣ:0            �?LS  ?�� ���:0           D ��!	+4 ����:0            )2? % *3 �� "�� ! Ϥפ:0           �v� 
 hr #��  
 ����:0           tuJT ѥե:0            1 C2F?*�� DL �� 
 C�� 
4< ����:0           A � ��x�'29	$X1�� QX �� 	 @�� 	7> �� Y�� [b 	 MT �� $�� Ӧ�":0           ) m n � ����?A�� R�� ��:0            �!8	A0�� ��  
07 
$+ 
/6  �� '��  ����:0           � � � � ��
$	2:  ����:0           ' � �� AI ��ũ:0           � �� B)  �� %. �� >�� ���:0           M � � ]e�]g �� ɪЪ:0           a � 	<
J  
  
 �� �� 
=G /�� _�� k��  
  
 ����":0             > E G � � ��@Xd [�� ����:0              F'V�� �� CK �� ����:0           � � H�-"[�� |� ����:0           p� C=|W^ ov 1�� =D BI 3�� (�� %�� 	 x o��   �� �� +��  x c�� ��ͭ0:0           	 
      - 4 A � � -7��	*4 ����:0            0 23�� ����:0            �/�� ίү:0            9H�� ����:0            2:.OY @�� ����:0           � �Ox!-Q�� q�� ��� ��	�	 bh #�� Ͱհ:0           w|�1O-�� N�� *�� ����:0           } w:;�� ۱߱:0            h+(  J�� A�� �� (�� ����:0           ^ ` n � -�� ͲѲ:0             !,0 �� JN ����:0           � � &, !�� 
06 ����:0           # Y� �� �� "�� ��:0           � (2�� ����:0            �B%�� ˴ϴ:0            ��� ���:0            �
 3>  ����:0           ���� ͵ѵ:0            y 2B�� ����:0            �
G	C,.N�� B��  AE 9�� V�� n�� &�� )�� �� I�� ����:0           P w � ��(
*�� \a ����:0           d �5> ɷͷ:0            � (/ ��:0            � @E ~� ����:0            �	3(t{ �� ,�� J�� 	 %�� ��ĸ:0           ��KV ����:0            �(,�� ����:0            �OU չٹ:0            �#%�� mt  ����:0           f � *	�"	/3��   :��   fn �� ,�� ����:0           � � � � 6= ����:0            ��� ����:0            1  ܻ�:0            sx ����:0            
 & 
! lt ����:0           |�9 .5 ߼�:0           _ �  ����:0            �?<�� ����:0            �>D�� ڽ޽:0            �x} ]b ����:0           
5LB�� J�� ����:0           ^�L_�� ��:0            �9', ����:0            �9<�� Y�� ����:0            �9ow ݿ�:0            �"-(CK"
2!2(�/�� �� hn �� gm 4: io *�� R�� !�� OU (�� 	.4 1�� >D   NT �� C�� ����2:0             % 0 5 A q � � � � nzm�#56= 1�� 29 X_ ;B ��  %�� ����:0           4 B � g�rv&�� "�� !�� ����:0           ��	/-(#+3.�� ai '�� 
08 G�� &�� |� ����:0             % B ^ � �#%- '�� ����:0           	 B "�� ����:0             ����:0            �0�� ����:0            I! ����:0            � Oa�� ����:0            w!- 4�� '/  �� ����:0           ! � /@ kp {� ����:0             �T[ ����:0            �  	 �� ����:0           + < \e �� ����:0            � -H�� ����:0            pN	 {�� ����:0            � #' ����:0            � 	"07 \c " ����:0           ����� ����:0            �
(-��  �� "�� %�� �� ����:0           ? ���	r{ >G ����:0           � 
++�� ����:0            � 	39 ����:0            � #@)�� ?�� �� mu 
3; JR 6> jr t| u} ���� :0           B u � � � � � -#!�� ����:0            B #�� ����:0            B +KO!9!�� �� j�� FO v�� # 3�� 
7@ ����:0           ^ n q uw��
 %( ����:0           T �
 ' ����:0            U fk �� ����:0           4 � ����:0            �`o ����:0            !�� ����:0             ,7"$zVX "�� %' ') �� �� �� 
/1 	46 �� �� `b �� wy .0 df ��  ����0:0           �$%()*-4FHR!&2�� ����:0            s,8	
R	-1  �� ;?  ��  �� �� 4��  04 	AE ����(:0           �%)*-3< )05 *�� ch 8= ����:0           N k	18$�� 	DH ����:0           231hr ����:0            2,
 ru ����:0            �,-1 .2 fj ����:0           ���,$�� ����:0            �6; ����:0            %,��  % ����:0           �7% ����:0            �	6B ����:0            �&<�� -�� ����:0           IL [�� ����:0           0�VC#+9(#1	2	:F7	C&%5021?.!	�(, ^b O�� cg 4�� F�� ^b ~� F�� hl �� %�� 3�� ��    �� dh �� +/ #�� G�� Q�� *. )- dh �� �� 
#' rv B  	04 �� �� !�� %�� 2�� 4�� H�� L�� ?C 
.2 �� ,�� �� 5�� ae -�� @�� Q�� h��  	"& �� 
   4�� PT ]a :�� lp 8�� 1�� #�� &�� >�� I�� �� "�� B�� �� �� 
15 ����f:0       *    A B ^ _ d f h n w y } ~ � � � � � � � � � � � � � � � � <� ^`io�����
*C49(%25$1!�ck (X` �� &�� 1�� _�� u�� :�� �� B�� &JR ks �� 0�� 5�� E�� 7�� 3;   �� $ fn  ��  �� |� DL �� �� ' ks �� '�� 2�� "�� ����::0            A W _ ` e p v � � �  ^fgil���+((:F52O
# `i $�� =��  R�� py   " F�� �� ����":0           ^ ` d � � � �^o!(Q[  �� $�� ����:0           ��rz ����:0            �  ����:0            Y'�� sx ����:0           *;7�� ����:0            $! ����:0            {� ����:0            DM �� ����:0            "$ ����:0            &) [�� [^ ?B {~ #�� %�� �� 4�� RU !�� 	14 )�� �� ����$:0       	    8 E G #�����2:> 4�� rv ����:0           o�*]d ����:0             (�� ����:0            d 
47 ����:0            � 7'!J�� �� } 5�� #�� �� �� �� &( 
LN ����$:0       	    � #$;HP#$ &�� ����:0           � I )�� ����:0            �EK ����:0            
!-F$"��   �� UY �� ����:0           � �x(3GN 	5<  ����:0           % L�Zf ����:0            LL  ����:0            �
  �� ����:0            �20�� T�� ����:0           b�# �� ����:0            �"2F	*�� CL 1�� "�� ;D FO ����:0            4f�x� ����:0            :F!7��  BH ����:0           � %�� ����:0            g%�� ����:0            p 
&O&1: BK x� >G BK 2�� ����:0           ckw�� ����:0            ����	�	   ����:0           � -.4>  ����:0           W�(�� ����:0            �#=�� ����:0            �
$$!9&6? A�� =�� /�� A�� ����:0           �fp�� # ����:0            �� ����:0            �MS ����:0            �K	��� ����:0            q #=?F  ;�� ?�� ����:0           2 3 B �=#�� ����:0            � ����:0             r~ '�� ����:0            S!MS \b  ����:0           � � v![b ����:0            )! 
8? ����:0           � n/I�� ����:0             �� ����:0            "- ����:0            ici ����:0            & Y^ ����:0           i � % ����:0            �&#�� AG ����:0           i _  ����:0            � U\ ����:0            v "(  
 5�� ����:0           f�(iu ����:0            �
)0 ����:0              $�� ����:0            �8b�� ����:0            � 0s} �� ����:0            � $DL ����:0            �
<$	
.0�� `�� l�� 
 
 	)1  ����:0           � � ���<;�� ����:0            � !& 

 "' ����:0           4v} ����:0            (0 ����:0            4,�� ����:0            / 
JT ����:0            :L	��� ����:0            � ����:0            �@F ����:0            � �	.E%1   Q] �� _k \h y� A�� Y�� \h GS ����:0           � � W�����!,�� .�� �� ��  R\ ����:0           v � � ���2N�� ����:0            m!!�� 1�� ����:0           ��	NU 9@  6= ����:0             � �6?G ����:0            Z&	 !�� _e 
(. ci   ����:0           ) / 4 ? @ S %�� ����:0            � Ff�� ��:0            � ";E  * ��:0           5 � N:�� E�� Q�� T\ ����:0           � � h�N>�� ݁�:0            � @$-&f<F � ,�� �� �� �� # 	+5   �� 8�� (�� 
 '1 ����(:0               ' 1 6 8 < > @ W�G�� u�� ����:0           > � ��:0            i�� ����:0            v 1�� ����:0            2�� ۄ߄:0            �VZ ����:0            L''�� ����:0            ;5L8@ S��   ΅ԅ:0           ^�B \e gp 6�� ����:0            ez 	*3 ��ņ:0           ��?'�� /9 ��:0           ��9K�"2!
0=B�  ~�� tz x~   |� ��� �� E�� f�� hn DJ  %+ &��   8> �� Y_ �� 	.4 !' E��  N�� k�� h�� ��ڇH:0           Q q w { � � � � � � � � %)-WXYl��SV`b��CG.b�� z�� �� ���:0           A ��)9%( +�� 2��    ����:0           � #2 l�&") ����:0            	�:,EL ^�� `�� �� ����:0           ] � h�)DK ����:0             	:A ����:0            ]#. ƌʌ:0            �nx ��:0            M�� %+ !�� ����:0            � �
	F)$ �� I�� % �� % ͍ٍ:0           � � � � mO3)/ �� �� ����:0           'w�#'�� (�� ��:0           � �
1: ����:0            7 !W^ !�� ����:0           l� ��:0            �&*�� ����:0            ��� ����:0             4�� ސ�:0             "*�� ����:0            �/'7�� G�� 07 ����:0            �.AJ �� ��:0           � �-!- 4��  )  ����:0           6 p,5&-
	2"�CM & G�� �� �� +�� 2�� 
 s}  ;E     $�� &0 ", �� #- S] �� )��   �� ڒ��<:0              ! 7 8 @ � � � � BLqv������	=J 	+8 ����:0           * G((
2B2
5? 2�� �� PZ IS C�� H�� ����:0           P 	��m�,*5&	0
)-B��� ��  w� %�� ' 	  �� 	  4? Q\ B�� 
9D "�� R��  |� P[ Va   &1 do  ����<:0             + 8 F � � � � � � #+Wp�������xN�� ����:0            |Fb�� ˘Ϙ:0            x	"!   �� �� $�� ���:0           ��,3 ����:0            �)!>G �� �� ۙ�:0           '1
.B ����:0            �    ��Ú:0           ��   ���:0           ���	#2 ����:0            �'�� ʛΛ:0            	 ���:0            �
 PX ����:0            � qw ��Ĝ:0             LS ��:0            ��� ����:0            U63+�� -�� ����:0           Z{
$.",�� C��  \f  ��:0           ' ��	@K ����:0            :*$#+'9+2Ox!(G=.�#�� r{ (1 9�� �� 0�� aj  ��  	,5 [d � �� ;�� }� �� ��  
$ lu L�� O�� �� lu �� [d Z�� $�� c�� 1: /�� L�� +�� 4�� ��� /�� 
GP js 
5> ڞ��J:0            $ ' B � � � 2]vy����aw|�������>?�� H�� ����:0            �+O$�� k�� ����:0           ]w(0�2:xL,
L'�� 4�� ��� %�� 9�� ��� y�� OX ir 	 ڢ�$:0       	    d � � � h|������ ��:0            j_e ����:0            %�� �� ����:0             77�� ��:0            $,4�� ����:0            �1�� ����:0            2)� 	 ٥ߥ:0           1>)$�� ����:0            1
0 ms �� x~ ����:0           � �q�GM�� ����:0            � ����:0            �
08 �� ��ǧ:0           � c0�� Zc #�� ���:0           0 ? `!29 ����:0            �:BI Ԩب:0            h0�� ����:0            �	DN FP IS lv ����:0             '�,BL ��:0            �#;�� ����:0            �46�� ����:0             2	I��  	,4 ֪ު:0           � ;t&t~ Zd ����:0           � ��ī:0            I)9�� ��:0            #v} AH # ����:0           � A3
9B $�� Ŭˬ:0           y{9
=G ����:0            _ !*�� 2�� ����:0           Y Z FN έҭ:0            +0>#!;	)- 
$( .�� +�� U�� ^�� �� )�� ���:0           _`r����X` ��:0            �&�� ����:0            �&,�� ����:0            $�� دܯ:0             T^ ����:0            ��� ����:0            � 'T_  \g ˰Ӱ:0           ���9T^ z� # ����:0           _ v�*47601C�� 9�� ;F �� &1 N�� �� H�� F�� ��б :0            W � � Z[`�NZ ����:0            vYe �� ��:0           m �   ����:0            �

	 25 	 ����:0           ��_f ��:0            �2
!�� �� ����:0           ��1.�� ôǴ:0            2(, ��:0            +
4!!3 4�� V��   1��  
"% hk ����:0           W Y Z � � ���:0            v ����:0            ils ����:0            
&"(��   
08 E�� AI ��:0           
 � �� ����:0            �$f| ַڷ:0            �$(�� 2 ����:0           �/(-:0�� B�� 0��   �� $�� D�� U�� ����:0            % �0U�� ����:0            `  ����:0            k#, �� ݹ�:0           
 � :> ����:0            V(,��  	/8 HQ ����:0           % L ��  ����:0           ��!�� ����:0            �CF λһ:0            +	4.0�"'9'
�
 $�� P�� ]�� 5��  �� 7= 
CI +�� ?��   �� {�� ��� RX �� $* I�� S�� ;A  "�� ?E ?�� >D  & 
   �� |� ���::0           W X Y z � � � � � 2��������.# 3�� ����:0            X /-@!uK�� 5�� SW Z�� tx 
04 hl 48 "&  
	59 vz ��  .�� (�� /3 tx ݾ��.:0               ! � � w�ag���<5%0!(�  �� {� ;B pw %�� /��      
 #* #*   9@ z� JQ el �� ��   ! V] @G  ��     }� �� 
  @G HO ��    cj ����L:0             # > e x � � � � � � � � � � 	����������	��� ����:0            � G�� ����:0            � ����:0            �WZ ����:0            � 
  	!'  ����:0           � ���CT�� j�� v} ����:0           � �CL�� ����:0            � -&�� ����:0            p-E�� ����:0            pNMU v�� ����:0           Y � !_i ����:0            Z ]f ����:0             �v~ ��
�
  ����:0           Y � q ) ����:0            tG!   ?G �� t�� ����:0           < � t�MS ����:0            h 	 V\ ����:0           %�� ����:0            (B9�� JR ����:0           e�  ����:0            � #
16 RW ����:0           f �5"B0�� �� '- ��    ����:0            � � v���/�� ����:0            �   [_ ����:0           ��#�� ����:0             ����:0            ��� ����:0            d�� ����:0            �  x9PS 2�� �� �� ����:0           t]|�5�� ����:0            � &�� 3�� ����:0           1 x� ����:0            n IT ����:0            (-   �� =H  
 {� ����:0           � � � $%'�54�� ����:0            ^
W_ ����:0            M7
NX ����:0            $/7 ����:0            &$�� �� ����:0           O�� ����:0            N�� ����:0             ����:0            Q ����:0            B9 ��  �� ����:0           L 2$�� ����:0            f
8@ ����:0            M  ����:0            � IU ����:0            M 8A ����:0             7%�� ����:0            $7# ����:0            $  �� ����:0           %8 
 ����:0            3	FN ����:0            6"- ����:0            B	
& EO #- ����:0           ���1DN ����:0            2	GS ����:0            0!  ����:0            $mz mz ����:0           1�� ^h ����:0           2N |} ����:0           !(3  ' :A %�� ����:0            [ c{" ����:0            �
9/:)
	 # 
.3 �� -�� R�� ����:0           � 2h	 ����:0            � Gp�� ����:0            P  (-<"
N
�.��  �� Y�� �� E�� m�� (�� 	(. -�� B�� nt +1 '�� Y_ #�� &�� .4 ����0:0           % � � � � � � � � &*+To�6  ����:0           :Z+#1
2GND�� �� pv (. �� W�� 39 qw �� HN j�� ����&:0       
    ^ f }  � � Y�j�00$�� �� !    ��  ����:0           p � � '([ ����:0            � $DS ����:0            �� ����:0            0,� ����:0            �NZ ����:0            #  ����:0            #04 ����:0            '#59 �� ����:0           9fl ����:0            % ����:0            .7 	HQ ����:0           HP7-�� ����:0            $
48   ����:0           n �  ����:0            �) 8? �� ����:0           -8J�� ����:0            " ����:0            R	3< ����:0            �		-6 GP 
9B ����:0           ��*4GF*
 �� :�� LR CI t�� ����:0             P � � � 	*C'
(\e 5�� 	 gp 8�� JS ����:0             A "�� ����:0             ��  ����:0           $ �-$. {� �� NX ����:0            � � �(1 ����:0            �$<G u� ����:0           � �pv  ����:0           ��2R�� ����:0            m
 ����:0            �7ls ����:0            $:5�� I�� ����:0            � 
-3 ^d U[ ����:0           5 {$'�� ����:0            pZa ����:0            7IM ����:0            #+=�� cj ]d ����:0           �2$
7> &- �� �� ����:0           { ��	2	$
?<D fn (�� D�� (0 �� .�� 8�� 
6> Ya ����:0           ���%. �� ����:0           � �
 ����:0            U �� ����:0            () ����:0            1)�� ����:0            J" 2/2 z�� �� *. vz � �� ^b vz ~� >B �� =�� �� >�� @�� -1 -�� ����2:0            � � � � >ESd��m��	BH ����:0            91%�� ����:0            }  ����:0            �-C�� ����:0            !�� 	 ����:0            ����:0            $4�� 	+0 ����:0           ��K'9�� ,�� 
 nu ����:0           q �8#'d        �� 	GI �� �� �� ��    SU ����.:0           ��!-3579;EIL%5/:=(�� *0 
8> 
?E h�� % ����:0            hu��:L�� X�� ����:0            h5$C��  ����:0            p�� ����:0            ?V�� ����:0            �s|  ����:0           �-%0 ����:0            � ��  	 ����:0           �  /*.c@�� TW := �� ��  8&�� (�� *�� ,�� F�� H�� P�� R�� ����:0             � =n��X] ����:0            ^)PW ����:0            &. ����:0            � '�� ����:0            vG#* ����:0            P  ����:0            K 2KQ ����:0            �)!�� ����:0            J" ����:0             &z� =�� ����:0            i �� ����:0            �8C ����:0             G2 v��  	 cl w� 	>G ����:0           P � � �29O��  ����:0           ��)s| ����:0            #/O�� ����:0            mv ����:0            03P/�� fl (�� bh  QW qw #�� �� O��   ����$:0       	     � � =������'L	%+ TZ   
06     &, %��  	5; ��  ����(:0            # u � � � Jnr���7
"�� ,�� L��  ���:0           � � �FW�� s{ ����:0           � �,w~ ��:0            �)!-B%  Z` A�� >�� �� EK 	)/  ag ����$:0       	    # � � #),p�Y�8=-�� .�� ����:0           � �	 ăȃ:0            � "-�� ��:0            � 
4; kr ����:0           �"/-@K)"G�(�� 	6A p{ #�� 0�� >�� *5 
 #. KV "- (�� �� T�� Wb [f 0�� �� 
<G "z� �� >�� Q�� f�� %0 GR ���2:0                ! & - / q u � #����w� ͆ц:0            y-G1�� Q��  [�� ���:0            �!�� �� ����:0           Z 0B�� ��:0            � .  
28 rx ����:0            �
2,	 BG ch $)  w| -�� ��ˈ:0           K���l�4&�NL@U�� 	8> QW G�� e�� +1 �� }�� 
6< ����":0            g i � � ��� 4�� ����:0            �	O	;E " ��� Ŋ͊:0           ( r w<2�� ����:0            � MT ����:0             	@�F!K�� ��� a�� <�� ͋؋:0             � � c[f ����:0            � 	 ��Ì:0             C
2:    ��:0           � � aC7�� ����:0            �  
 čȍ:0            `�� ��:0            �)&�� ����:0            1_e ����:0            Hgm ܎��:0            (
JO ����:0            5 V[ �� ;@ 	@E ����:0           -CD"�� ��:0            R
]d ����:0            E)�� 	CI ����:0           1>~� ��:0            6�� ����:0            *
NW ����:0            I ڑޑ:0            �,-4.	872- $x�K�� `�� /�� ,�� _c 04 �� 	+/ 
8< U�� D�� R�� !�� 	+/ 
 $ Q�� rv 9= ae 5�� !�� 8< �� 7�� /�� f�� r�� ����<:0             @ X h l y � � � �  !����]gp|
 hp ����:0            ��5.+	+0 |�� !& ?��  �� (�� ܔ�:0           � � � ^�.�� ����:0            ��.0SY &�� ~� ��� 
7= bh F�� ޕ�:0           � � � Z�5dl QY ]�� ��Ɩ:0           h^!'�� ����:0            � L/@$&C	!'9


9�
49  �� *��    ��   1�� �� ej UZ ;@ 	7< ot )�� �� r�� 5��  
 
6; QV 	*/ uz    % \a ch 38 
27 `e  IN qv )��  fk |�   	-2 }� )�� ��  �� =B '�� ���\:0       %     	 
    ' , 1 8 @ A h k r � � � ,2K�������V����	@I ����:0            �/"* fn !) =�� ����:0           > L � "4)2?	q 
 LV ^�� 
1; ", EO 	.8 
 \f CM #��  * Yc  �� ", =G +5 ���2:0              3 b � r����v����� IO ����:0           c� ��:0            c
2: ����:0            uw ����:0            �-:`g <�� @�� Ӟ۞:0           � phO"�� ;B ! ����:0           w��!$�� 7? ˟џ:0           ��		 :2O(=>&o!( 3: KR ��  �� &�� �� H�� "�� @�� �� FM  5< 
5< ����.:0           � � � ��]hmw������#:#2�� O�� {� �� ¡̡:0           f � �� +�� ����:0            �3�� ����:0            �9X�� }� ڢ�:0           _ �		;A ����:0            -0�� $ '�� ����:0           kl9D ��:0            � 	' )3 4�� @�� _i ����:0           �l  OW !�� դۤ:0           � �  �� =�� ����:0           � � MU ��¥:0            �!( ��:0            +�� ����:0            ?�� ����:0            �5�� 1�� ֦ܦ:0           �^@H ����:0            - C�� ;��  �� ����:0           1 � ��C)mv %�� Z��  �� &�� ����:0           � � �Ya ��¨:0            =&�� ��:0            8 9-�� ����:0            �(G�� 3�� �� ����:0           % c�7�� 	.7 ���:0           � �58NB,G#�� �� �� y� P�� ow EM i�� QY # ����$:0       	     # � � � g�e��
!��   ����:0           L ?(. ܫ�:0            �2 ����:0            o%Kx~ y�� IO �� ����:0           e q �" JV �� ���:0           � �0�� 9A �� ����:0           ) � � , ��:0            �2�� ����:0            �,IR -�� ����:0            �-!-8hr  �� $ �� (�� �� |� خ�:0           � � 1p��$�� 
2= ǯͯ:0           �  !�� 4�� ����:0           @ � (u~ [d ����:0           ��! ߰�:0            � >6�� ����:0            �9&8�� <�� ����:0           _ �	 ޱ�:0            o 2 �� `g 9�� ����:0           � >�&0 ʲβ:0             �� ��:0            �  ����:0            �&�� ����:0            �@U�� ��:0               ����:0            �
 ����:0            Fl�� Ӵ״:0            �  nu ls  ����:0           � � � � &/ ��õ:0           � C6�� F�� _�� ��:0            � +# oy ?�� ����:0           �	2(.)�� 8�� 9�� ܶ�:0           � ��
" ����:0            s�� ��ķ:0            q.�� ��:0            �Xb ����:0            �
:!2):B C�� /��  H�� # ����:0           � )���26�� ����:0            mbg ����:0            
  ׹۹:0            � #�� ����:0            ��� ����:0            � 	%( ʺκ:0            �  
 OT  ���:0           "#Q\ ����:0            7LU�� w�� һػ:0           � �17�� ����:0            } -,�� ����:0            p Ӽ׼:0            F "�� �� ����:0           �(
-5 ����:0            �
+)9%@D 
 w{ # &�� ^b нܽ:0           ^ X�91�� ����:0            �K07B2�� TX |��  H�� 15 R�� ˾۾:0           , 5 q � � (e! '�� lr ����:0            � �4	B!X�� ") 
 >E 6�� ���:0            \��#! ����:0            �
B  jo 	.3 ^c D�� ����:0             | �e-K	 N�� �� n�� 
	5< PW �� ?F \c  
	 
29   ����$:0       	    5 6 q � �\]���
K	7Fai )EM �� 6�� ?�� Z�� ��� #+ &�� X�� ����:0           7 q r � � W[ ����:0            ��� ����:0            (  ����:0           � �&5�� ty ����:0           8 � �� ����:0            2?N�� 2�� bj BJ ����:0           � ��	#�� ����:0            EM ����:0            �	 tw  �� ����:0            X)9�� ����:0            /G82@Q�� +��  d�� �� �� FI 	*- MP ����":0            P � � !y��)�� ����:0            1C=D %�� ����:0           A �fr ����:0            �<O,&3 Y] ?C 6�� ��� �� 3�� ����:0            5 7 � w��
<C""( O�� r�� 39 sy ����:0           \ � � ��JQ ����:0            b%* ����:0            �%�� ����:0            �	
', 
16 ����:0           z 9"9> ����:0            & ����:0            M 87< �� !�� 5�� ����:0           (3&* ����:0            
Zb nv ����:0            � V[ ����:0            /:3=DE�� 4; !SZ �� *�� H�� U�� *1 
ov �� ����:0            � h{��/)9/O[9�� W_ 	"*  ck }� �� G�� �� *�� 9�� A��  ����&:0       
     > C T � #2cw�<! 7�� P�� LT ;C ����:0            � � &+ ����:0            �
(-"DH $�� 
DH #��  ����:0           	!Npuz .�� ����:0           o�:> ����:0            �:#+ ����:0            �  FK ����:0           Y � "[` %* ����:0           � f$�� ����:0            � 	.3 ����:0            62�� ?E KQ ����:0            � Z%#2:N0?!�*�� 15   8�� #�� +�� ;�� dh +�� )�� L�� b�� z~ 	/3 4�� _�� %��  sw ����(:0           
  e f � � � `��:	N0	?e! Q��   ns l�� ~�� �� ��  �� >�� E�� ]�� 
%* TY ���� :0           h � � � `�>\�� ����:0            �pv ����:0            $!	~�  .��  ����:0           Z GX�71I��   4�� ����:0           � A� ����:0            �!?H ����:0            �0^x| mq \`  ��  \` DH *��  �� %�� )�� 6: ����,:0           � � ov������`� ����:0            
<+20dk "�� nu 	4; �� ,�� W^ ����:0           U � � >tv�

 KP ����:0            }-/�� ����:0            � ! ����:0            -:�� ����:0            p�� *0 ����:0           L�G=}� V�� p�� ����:0            ��.�� ����:0            �1:A ����:0            } 1JS ����:0            } !�� ����:0            �0(92!
$>B�BG �� 
38 	 Q�� 	 ', .�� pu 6; (��  >��   !�� qv V[ 	 ��   7< �� #�� 05  O�� ����@:0            % 1 _ h m � � � � � � ?\��������+ �� (�� FI 

&) be ����:0           � dz�� ����:0            �
& ?�� DH #' >B 
,0 ����:0           8 M N T � "*<
!&
-�7: J�� | AD ,�� %�� !�� �� <? `c VY ��   Z]   %�� 2��   ����2:0                , 7 � � � 8����!!
 
.3 3�� ����:0           � � sx 0�� HM ����:0           � z�-)!$�� 8�� 
 _e ci ����:0            6 w #!  	 B�� ����:0           ���:=g�� \�� ����:0           h�L<A }� V�� ����:0           � �x� ����:0            W 
3; 9A ����:0           OU�B#hn .�� 9�� ����:0           de�:h�� ����:0            h=]�� ����:0            �OT ����:0              ����:0            � v} ����:0            z/�� ����:0            ��	��� ����:0            � 
28 ����:0            
<+/#jo ]�� SX H�� D�� ����:0            � � " %  ����:0           7 �  ����:0            � K%�� ����:0            q ')�� ����:0            '
7= 2��    ����:0           ���-Kgp $ ��� �� ����:0            6 q �,3 ����:0            {-,�� ����:0            � 
X_ ����:0            i20�� 3�� ����:0            �Bb�� ����:0            �N�� ����:0            � FOU g�� ����:0           jxtz ����:0            �� ����:0            !(�� ����:0            !:>�� !% ! ����:0           � 'j:dj  ����:0           � D?5�� ����:0            � AK ����:0           �"8�� ! ����:0           � )�� ����:0            �
C" <�� �� nu ! ����:0            A IY�F@�� ����:0            xFN ����:0            YK�� ����:0            q -+$%Of?D ;��   &�� SX !�� :�� V[ 05 �� KP 7�� >C #�� MR ����*:0            6 � � � ��� w��# &* �� ����:0           � ��
]c ����:0            � 6U�� ����:0            Z ( �� ����:0            � 	 NS ns in �� ����:0           ��'$!'0 ;�� HQ !�� AJ ����:0           �lp#2 Zd  
 ����:0           �m  	'+ ����:0           \^5
>@D ,�� VZ T�� ����:0             ���� ����:0            N>D ����:0            t ����:0            �2��  ����:0           � �54D�� 2: 7��   ����:0             . -23(u T^ GQ !�� N�� # ����:0             6 � ��AF ����:0            �nr rv ����:0           ^�� ����:0            ^9�� 
49 w| 
	!& @E ����:0           _ � '�)�� HP ����:0           Xa$(�� ����:0            f/4 ����:0            � .�� ����:0            �0.�� *�� ����:0           � � !&0>*-��  `d ae :�� (�� ����:0           Z � � s��
!�� uz >C ��Ȁ:0           | ��(O�� ����:0            � ����:0            �	$.NPX }� $�� )�� EM �� /�� $�� 7�� �� �� ǁՁ:0           ��c�@(�+ "�� V�� \f &�� �� ȂՂ:0             % � c�G	BG�� �� y��  ,9 |� 	)6 -�� DQ W�� ����$:0       	     # P � � &����($.I
 	 
9B +�� $- ��   _h 
  	 �� N�� ��Ä$:0       	    � 	&�������  ����:0           * +;B ��:0            � �	��� ����:0            � "FJ ����:0            f2!(x
QNT �� \�� 4�� 9�� �� '�� 
/5 ��� JP JP ۆ�&:0       
    � � � 	&��|��"�� ���:0            Ral ����:0            C�� ��È:0            0sw ��:0            W	/3 ����:0            DJ IO ����:0           <�kr ߉�:0            l#
 HM ����:0            �#0�� ����:0            �
 Պي:0            :�� ����:0            gn ����:0            0
! Ƌʋ:0             $- ��:0            0&2.   M��  
 3�� ����:0           4 Y i � S�
*$ "&  3�� py �� ����:0            ; pq�x9��� Q�� ƍ̍:0           |�x ��� ����:0           k|� 	+4 ����:0           $D ܎��:0            E	 ����:0            U ����:0            !" ˏϏ:0            5	06 ���:0            v  ����:0            � 1M�� ����:0            �!$4�� -�� ��:0           ��7cj �� ����:0           $.1Za őɑ:0            2en ��:0            $�� ����:0            iw ����:0            !#]i lx ے�:0           9I
7%26 37 +/ !%  $�� ����:0           ����$(M�� ޓ�:0            �  ����:0            & ����:0            F'	IS ��  ϔה:0           ';=8K-<+N$
	#/0>&�HK �� 
 	/2 /��  }� B�� L�� R�� >�� d�� BE PS    %�� 7: $' ), 
 47   /�� =@ #�� 
8; cf QT 	,/ 8;  ��ĕH:0            ! J q y � � � � � !/H[^���������'%�� ��:0            ;,�� ����:0            �(�� 7�� tx %�� ����:0            ` e�&2&�� M�� `�� �� ����:0           i � 8gr ęș:0            3�� ��:0             	<F ����:0            %ms ����:0            D$�� ښޚ:0            $ ����:0            �#�� ����:0            98�� ͛ћ:0            3*/ ����:0            :1= ����:0            I$- ��:0            "7E ��:0            "8> ����:0            &,W     �� &��             ��ɝ*:0           �������������	  Ӟמ:0            -!-5,:&�� +��  15 @�� 	8< )�� 0�� ���� :0           � � kp�^�9!2x
PS�� .�� 
38 mr z   ���   !   ty �� ���&:0       
    _ � � <b�|����F8N'20�� M�� @E 16 �� 	49 ,�� ����:0           � � � M���80,�� $�� W�� ����:0            � `! #�� ����:0            �?C آܢ:0            ! ����:0            �  ����:0            & #�� ǣˣ:0            n(. ���:0            F<
"3(Gq~� %�� 
68 RT  (* JL 
  &( ,. hj } �� ��  �� 3�� I�� ����.:0            � � V���gy{���
828   A�� #' OS JN   ���":0              5 � � ���</�� *�� צݦ:0           < � *9# #E)�� $�� 4�� )�� �� )�� MR 7�� 3�� ���� :0            M _ o��]�GK ����:0            �>-2
(+��� 	/3   RV 
^b z~ �� A�� ;�� '��  ]a    |� "�� 	*. z~ 	04  )�� PT 	;? >�� I�� 4��     �� 
 w{ -1 �� 	,0 ���N:0            : ? K � � � � � � KNOqt���������	g���19L,96�� �� $��    CI l�� 9�� ����:0           } � �i���:D ����:0            i ìǬ:0            �  % ��:0            �! ����:0            i{� ����:0            � (%#+!_

 X] !��  <�� 1�� 	"' 
 !& 5��    [` CH ح�(:0           L d e f � � � 4r��1 qx ����:0           H� ����:0            GB!
^c hm ,�� /�� =�� ֯ܯ:0           ��#�� ����:0            9# 
 ��Ű:0            9 �� ��:0            W] ����:0            �

=5af )�� 
 GL &+ 4�� A�� K�� ����:0           � ����*!�� ����:0             
&G8,(<�� a�� *�� �� �� ��ɲ:0           8 P � � ��� ����:0            �Co�� ����:0            � 
28 ��:0            �(7N8�� hq q�� 
BK ����:0           d � � �
6@ 6�� δԴ:0           � [7;�� ��  ����:0           � [\x	��� ����:0            | �� 5�� ��:0            �00�� ����:0            �
 qu ����:0            �hu ��:0            E36 ����:0            �~� ����:0            ] 7�� ӷ׷:0            $!�� ����:0            8#`e HM ����:0           39!�� иԸ:0            
O^ ����:0            O,3 ����:0            O
 ��Ź:0             
7G ��:0            )�� ����:0            ##3 ����:0            #. ׺ۺ:0            1-�� .7 ����:0           2B
( ����:0            �� һֻ:0            H�� ����:0            O_k ����:0            I"�� żɼ:0            R
OX ��:0            6$�� ����:0            1�� ����:0            2 ߽�:0            8hr ����:0            4  ����:0            @
/3 ξҾ:0            �� ���:0            �� ����:0            '! ��ſ:0            4�� ck em ��:0           FMP3? ����:0            
&+   ����:0           y /1S�� '+ ����:0           } $* ����:0            $	 * ����:0            	JM ����:0            I'�� ����:0            ;	 ����:0            !,�� ����:0            �=:�� F�� ����:0            �	 ����:0            �8#�� ����:0            38/�� ����:0            3# ����:0            O  ����:0            b }� $�� IM rv ����:0            � ^��'O3-�� EK ��� 
4: (�� fl g�� ����:0           m � � '��w'7�� E�� ����:0            �+2�� ,�� ����:0           ^ m$}� 
 *�� ����:0           � p	
.3 lq 8= ����:0           z�]b ����:0            �LL�� ����:0            �,)`e �� ����:0           �1'. ����:0            � 3,1 6�� ����:0            �!*�� =��  ����:0            � J#�� PX ]e ����:0           � I���  �� ����:0           < � -ty ����:0            � G!6?�� N�� BF ��  
 
)- (�� ����:0           P � � ���FL 
 ����:0           o�F
*1 ����:0            � -3$D�� I�� �� PX �� ����:0            a �#�� ����:0            9
 ����:0              ����:0            < ����:0            �'+ �� ����:0           ��el ����:0             ����:0            v�� ����:0            '	P` ����:0            .) & ����:0            1 ����:0            ��� ����:0            H ����:0            I ) ����:0            E/< ����:0            /" - ����:0            R49 ����:0            � 0A�� F�� UY ����:0           ��2F+�� /�� *�� <�� ����:0           �x	O +�� ����:0           o w
 ����:0            �+�� ����:0             MT ����:0            �B#H�� O�� �� ����:0           e�2�� ����:0            +
 ����:0            �<+-�� �� ����:0           � #�� &�� ����:0            ��	��� ����:0            � mr ����:0            ] ,lq #�� �� ����:0           �  ����:0            Ny� ����:0            0  ����:0             -0�� ����:0            pF%�� �� ����:0            � #K2-!2/>o	,0 *�� U�� �� 
:> 7�� '�� �� G�� �� :�� G�� (�� 

 fj ����,:0           f q � � � � �����gn ����:0            � 7< ����:0            ��� ����:0            .!?�� 	27 ����:0           �TZ ����:0            !
IL ����:0            &
29 ����:0             8�� sy OU ����:0           3N8 ����:0            3
=B ����:0            $�� ����:0            d-P�� ����:0             "�� ����:0            RKFA�� >�� ����:0           q �   ����:0              ����:0           � �"�� ����:0            � 4'H�� 
@I ����:0           W ��2$02�� O�� �� gk S�� !% 	=A ����:0            � op���.
-3 [a GM E�� ����:0           � � � �9
+2*L�� CI 
17 �� IO 1�� ����:0           _  4�m;A ����:0            � \` ����:0           ��#�� ����:0            Y ,�� @�� ����:0           � �,TZ ����:0            �!!�� ����:0            dn -7 ����:0           :p~ ����:0            8]l ����:0            D ����:0            N"/:�� ��  �� 
69 Z] EH ����:0           � ���9-1 x| ����:0           T�9(�� ����:0            �!$  �� hl ����:0           %[b ov  ����:0           !*2 �� ����:0            �**�� 48 ����:0            K"�� ����:0            q #-�� ko ����:0           �  ����:0            � 1pz  ����:0           ��GOS �� 6�� ����:0           t�'* &) ����:0           <  OS +�� jn ����:0           ��*2(x} O�� fk hm  2�� ����:0             N 
o(!0':3@@�� 	DK !�� 6��   qx   D�� )�� ����":0           % ~ � � 
Lh{$(; ����:0            	 ����:0            
N29&2[�� z�� <@ ae X�� M�� D�� ����:0           � E���2  ����:0            �O3x,
 jn '�� im $( w{ ��� ����:0           � w{|>&%* 
27 	 ����:0           ���
� 
 >C 
:? ����:0           }� ����:0            �+2�� ����:0            .*�� dl ����:0           X h &8�� ����:0            i  ����:0            = $"�� ����:0            '�� ����:0            �p{ ����:0            �� ����:0            #�� ����:0            %2  ����:0            o"37 ����:0            � x	��	�	 ����:0            |��   ����:0           F82.cg CG IM �� <�� "& bf ����:0           � � � � � 0N- �� "�� �� ����:0           6 ] � �� GL ����:0           ��~� ����:0            � /8 ����:0            & %3 ����:0            j-E�� ����:0            6 ~� ����:0            --$�� $ 2�� ����:0           6 z �x!�� p�� ����:0           j|Y_ ����:0            )v~ ����:0            J$  ����:0           ��  ����:0            ��� ����:0            x} ����:0            6�� ����:0            %�� 
 ����:0           NQ,%�� ����:0            �"$�� TW ����:0           R
,
'.�� *�� &) 
`c y| �� 	 ����:0           ���;H	=F ����:0            (Uc ����:0            ) �� �� ����:0           AHO�� ����:0            O# ����:0            =��  ����:0           7H)#�� ����:0            J' �� ����:0            ;X^ ����:0            I�� ����:0             " �� ����:0           R �� ����:0             ɀ̀:0            	HW ��:0            -'	MV ����:0            ;)*- 14 ����:0           %1IP ��:0            K	��� ����:0            q #$/�� �� ag ����:0           f n �C #�� ���:0            � \a ����:0            ,4�� ǃ˃:0            �
  -8 '�� p{ U` ju ���:0           + , > ez	" ����:0            �AG �� ��:0           ���E�� ����:0            �  	 ����:0            '.�� ���:0            � (:=,2 	 t} %�� �� �� DM :�� ����:0           R ] ` � � ��		F. M[  �� H�� $ iw ����:0           V � � � � � k�� Շه:0            .
	&B$GR ;�� 9D /�� �� ����:0           V h w e�� 
 P\ ψՈ:0           p � '�� ����:0            c�
CH ����:0            � <4�� ҉։:0            � *	4#	N!
-	BO!�6?  	 09 # 
@I !* +4 �� NW  
2; ��  1: " (1 }� % ( u�� 2�� ����::0            9 D W f r � � � � s��ew�9M�� ����:0            27F%/ ^�� @J ]g ����:0           � Ix+�� ܌��:0            -5@	> EL g�� +2 
 mt    
'. pw ����$:0       	        o � /���=�� ����:0            � ����:0            �.� �� ��� KS Ўَ:0           X � �(�� ����:0            �:F +�� ����:0           C i	[h ��:0            #
;C ����:0            s �� ����:0            u 7+�� ؐܐ:0            $:2?#..P�� 9�� �� �� U��  ����:0           � o����Fx�� N�� ��� ���:0           vx|.2aj ,5 {� ����:0           X No�� ڒޒ:0            �hp ����:0            y
G+6�� @�� V�� �� �� ;�� �� ����:0           P � []��'#%��
�
 /�� ;�� %. t} ����:0           � ����1JT ���:0            �#�� ����:0            ��� ����:0            � 58#,7 M��  �� E��  ӕݕ:0            � � �3eq ����:0            ��� Ɩʖ:0            N",�� ��:0            � 
F!:$e�� $�� 
6A $/ �� ����:0           � � )�h" ��:0            � 0?) 	,1 9> 
 $ ;@ T�� ����:0           � � `�w~ ���:0            � 	>	  �� X�� " ����:0           G��
F# &  ,�� \e 
.7 Ǚә:0            � x�KU ����:0            y#�� ����:0            �	6?H8B #�� NX �� �� \�� �� %��  
 \�� ��� :0           l � � XZ���:K�� ��:0            h'GO  C��  ����:0           [  ̜М:0            � 2*�� ���:0            o9 ����:0            2
q| ����:0            "4"F?c0�� Z�� �� �� �� KV 
 (3 OZ �� 8�� -8 :E W�� ���*:0            W � � � ku�lxy�� kv 0�� ����:0            �w ��ğ:0            !�	��
�
 ��:0            � 4$&*GU �� , ��   �� ����:0           W jnp��<H ��:0            H  ����:0            $:$�� ����:0            � : �� ܡ�:0            � 0R�� )1 ����:0           � +9  #�� ����:0           � 2+B�� ��:0            � 
+83"I�� 	 HQ cl (�� ����:0           � � � <{F'�� ��:0            x ����:0            ~0_d hm ����:0           `�0'�� ݤ�:0            `0*�� ����:0            `C$* !�� 	 ns �� /�� ����:0           � � DEbp54F�� 9�� D�� ����:0               ¦Ȧ:0           G/% # 

 .6 
T\ $  !) ���:0           !"0:C)  קݧ:0           JO�� ����:0            "
;E =G �� ����:0           !-R5? z� ��:0           ,-/: v�  ����:0           %087�� ҩ֩:0            3 ����:0            +F}�� ����:0            x?E Ūɪ:0            y �� ��:0            bOKQ *�� ,�� %�� ����:0           � ��w ګޫ:0            g  ����:0            � z� ����:0            �?�� RY *�� ʬЬ:0            �* %�� ����:0            �$?G2�� �� ��� ����:0           ' ��#>G ��:0            B �� +�� ����:0            < �� ��Ů:0            { /-9&2 x,=d:�� V] '�� �� 5�� 7> �� ")  
9@ �� �� ah (�� ���,:0             _ � �����z|��-Z�� ����:0            p?&�� ưʰ:0            �&�� ! ���:0           � ����:0            R		.N"  �� ��  + 
 s~  DO 2�� L�� �� ñձ :0             E G ����(#�� ̲в:0            d +P\ ���:0            4< # "�� ����:0           k ��+y� ӳ׳:0            v| TZ ����:0           � �(=�� Xa ����:0           	�BC�� ٴݴ:0            e	#- ����:0            Gy� 8@ ����:0           P�iu CO ". |� յݵ:0           � ��Xa ����:0            �<U�� 	08 Zb BJ ��ö:0           � ��	7�� � ' ����:0            �	 ����:0            :F,3�� i�� ox V_ �� #�� ߷��:0           � � � l��
:F!+W�� Z�� ]�� 7A 0�� V` ��ʸ:0           � � � )�$(3 ����:0            fFa�� ����:0            xF&G�� �� rz ��:0           � ���� ����:0            �08�� K�� Ⱥ̺:0            `4.�� ]e �� �� ����:0            W X ?%�� ����:0            �&�� ��:0            �%DP ����:0             2=�� ����:0            �  	 Լڼ:0           <�hs ����:0            .�� 5�� ����:0           7 ��� ۽߽:0             &NX ����:0            8 4$+T�� *�� gr ?�� ����:0            ' O]F�� e�� ���:0           �x
@J ����:0            k5�� ȿ̿:0            g23�� ��:0            �  	 �� ����:0            �  ����:0            � 0:�� [a ����:0           � 
AN ����:0             ����:0            !sz ����:0            ��� ����:0            � �� %�� ����:0           �]@",4 �� ����:0             f"x� ����:0             ����:0            � 4.F	x!_�� )�� )+ CE   
/1 .�� G�� eg -�� 6�� l�� '�� 8�� ����:0           W X � jx|�%�� ����:0             [e ����:0            #�� z} ����:0            9)�� ����:0            J ����:0            �
-.8 RY FM x  gn u|  '�� ����":0           > ~ ������#2& 
6= &��  ����:0           B ���
!"�� dl (�� V^  ����:0           )+�u�1�� ����:0            �
5 	 -6 	4= &�� '0 ����:0           : z ^�(SW � N�� ����:0            �F �� ����:0            x2>! G�� B�� LR ����:0           m � �4= ����:0            O�� ����:0            ( gn ����:0            '�� ����:0            ;|� ����:0            :'@M #0 >K 
*7 jw ����:0           8;L"2	04 ����:0            � 
EN   ����:0           � � 
 
$. ����:0           I � 8Q�� ����:0            � $
! (-+.�KQ   tz �� " z� &�� 	+1   �� gm L��   $ �� " $�� J�� �� 	+1 ����4:0            H � � � � ��������)(WZ $' �� ��   ����:0           !EJL	
  	5; 
FL ����:0            
T\ ����:0            '
27 ����:0            GO ����:0            .1
  cg ����:0            2 ����:0            7 {� # ����:0            
 ����:0            D   IT   ����:0           )/
7"$      >J   ����:0           $EIR ����:0            $  ����:0            >ns ����:0            7  ����:0            M"  ����:0            R�� ����:0            7	
" " ����:0           ��$,	 71)"!�8=  #( 	PU 6; V[ �� &�� 4�� */ &+ 
JO W\ �� &��  �� �� �� ns ����4:0           ����$27>CJKOR%1$y� #�� ����:0           2 ����:0            B
)1$nq �� !�� ��  ����:0           '*127w{ ����:0            	Q\ ����:0            ,28 ����:0            � ����:0            �T^ ����:0            �	
   ����:0           ���"�� ����:0            R"
[f ����:0            R)�� ����:0            J)�� ����:0            1-#�� 3�� >�� ����:0           M � +
=C /�� ����:0            8< ����:0             	   ����:0            G-E�� ����:0            N1K�� a�� }�� !�� �� 
*4 lv ����:0           � �i	,0 ����:0            
(CF #& 0�� ux #��  ����:0           U c b�b
 ����:0            i# ����:0            9#��   ����:0           � �mt ����:0            �	5= ����:0            	  ����:0           ��+D�� ����:0            N ����:0            � /4 ����:0            @*1(	+
(	"2
�<�� @D 	$( 
-1 �� ;�� 
37  ]a  �� �� sw 
 8< %) KO 9= 
	(, hl QU !�� ;? sw { �� "��   JN '�� -1  ��  ����P:0            E G O m } � � � � 	;EIQ]_bg�����o���:? ����:0            D7)
;!�� 
	5: Z_ 
# 
MR KP 
	 $ .3 @E ����:0           $4J$8,2 ����:0            3:-�� ��  �� ����:0           � � 1�� ����:0            2"�� ����:0            R)'0 ����:0            17� ����:0            $u� ����:0            F$�� $�� ����:0            #
U\ ����:0            9�� ����:0            (�� ����:0            H7)9 ����:0            $$8C {� ����:0           )9J ����:0            J#3? �� ����:0            91�� (  /   ����:0           2>?A *6 ����:0            v� ����:0            /06 ����:0            #"!�� ����:0            R#' ����:0            9	@H ����:0            &,(�� ����:0            �/7 ����:0              "i=A 	-1 04 |�   .�� ��     
 	-1       $�� %�� ����0:0           
   � � � � � � � .Def�0$�� [b ho ����:0           � � !F3Bm�� _d G�� [�� ����:0           � ��7: ����:0            �7x~ ����:0            $!UZ 	ej ����:0           5
Xc IT ����:0           8DU\ ����:0            :
:B ����:0            	U] ����:0            "#  	  	 ����:0           8)��  	 ����:0           1K#�� V] ����:0           9N2= ����:0            >Ci�� ����:0            A 	@E ����:0            7dl ����:0            )98(02F  [�� 3��    HK @�� �� �� ����$:0       	      _ � � � �`jo"4< B�� ����:0           
<@ RV �� ����:0           � �	 ����:0            G713 �� �� ����:0           !$/GBk�� q�� ����:0           P eB+�� ����:0            e ����:0            E#�� ����:0            9�� ����:0             ', ����:0            N!) ����:0            P%#
�-2;
*. @�� PT  ,�� Y�� 	+/   ���� :0            e f � � p��', 8= ����:0           g�)�� ����:0            11
 -2 UZ   ����:0           2CP81�� ����:0            3)5@ ����:0            1"�� u ����:0           0R8�� ����:0            31!0��   �� )1  qy �� ����:0           (.2>AN
AI ����:0            H
8#'�� Y` @G �� 07 -4 ����:0           369?Q�� ����:0            *?G ����:0            F�� ����:0            . !

#-
+03x�(�� ei W[ ��  
15 "�� %�� =�� uy 
 qu �� EI  
 <@ 48 "��   
 X\ 8�� # ��  C��  cg ���>:0            ! @ � � � � � )3Q\_e��
`{|� !'#>6:�� $��  V] GN 
29 C�� fm ���� :0           � v���	'
0M R[ {� cl J��  U^  # NW �� '�� ����$:0       	    � � � (�`�!x!G# �� )��  ��  ��	�	 
', %* 2�� ����$:0       	    < � � � ��|���!*�� �� IN ����:0           �  �%* ކ�:0            �,OU �� )�� ����:0            �  ����:0            0'�� ۇ߇:0            ; 
	*0 OU ����:0           HL
(0 AI ����:0            I7�� ���:0            $
 ����:0            L  ����:0            ?'=K щՉ:0            ;'�� ����:0            ;#�� ����:0            99A ĊȊ:0            A�� ��:0            1�� ����:0            2R[ ����:0            (!�� ܋��:0             �� ����:0             "   �� ����:0           RLS ��:0            !

IT ����:0            1) ����:0            2[h ԍ؍:0            F	
 ����:0             ]c ����:0           ):)9 ͎ю:0            K	  ���:0            "	SZ ����:0            R ����:0            ?!=N ��:0            gn ����:0            O$& ����:0            wO') АԐ:0            wO  J�� ����:0            w " ����:0            �QY Ƒʑ:0            7  �� ��:0           d	 ����:0            z 9	+.u8��  iq O�� �� qy S[ @H $,  7? $�� +�� ��  
 "* 
-5 ���.:0           2B����������)9	
2!�� 
6? 	 $ 	8A \e hq NW ���� :0           2�	
xC�� ����:0            |5%
83�� IN QV �� *�� (�� DI LQ ���� :0            ( 0 H e h � �-"Q�� � QW �� ����:0           6 a p f

 OS 26 5��  	"& ܖ�:0           }���*9H�� !�� ����:0            220	   -�� T�� ޗ�:0           m � o�$-1$,U!�� 5�� F�� E�� `e �� /�� 8�� :�� )�� <�� ����$:0       	     ' 6 } !'vfg�Y_ ����:0            
-3 ��:0            � �� ����:0            ) HO ����:0            � OCH �� �� Ӛٚ:0           �wem ����:0            �! OS ����:0           � HN ߛ�:0            � 	L%�� �� )�� H�� g�� ����:0           Y�	 $�� ̜Ҝ:0           � �  ����:0            �   ����:0            \ (K	)	>�!	16 }� -�� f�� ��� 05 �� ~� :�� (-    "�� ot   ch ��  �� $�� 
	49 ^c 
 
5:  
/4 hm 
38 8�� @E ǝ�8:0           q r s �  B���������
-(>$�� �� bi -��   ����:0           � 	1��K(		\q�� LT " nv  �� S�� T�� X��   CK +3  AI Ǡ�(:0           q s � 1����4 3CS�� �� 	 DI X]   ��   '�� */ ���":0           W � ��yz{�& 
 	 27 ���:0           �AG ����:0            O/<�� EL  أ�:0            � �*		AE 
	26 Y] 
 
'+ ����:0            j��
,/ LO ۤߤ:0            �(  <��  ����:0           % 5"�� ����:0            � z~ ��:0            lt ����:0            M  ����:0            �  <2�dh  !�� ~� &�� '��  	.2 !�� hl >�� �� ,�� 
(, +�� '+  	-1 M�� ,�� Ѧ�0:0            - O T [ � � +IOb��m�	JQ Za ����:0           r 1&-7:�� +�� z} kn 	 
,/ X�� }� ��� :0           8 m � LV^p�9/6   שݩ:0           _ �$�� JO lq ����:0           0 p@. �� Y_ ��Ǫ:0             X .-�� ���:0            �2#!* 5�� ( ����:0           � ��
)+?%{� 5�� /�� &�� t{ ԫ�:0           � ]�	 ����:0            �04 ͬѬ:0            1
JN <@   ���:0           T�1
$) 	-2 ����:0           ] } K'�� ڭޭ:0            q >/K-!2	+00?,#B	�'��  CG '��   
37 v��   :�� 8�� 9�� _�� bf  26 im {  
.2 KO  P��  NR )�� N�� 8�� NR �� 26 J�� +/  ����N:0             " / J b q � � � � B]^o����`v��������4L��  �� ����:0            [G+0T�� HN ��  �� $ nt ����:0           P w y � +g�,/�� ����:0            �G6,+#�� D�� O�� HM ~� �� ��²:0           P �Z�
-+)6+�� ,�� 
3: cj "�� L�� ����:0           * 6 � Z
0B!�� _c EI CG  4�� C�� I�� 9=  ��� :0            � � ����Ct�� ��:0            � 
"  �� mr �� ����:0           � � � � � x| 6�� ݵ�:0           ? ] ����:0             ����:0                ض޶:0            OT ����:0            96�� ����:0            2
9F+�  � (�� E�� k�� ӷ߷:0           2���x"6
6< fl  
>D MS V\  "�� v| ����:0           ���QZ ����:0            LU ��ù:0            �1-G.D�� )�� D�� y $�� ci �� A�� R�� ���":0            M } � � �r��$G  uy J�� ��:0           mf�
5: ����:0            H   8: 4�� ̻һ:0           yz"NB2$OF3!!#&�im $�� ^�� # 	6: F�� T�� B�� ,��  	*. E�� K�� |�� $�� T�� w��   /�� 	 �� '+ gk 1��  w{ >B �� ����2:0           [ � aeopwxy{�����  Z` ��  ����:0           yz ߾�:0            �(0�� /�� %* ,�� <A MR 	/4 ����:0             ����"�� ��:0            f") ����:0            �  $]e $ 5�� ����:0           � � �1OF3* !�� " w�� IL O�� ����:0           h } � wx{O3h�� G�� ����:0           w{ CJ ����:0           �:!�� lq �� ����:0           � ��� ����:0            �
x>'��   �� ��� [�� ����:0           
 g � |��� ����:0            m 4K!03GV_c 	04  y}   (�� @D   �� C�� ~�� ei ����*:0            H q | � � )������
2  A�� ms  
 ����:0           I � Im�
3: ����:0            m -+2029��   >B 
-1 >�� �� .�� ����:0           � /]��`0�� ����:0            `<9c�� �� KR ����:0           � � �	-2 	+0  % ����:0           b ��1'��  &�� 8�� ����:0           ���!( ����:0            Y UY ����:0            � �� ����:0            � 	 ����:0            *6 ! -�� *�� ����:0           Z] #TX $�� ����:0           ]�5B�� <�� 2�� ����:0           � ^e)0&�� +�� �� \_ ;> #& !$ ����:0           I�	" ����:0            , =.#& | �� \_ �� 9< ps ����:0           � �z����(.�� ����:0            d 		(+ ����:0            � #�� �� ����:0           t��� "�� ����:0            �V[ ����:0            � ,3 ����:0            < ����:0            �	6	&x?G}3�� 3: �� *�� 6�� -4 �� &�� :�� fm T[ ;�� Y�� ~�� $�� '. #�� ��� ���� :0           @ Zrst|��26 2&x.]M�� �� ]�� $�� 	9A  4��  
5= �� %�� ?G �� ����(:0           �Z]orstu|��@-.<
:T]a (�� 6�� 0�� GK 
9= g�� +/  ei �� !�� ����(:0               6 L X � � � t�h>F ����:0            [ !*  ����:0           ��� ����:0            L *nw ����:0             w~ ����:0            �
 $) ����:0            !
&:*��  @D  �� im  48 	%) W[ ����":0           ) E � ��}��	�� ����:0            �KS /7 ����:0           E G 
(%2$�� 
:B (�� '��  ����:0           @ d e � n(#�� ����:0            	}� ����:0            �46�� ����:0            W 0�� ����:0            �	)&
/# Q\ �� 5�� .�� )�� P[ ����:0           #s��(z ����:0            ` Z/	5CG<
!(+
-/$2O9,B�A�� TX ?�� .�� im `d &�� !�� 04 J��     LP (�� �� TX �� *�� ;?  �� fj y} 4�� >B bf ��  ��    
 Y]    �� #�� ?C  4�� DH �� ,�� J�� =A 1�� 2��  �� &��   cg 9�� D��  ����j:0       ,        # ) A C P ] � � � � � � � 	 &[]_e��������Sfmw�����px �� ����:0            0 #�� � ����:0           0 N
#B9&+ .�� =�� �� "�� 
DI NS  �� ����:0           1 M � !T��54)"/"h E�� &�� rx 	7= "�� $�� �� \b jp   	 7= L�� 3�� ����.:0             @ O t � fk���L	��� ����:0            �$�� ����:0            p-
BL ����:0             �� 
 ����:0           
 � s{ ����:0            H |� �� ����:0           B�#25�� '�� ! ����:0           B m�8�� ����:0            3@@F F�� " V\ ����:0              � �)1 ����:0            �P#G.((%#&""
/&x(
?>&�  �� " TX #�� 1�� HL �� 3�� y}   �� 7��   �� 	 �� �� ��   	*.  �� $( >B 
15 VZ  (�� *�� # #�� z~ K�� ! C�� EI �� �� !�� JN ~� 0�� `�� +�� ����`:0       '    $ B P X ` d e f i � � � � � ALPWf��TXaisv|���������FE�� ����:0            �  ����:0            ! ����:0            �97�� ����:0            _ 
V\ MS ����:0           � � -4 $ ����:0           ��(,1*+�� /�� D�� # ! 1�� ����:0           ` ���
$ NS ����:0            $�� /�� ����:0            ��� ����:0            {  w� ����:0           { �
	!"  �� ]c 	 �� ����:0           9����)F�� ����:0              ����:0             N7�� ����:0            � 
,�� 
5< ����:0           Y �5$-#G�9+-2F(?,�JM 7�� M�� �� �� �� C�� �� +. 14 ,�� T��   ad '�� 3�� (+ 	:= ?B 0�� 
47 VY %�� 0�� �� *�� DG  ����D:0            ' 6 7 B P � � � 2<]pt��mx������v{ lq ����:0           o2
( ,��  9�� ����:0           L � ��(&�� hr mw ����:0           	��%- ����:0            �&5@-C)(6 3 �sx  �� c�� 6�� jo #�� J�� d�� ]b MR -2   A�� @��  y~ KP �� 	  ����6:0               6 H � � #����Z]t{���kp %�� ����:0           � � L   .5 r�� ����:0           � � ��	(0  ( ����:0           ��&  Yd '��  ����:0           ����� $�� 	/; 
(4 ����:0           � ���# 
 nv :�� ����:0           � � �! ����:0            s CBG=/ $   &�� 0�� J�� ����:0           A �e����	��� ����:0            �  ����:0            :> ����:0            Y�� bi qx ����:0             ,@E [` ����:0           ���� ����:0            (&!!�� "�� 

=C u{ 
 ����:0           
 8 @ (4�� 	/6 .�� ����:0           % ,
'/ ����:0            	@F 	'- 0�� ����:0           `~r�� )�� ����:0            	(1 ����:0            � /�� ����:0            � !"�� ����:0            Z   ,�� ����:0            � ����:0            �+"& ����:0            
4,8N�� 	&+ 
  Y^ '��  gl $�� ����:0            E G ��IO �� ����:0           H d&�� ����:0            �9C y� ؀܀:0            "7�� ����:0            $	#:D �� ����:0           �9$ ہ߁:0            *
J\ ����:0            *�� ����:0            7KO  ̂҂:0           ��:� & K% 	-4 S�� x�� 	,3 �� +�� 0�� LS }� 	 ����":0             � � � ]l�  ����:0            � � #B��� QY �� &�� 1�� �� 
2: �� �� ����:0           � � � ����m�� ��	�	 ��
�
 ����:0            � +/ م݅:0            �
?(0  G�� I�� ����:0           TU�$	'6r    & qw ag �� FL �� kq 
  (. !��  4:  Z` ���4:0           � � � � G�Z������  ����:0            �<"JQ <�� W^ ��:0           � � f ����:0            �	:@ (.  +�� ����:0           ����>!\c  QX �� :�� ߉�:0           / ��� �� ����:0            {� Ҋ֊:0            � nu ����:0            %FMU ����:0            � !	)5 �� :F _k 1�� ̋:0           � � � � <"+/W��   LY �� 2��   ����:0           � � � � � � 552�N+2(9 
�1�� fk Y^ 
UZ w|  ��� \a V[ ]�� Z_  �� �� bg "' "�� -�� in �� 
	 ns   �� B�� �� SX gl 	 ����D:0            g � � � � � � �  ,E]eh����m�����C ' ����:0            A #  ܏�:0           � � 8F�� X�� �� ����:0           � �  Őɐ:0            �!�� ��:0            �CO ����:0            ��� ����:0            { 
9+�� �� '�� 8�� 
-1 
48 ݑ�:0           � � 2[�%+2 ����:0             gn  !�� ܒ�:0           � � �
# HO ����:0           / �
 _e Ɠ̓:0           V�&	,/
PW gn @�� \c (/ G�� �� ����:0            8 9 N ��%�� ה۔:0            �  ����:0            �� ����:0            7 
 �� ʕЕ:0           uc2F�� ����:0            �1�� ����:0            �,{� �� ɖϖ:0           ���� ����:0            � GN  ����:0           2 t �K(54�� �� % 
  W_ 	4< " 4�� ۗ�:0           q s t � %�� �� ǘ˘:0            � x� ��:0            A�� ����:0            �ou ����:0            0
  ���:0            �O?�� ����:0            w'  ����:0            ��� њ՚:0            :x�� M�� ����:0           � |   ����:0           � �      ڛ�:0           � � �)B9HL �� ��  �� �� :�� nr  ����:0           " #�dei
0)!& (�� K�� '��  BG ����:0           w � � � �"8? ۝ߝ:0            � 95$�� K�� ����:0           2^&�� ����:0            �+.�� ڞޞ:0            1: ����:0            �sy % �� DJ ����:0           +�+2 cj �� Za ��:0           .xEM ����:0            � 2>�� ˠϠ:0            � G)uz (�� ���:0           P & ����:0            � �>��� 	/6 1�� ȡѡ:0           � ��&� ����:0            s:>&&V�� P��  
  0: IS ����:0           � ���#�� ����:0            �TY 
(- 6�� ����:0           �pv 7�� ��:0           tg-�� ����:0            �
	 ����:0            8K�� ݤ�:0            � 
BH ����:0            
�� ����:0            �";�� Хԥ:0            	�"HL ��� " cg ����:0            � f�QV ��¦:0            � xD�� O��  ��:0           |�.�� ����:0            �0-
NC
'
%$>#� LP W[ X�� #' { vz ! A�� q�� !% 6��  TX AE CG gk  nr 6�� 5�� ��  �� §��@:0            T w � � � � � � � � HTo���� p��!
jt PZ ީ�:0           # ����:0            :!�� ����:0            �% ٪ݪ:0             @&.N9/B!G�� �� 2�� 	*2 $�� &�� T\ IQ {� KS ����$:0       	      8 X a � 2e��1	+5 ����:0            �"%�� ����:0            "
(r  $ �� ei #  ��  gk # ��  �� pt   0�� 7�� mq Ԭ��2:0            + < ] k v � � =ox�[�
 ����:0            �� ʮή:0            	AI U] �� ���:0            	09  	 ����:0            ѯկ:0               
 
^c ����:0           !"�� ����:0            M /2 Ѱհ:0            � *F ����:0            � 		<N ����:0            � p{ ��ı:0            :;> ��:0            *C/ %�� H�� a�� 
 ab #�� ����:0           Q � Q�-%�� ��:0            p:> ����:0            b 	4.1- ~ %�� B�� M�� $�� 8�� =�� "�� +�� 0�� 
(, ko CG !  
 ?C <@ �� ��ȳ&:0       
    W X } � � � � ��� % ����:0            � 	-(GN
 x}  -2 \a 	5:   	+0 �� �� '�� X�� ����$:0       	    � � � � � � � � 	�-S�� rx 
 ����:0           � � �"! ��:0            8!+�� tz  ����:0           37x"�� Ʒʷ:0            |&(�� �� ���:0           8 c'F�� ����:0            �� Ǹ˸:0             24�� ��:0            �29C 7�� ����:0           ��)18')	!]
') 	HJ    �� �� �� 24 &��   46 *,  ��  ƹ�*:0           &1234;JN(	*. =�� ���:0           � �!$IP *�� ����:0           ���� *�� Իػ:0            < !(�� N�� �� ����:0           �q

$#�� �� &�� %. nw ��ͼ:0            u � c�@E pu ����:0           */�� ýǽ:0            7j@C!(%#K-F!(
	2x �W�� (�� Q�� ��  "& &�� 1�� bf }� d��  
-1 Y] G�� FJ y�� UY �� (�� NR 9= IM MQ !�� �� ^b SW 
	.2 ^b �� !% 48  "��  
CG tx 	 " rv im   
>B EI  �� !��   # =��  �� �� �� FJ 	:> 	#' �־z:0       4      A M Z d e f h q � � � � � � � � � � � 	
"$<=WZbel{������	m|����F?1�� !' �� :�� HN X�� nt ����:0            �vx��mt ����:0            Q"(!F+)&	!r�� $) ,�� .�� JO �� Y^  MR in �� sx bg gl 
=B 
7< -�� ����2:0           d � � � � � ,cs�����1 �� ����:0            } " �� ����:0            R&ak ����:0            i 
V] ����:0            �"�  ����:0           � � gn ����:0            �  417! 2x($>�sz fm RY �� "�� W�� 
 	29 sz =D !�� 5�� 9@ <�� �� H�� i�� :��  4�� �� J�� "�� ����0:0           W m n } � � �]_o|����  ����:0            �x� ����:0            �27�� ����:0            o2FN @�� ����:0            o-&+ di TY <�� ����:0           H � Z&#�� ����:0            �V/-8N()+2	B: 39,	G=.�8�� lo 0�� cf SV VY ! #& !=@ !�� &�� I�� `�� _b #?�� G�� `�� h�� n��  wz /��  &�� 0�� sv @��    UX <? fi ��  *�� 47 JM CF 
25 X�� _�� &OR ux �� )�� =�� G�� GJ ?�� WZ &) }� \_ E�� 	kn I�� J�� +. ,�� *�� #��  ����f:0       *       > ? C � � � � 	#+O]�����Xdehz{����������	)�� ����:0            )4�� ����:0            �� ����:0            �*�� ����:0             (!(+
"30\Y]  hl +�� .�� ^b +��  >B   �� Y] 	)- ����,:0            ` v 	]_�{��	  ����:0            � @E ����:0            �$* ����:0            7?�� :>  ����:0           � 
4; ����:0            �472=�� +0 #�� %�� 1�� G�� \�� ����:0           W n � )=�� ����:0            af ����:0            �~� ����:0            �28U�� X[ %�� �� }� *�� LO AD ����:0           � co����9(�� ����:0            2�� ����:0            ��� ����:0            �:3�� ����:0            hpv %�� ����:0           + �
!L$ ( (�� ]e �� �� ����:0           $I���(52�� ! Q�� �� ����:0           d � ^oC ^f 5�� ����:0            � F\�� ����:0            x!3�� ����:0            Z 	55

5< cj   
*1 QX 
 & ;B �� ����:0           � 0j��^�� Z` ����:0           d.D�� ����:0            X .0�� ����:0            �bh ����:0            5 �� ����:0            7 .�� #�� ����:0           { �!9:    
58 qt !�� TW VY �� #�� ����:0           Z _ | v��6�� ����:0            h $-�� .�� ����:0           �-CG!%2C
%6#qR�� �� X�� <B +�� 7�� #) (�� io '- 	9? 
:@ B�� (�� MS �� ����.:0           6 A P Z e � � � -s� Z��2-�� 8��  ����:0           ���9W�� ����:0            _ C,8)r \] 4�� G�� `�� �� 23 .�� XY => �� ?@ 	KL 
() MN 
ST +,  ����(:0           � �)34FIJLPQ 9(%#
!��� c��  "�� -�� �� %�� gm �� 
# <B fl HN BH 
 ��   :@ ,�� ����0:0           _ ` e f p { � � � � MQ��� ����:0             #.!V*�� /�� �� 	*1  ,�� RY 
 el   �� BI ;B ����&:0       
    B X Y Z � � &QZ�7�� ����:0            � 9/�� ����:0            2	?I ����:0            �=|� ����:0            ��� '�� &�� ����:0           � Sen ����:0            S�� ����:0            ![` ����:0            + AI ����:0            j ", ����:0            � �
?H }�� ����:0           g �   ����:0            d�� ����:0            M�� ����:0            O&)�� ����:0            $O[` %�� <�� ����:0           pw2$, ����:0            oBL�� ����:0            � ����:0            &($#42"%5:x,.� C�� ��   .�� (-  IN JO  ~� �� L�� d�� '�� ��	�	    �� ����6:0            % ' = B W � � $Bf ^h|���ik MO /�� ����:0           E G �1+�� ����:0            2v� ����:0            E7�� ����:0            $nv ����:0            (

 !+ ����:0            !�� �� ����:0           #P )�� �� fj ����:0            1<F ����:0            [c ����:0             	GM �� {� ����:0           7O7>E ����:0            $!$[d �� �� ����:0           
8N+�� 0�� MP W�� <? #�� ����:0           � � � �� ����:0            EOW ����:0            $
 19 ����:0            8:C ����:0            3{� ����:0            P
QZ �� ����:0            -)�� ����:0            1
 ����:0            % ����:0            M[` di ����:0           "�� ����:0             
LU ����:0            �� ����:0            % ����:0             �� ����:0            	>F ����:0            Q8? ����:0            7
U^ ����:0            %�� ) ����:0           F"}� " ����:0            %7(�� ����:0            $!$) �� ����:0            % ����:0            N@F TZ ����:0           .H)
FJ  ����:0           1>70�� ����:0            $�� ����:0            ' ����:0            N2< ����:0            F�� ����:0            HQW ����:0            &8,�� ����:0            35> ����:0            0�� ����:0            1OY ����:0            2 ����:0            �
   �� ����:0           ��&+ >C ����:0           5G�*4(	CG	4!+9K	�F&!"%6B$3x!L#G.&#�     �� 1�� G�� ��  &) GJ 
:= ru -�� ?��   ru wz   -0  # T�� z}   il ��� 	36 $�� �� ��  SV   �� R��   ~� {~  #     JM *��   WZ    IL   _b Z]   �� �� �� 8; mp 1�� '* >A RU 	03 ), ��  # JM RU 7: '�� ), 
%( <? 
), &�� 
69 

), PS /2 )��  �� ��   ru �� F�� u�� �� 
  
;> vy &�� 
  #& Y\ 03 	03  
 '��   X[ �� OR *�� &�� SV 
 �����:0       [         % * 7 9 < A C F L M P V W Z ^ _ q { � � � � � � � � � � � � � � � � � ),0AINQbfnt������� SXZ[efv{|�����������������!& ����:0            :!
NR pt QU fj ����:0           Z � � K)$ %�� ���:0           J �� 17 )/ ����:0           #$�� ݉�:0            T[ ip ����:0           /O'. NU 
$+ 	GN 	 ����:0            EO#$	OW (0 �� ����:0           8D
 7= KQ Y_ ����:0           [ �z`f ��:0            *9K1#2@Y�� !�� �� LP VZ fj ��  8�� ����":0           _ q } O����m���� 1�� ����:0           � ' ȍ̍:0            l
7 0(+Q�� 29  �� G�� #* .�� ���:0           � ]`b�
.0&2�� ;�� Q�� "�� V_ (1  �� ǎӎ:0           X `qrs:
3-[d   8�� py [d 2�� ����:0           1 k � �V�&!"�� # 
>I ;�� 2= ����:0           � cs�
	
"%	2<   	;E ' gq /�� Ԑ��:0           j l s��:
 	 
:C �� E�� ����:0           � � kr ��:0            � ,hu KX  �� ����:0           s /�K	,r��  #. (�� Œϒ:0           q r ��! ����:0            �"1�� ����:0            �
JP *�� ؓޓ:0           ��(228 �� 4��  8�� ry !�� 8�� JQ ����:0            d �o��29H�� "�� &�� FK ;@ KP  0�� ,�� �� ����$:0       	    M � � � <Wao���� ����:0            � +.<H !-  �� ����:0           � � ��Gl�� ��:0            P 
K  u�� !. :G & ����:0           $ q � c��� ��:0            � !��  ����:0           � ,�� 	 ����:0           � �  ��:0            �F
3; 2�� ;�� ����:0           Yx�3�� ͙љ:0            g!!�� ����:0            � �� ����:0            8x} $�� Ț:0           3 ���:0            +�� ����:0            /
&
(* %�� ��ś:0           ?sK2=C C�� gm +�� ��  &�� ���:0            q Pv���!0,NW �� (�� +�� 
3< X�� ٜ�:0            � � ���6�� $�� ����:0           � �#�� ��:0            9) ����:0            1 �� ����:0            t*�� %�� ޞ�:0            �
:'SY LR ;�� 4: `f �� ����:0            � � E:mq ��:0            h
"#� �� EL 	*1 +�� ����:0           � S	G2%�� X�� ޠ�:0           P �  ����:0            �G     ����:0            P � %4�� ��:0            e &- ����:0            ,9�� Z�� ����:0            �,>! +�� r| N�� ��:0           ��G5�� ����:0            P �� ͣѣ:0            �)�� ����:0            �?.`�� �� ����:0           ��
#' `d ΤҤ:0            ,   ����:0            !$   48 ����:0           pqu0.�� ֥ڥ:0            �? <C ip  ����:0           � �v�?}� ��Ħ:0            ��� ��:0            �$N$9,&�SW HL dh   �� )�� \��  �� CG 
 .2 8< BF 
:> # 
37 �� *�� >�� 
*. " 
9= �� ����4:0           $ Y [ ] � � ����}���y� ����:0            �.9$8'�� 16 _d �� -�� N�� Z_ # ��é :0           X Y ] n ���{ ����:0            �>B 
 �� $�� ɪӪ:0             '�/+)&   2�� %�� (�� ,�� ����:0             Ya ��:0            �
 ����:0            ~	ai ����:0            HQ �� ϬӬ:0             q{ ����:0             8��   ( em ����:0           : F � �%.�� ��:0             	
7@ ����:0            G-$ J�� ����:0           � ��:0            �
Y` fm ����:0            YS[ ����:0            { /@!0) 
`F�� )�� L�� dh AE  �� �� 5�� DH >�� ! gk 15  ֯�(:0              + 4 Z � � #�]��3W�� ����:0            {V_ ����:0            � }� ͱѱ:0            n'2 ���:0            	$3xABL =G 
NX is '1 ?�� �� :�� HR _i ����":0           ;M�f{|��
B JV  ����:0           >Ke
	7 . 	 �� J�� .7  	 �� py ѳݳ:0           l � []r
8C ����:0            r�� Ӵ״:0            [
4 :?  6; ��  ����:0           W x�Y�
EJ ɵ͵:0            ?$�� �� ���:0           '
B 37 uy TX 
*. <�� ����:0            x���F!&, #�� Z�� sy ���:0            � x�/`f ����:0             2�� 
18 ܷ�:0            �% ����:0            qY] %�� ����:0            � �� ޸�:0            ?jo ����:0            �&�� ����:0            s�� ѹչ:0            t
vz z~ �� ����:0           U � o6; ', ����:0           2 3   ��:0           dk ����:0            M ' ����:0            '^m ۻ߻:0            '�82
Pkr � ��� 7�� �� /�� 3��  

,3 SZ SZ %, ���� :0           { � � � ����2( Q��  �� 	#+ (0  ����:0           � � =��8 �� S�� ���:0           � � '%#CF �� VY �� 4�� ����:0           � � ko ��:0            6!�� ����:0              �� ����:0            &8 ۿ߿:0            6>)�� ����:0            �
"& �� (, ����:0           	V  ����:0            Oip ����:0            w82�� ����:0            38(�� ����:0            3#)2 ����:0            9# ����:0            96F))#/.�:@   	'- %+ ��   
7= @F jp  �� 4: 
 pv  ��  �� �� !' :�� BH ]c ��    �� ,�� ����F:0           L � � � �  !#(AP������+5 �� ����:0           ��!
G"�� '�� ��     [^ AD 
 IL ����$:0       	     Z � � � � � � � TIQ ����:0            # ����:0            j 61�� ����:0            ZX_  
 HO &- ����:0           F{�	 
  
  
 &0 ����:0           K � j�,�� }� ����:0           � c+:
B$6jq jq G�� BI  �� MT u�� KR ���� :0            ^ � � bsef&.	-(%91	a1�� "�� Va (3 GR   NY ^�� +�� �� 3�� do y� T_ ����,:0           8 X Y g o � Yp� ����r{ QZ ����:0           1 y>$. ����:0            �*&)+40�� W^ #�� '�� OV .��  �� ����:0            h #]2L-�� C�� ����:0           � �?a�� ����:0            �G`�� ����:0            �!%�� ����:0            Z 0, G
:@  qw �� 7�� "�� �� 8> �� �� ����":0            :A������

   ����:0           ��-1�� ����:0            6 5= ����:0            'KV )�� \g ����:0           * � �� ����:0            {� .3 ?D �� ����:0           w �� ����:0            t 4,2�� �� "' ����:0           W -�
 
36 ����:0            � CJ ����:0            � 1$$, %�� 9�� �� L�� ����:0           ru��� ����:0            � 

u|  ����:0           ��
em ����:0            �2
0E�� �� jo 	   %�� ����:0           � �����DJ �� ����:0           � �L	6? ����:0            �
@-&%-�� x� �� �� $, ����:0             , 1 6 8 �� ����:0            j

G",1 !�� \a -2 i�� ����:0           � � \n�y ����:0            e�� ����:0            � G	��� ����:0            �
GL 49 ����:0           ET,0 w{ ����:0           Lh�� ����:0            t8@ 	 ����:0           � ��� ����:0            
 -)!J�� :�� 
6> 
MU dl ����:0            nq$( "& (, ����:0           1BF *�� ����:0            } ?F�� ^�� ����:0            �  ����:0            ��N(1
 0�� �� }� �� 	  ����:0           � �  1I��-/�� ����:0            �� ����:0            ? -�� =C ����:0           �K=�� ����:0            q   ����:0            !9
9= *�� B�� T�� ����:0            ��&%
?C �� ����:0            ( '*  E�� ����:0           ���1B2�� '�� ����:0           } �8\b ����:0            � ! ����:0            �W_ ����:0            c
 SX ����:0            � K ( ����:0            q ,�� ����:0             ����:0            �� ����:0            =H Xc ����:0           : O.
/&

.�ai S�� V^ GO !�� -5 �� ai '/ 9�� 
	-5 W_   �� $�� 9A $�� PX " em lt 1�� U�� ����>:0               7 < ] i ~ � � � &?AIK����[��#+ ����:0             ~� ����:0            (�� ����:0            �# ����:0            p 2<�� ����:0            �-/.,S\ #�� -�� +�� >�� 	,5 ����:0           - ��89L �� ,�� �� Z�� ����:0           y � ��610!��   &+ )�� >�� %* ����:0           T � 6B�Z�	���  �� `�� ����:0           L g � � GP ����:0            	5)
	(Z$ A��  8@ 
 )�� %  v~ 6�� P��  #+ �� ����$:0       	      ? u y K�g�K"_�� '0 ����:0           q �(
" EO $ ����:0           N �&4=   ��  	 " ����:0           Nbv��6�� ����:0            �<[�� ����:0            � :1�� ����:0            hL<C {�� ����:0           ��)3 ����:0            �  ����:0           ; �	
CM ����:0            
	 ����:0            �`i ����:0            H  ����:0            � ( ����:0            �:-4 ����:0            h ����:0            �\d ����:0            : �	��	�	 ����:0            � #qy ����:0            �=G ����:0            �.5 ����:0            �&3ls :�� Y` Q�� ����:0           g ��L#- ����:0            �L#�� �� ]�� ����:0           y ��OF3GN/�� "��  �� (�� )�� �� D�� Q�� `h e�� ����$:0       	       < Y �wx{�
T^ ����:0            �+�� ����:0            � 9(#$@�� 3�� :A �� >�� ����:0           _ ` � ����:0            �  ����:0            5 	# $�� LU  ����:0           ( [�"�� ����:0            � "'�� ����:0            �%3 ����:0            � (9A ����:0            % 2�� ;�� ?�� 	4; ����:0           �o�-?G G�� 	,4 ����:0           h pxF
9		2-	"53�
.5 "�� �� ,�� ls " bi �� PW CJ ,�� )0  	3: R��  [b 
+2 KR MT 	.5 (�� 6= �� �� :�� 	/6 	") _f !�� 6�� E�� #�� 
 ;B 9@ RY jq {� 	%, t{ 5< ����V:0       "       * O � � � � � � 289;>Ao���^{��������7-0�+2!
/ 
>.�:�� #�� S[ }� LT Ya T�� ��� �� !�� <��  RZ 	AI T\ OW 9�� '/ KS $�� 
 ,�� 2�� DL 

%- QY @H 2�� b�� O�� ����F:0           6 7 O | � � � � � � � � )����z������Yc ����:0            
 �� ����:0            xG/-4($-.�)6B$0	G .�GN O�� MT �� /�� �� NU �� %, I�� RY  �� ��� #* *1 ! C�� �� ry .�� 
/6 
+2 T[ 29 J�� @�� D��  
 
07 
29 T�� 1�� % 
29 u| qx @��  ����V:0       "        % ' + . 6 < X � � � � � #/c����Zef��������L7@ S�� ��:0           � �K&	>#3(�� aj {� +�� 
4= Z�� +�� ����:0           q �rs���
G:6(��  
*4 LV x� =�� ����:0           P � � � Z5> 
JS ބ�:0           `i9+:�� qx %, ����:0           2W
EM ;C ȅ΅:0           1i�� ����:0            �!;�� ����:0            �:&:�� BK A�� ņ͆:0           � [�0+
=;
*1 `g & �� �� &- KR t{ �� ���� :0           T a � � � ?��"/-.�&�� jt 8B �� @J   &�� eo �� r|  �� �� .�� @��  
 
 gq EO ����2:0             " $ & . / > u � � � � ���
dn "�� gq ؉��:0           3��4G �� m�� ����:0            P 2:�� Ɗʊ:0            m
9H ��:0            
" ����:0              _f '��    29 ����:0           IScz� ����:0            q dn �� PZ ����:0           4���* ���:0            =-)	
+U�� ��  �� 
 
9D #.       ]h 3�� ����(:0           � #Nv���	
)9
+LBGR  ��  X�� ny 4?  ) |�� 	!, ��ǎ$:0       	    { 2i��	+.
	 :B @�� y� ����:0           � ��� 2: ����:0           
 �   ����:0            �*@/�x .��  � ^�� ! �� QX �� ��   pw �� !�� 
$ gn  7�� 	&- �� mt u| IP \c 3: ͐��::0           
    1 H EVn�������� #0 ow   �� ��:0           B � � �BQ ����:0            �.P[ G�� ѓד:0           ��"0�� ����:0            f% �� V] ����:0           ��  ߔ�:0            �& ����:0            � 	 ����:0            � &HM .�� Εԕ:0           i ��� �� ����:0           ��&.�� ^f ����:0           �(�� ,6 ;�� &�� ��:0            d - ����:0            D %0 ̗З:0            �1K�� ���:0            } ) <F ����:0           ��4O�� Ya �� (�� ǘϘ:0           W �w  �� ����:0            1'�� ����:0            ���   �� ޙ�:0           * @j	W] ����:0            V 2nt ��Ě:0            � 
52     H�� U\ ��:0           g �^o$8@ & ' ����:0           p��.�� ��:0            X 2 ����:0            o($2 �� 
 �� V^ ��Ü:0           d �mq G'�� r�� ����:0           ]�2�� ����:0            �NF�� qx R�� ڝ�:0           � � x
�� $�� 
 .�� ����:0           ���!) ۞ߞ:0            �FU�� �� �� ����:0           � �j�k�� �� ��Ɵ:0           � �  �� ���:0            � !�� ����:0            � 
8B [e  
 ��Ǡ:0           � � 4�Y�� v�� ����:0           W � N2( 3�� ����:0           � m�� *�� 
  �� ڡ�:0           h �2�� ����:0            h $
)2 ��  	   	 ŢϢ:0           ����  ����:0            �CK ����:0            p !2
:	 	(/ cj ?F "�� A�� >E 	4;  ٣��":0           E � )����
OW �� Ҥؤ:0           � 	:&�� �� ?�� BF ����:0           m � h�%#+-
"6V X[  �� 9�� .�� 
	14 kn CF "% 8�� ;> 9�� 	%( ̥�&:0       
    C e f � � � Sp�Z2	5<   #�� @G ��:0           ����Kw�� TV ����:0           q u    cf ߧ�:0           T�Cp�� ����:0            � @/
$�� O�� `�� &�� T[ ����:0             	 1LQ   %��  # 
GN ip 
07 �� �� +�� 0�� ����&:0       
    x � � TUXgz���9!0Li0�� >�� 
 ot -2  <A z )�� 1�� ��  �� +�� 
	). ^c $�� ����":0           _ � � XYg���KX ��ī:0            2	(8@ 
&. jr 6��  ��:0           � � 	�
,NW Yb {� �� #, py ~� ����:0           ! �  ���� ����:0            � : T�� (�� /�� 4�� ����:0           � � � QV FK ����:0           � � .>E ����:0            X 
-G60HV] el �� �� $�� Q�� ^�� �� \��  ˮݮ :0              6 7 P Z��&�� ίү:0            b6@E �� ����:0           dZ

CD uv ����:0            � "�� а԰:0            � UZ ����:0            ��� ����:0            � �� �� ñɱ:0           � �fl ����:0            � x	��� ����:0            |&�� >�� òǲ:0            i 2
 ���:0            �KQ ����:0            �  ,(DH 48  �� ^b �� ! ��ɳ:0           � � z���K,
b7�� NT }� [a `f |�     
BH ?�� 39 #) (. &�� gm ����.:0           q � � � � � � cv�����
+N%$=�� ;�� )�� :? IN ϵ۵:0           ^ �  ��#% "�� ����:0           f  :,/ Ӷ׶:0            � (�� =�� ����:0            d -�� ����:0            � 6ry ͷѷ:0            Z!�� ���:0            � 
y~ ! ����:0           �� ȸ̸:0             &+9(%#+0$1�4�� :�� H�� %�� ?�� CG   �� ��  15 15   TX 
PT cg '�� 26 cg "�� dh � &* %�� *�� ����6:0           ^ _ ` e f � &���`fgi�� �� ����:0           � �
(B$��  px �� G�� ����:0           	���.�� #) 	+1 ����:0            � �2M�� ����:0            �
'#$9��  <�� AH %�� ��:0             ��+%6�� �� E�� ����:0           ^ e ZPU ����:0            �/
+#S�� 7�� GK 7;   CG w{ 
`d rv &�� 	 =A ����(:0            @ | � � � -Uy����� ����:0            =;H ޿�:0            � RY 
 ����:0           , �CJ �� ����:0           �"%)	+	#"~	&, 0�� �� $* '�� GM E�� 
 rx   x~  DJ �� 8�� FL &�� IO ����2:0           O e m � � � 19]d����)	*�� y &�� 4�� "( SY ����:0            5 Y #��LB�� ����:0            �&F�� P��   ����:0           i � k��� ����:0            -0"�� ����:0            �    ����:0           ��3"�� S�� ����:0            �3A�� ����:0            �
0. " EL &- & -�� ����:0           � � Z��BL.*@H c�� 
7? ?�� !�� ai ����:0           Te����$�� ����:0            �#&. $, CK ����:0           Yy� �� )�� ����:0            z2 ����:0            � }� ����:0            �2& ����:0            � '-3 ����:0            �� ����:0            �9
2.# 09 M�� % }�  2�� ����:0            . _ ~ Tm'}� ����:0            P_ ����:0            oz ����:0            p *D�� ����:0               ����:0            ( >I ����:0            *ah "�� /�� ����:0           | � ,=�� ����:0            � �� ����:0            0 B+�� .�� 8�� ����:0            �&�� 7�� ����:0            i & 	 ����:0            i 	<"
P
39 !�� ��  %�� 5�� ��  �� CI �� ����&:0       
     [ ] o � � � � W�� �� ����:0           +�% '�� ����:0             �� ����:0             x}  �� ����:0            	NX ����:0            *B:% _g NV BJ ,4 
 -�� 0�� @�� ����:0           � � � e���
)3 )�� ����:0            e
5"0  �� �� r} ��   �� ����:0            /f��5M�� ����:0            ^�� ����:0            � �� ����:0            x#�� ��	�	 ����:0           l|-�� H��   ����:0           � XPX ����:0            �"�� ����:0            � 9H�� ����:0            _ # ����:0             ( ����:0            �oy ����:0            �" ����:0            Z��  
 z� ����:0            # �OZ ����:0            �9!\�� JQ ����:0           ��" ����:0            t�� ����:0            �	  ����:0            	CJ ����:0            �? +�� gn �� ����:0           	 
 � �((52#��   �� �� ����:0           ` d ^o(%CP -�� &3 ����:0           d e � & ����:0            3 8�� ����:0            �/<+2G�)0 �� "�� �� 	 
 v} KR )�� 9�� C�� 	 ,�� V�� =D F�� 29 �� 

.5 sz ����*:0            
 . < > � � ]�����  ����:0            �)�� BJ ����:0           v #;J ����:0            �<:  �� ����:0           u � h/N 	  
' 	;D g�� ����:0             $ � �� ����:0            �-�� #�� ����:0           � KS ����:0            � 
?E ����:0            �-*�� ����:0            pK+s�� #�� z~ Y] ����:0           q -.]!!�� 	'- u{ /�� ����:0           � � ��L5�� f�� ����:0            �*�� ����:0             )<

08 LT   ,4 $, 
:B    {�   ����":0           � � � � ���*(:�� 	&, ����:0            �$?v| 	)/  �� ,�� ����:0           � $f�-$^e X_ N�� %�� ����:0           � �fy� ����:0            MB	*2  �� ����:0           � �e-P�� ����:0            �� ����:0            ��� ����:0            � DL ����:0            \f ����:0            /�� ����:0            �KK�� ����:0            q $K2$ ,�� $�� ����:0           ' q � 8.�� NU ����:0           � �NN�� ����:0            � B	$M #�� (�� =�� \�� s�� mt #�� 0�� @�� �� ����:0           Wefi+B$91@L�� 
>F Zb !�� _g $�� D�� F�� (�� ����:0           ^ aefg��S\ ����:0            �([f ����:0            ` (�� &�� ����:0            ` L�� 9�� ����:0           X�x@E #�� ��� ����:0           |�� ����:0            
8> ����:0            \	'/ ����:0            </#�� ����:0            q} ����:0             JT +5 ����:0            D  qz ����:0           # � 
KY ����:0            �
 ����:0            T 
 ����:0           � Mlv ����:0            D �F3x0LX��� ��� 
4; 	 X�� nu |� ���  �� O�� �� X�� ���� :0           � � Wx{|��	&/ ����:0            F3�� <�� ����:0           x�$8�� ����:0            �$.	7	B2F3x90$	L�=�� & C�� jr 9A 
6> PX 1/�� A�� J�� Q�� Y�� `�� j�� &. 	 qy 3�� 	)1 �� #�� 9�� *2 $�� V�� "�� X` /�� =�� P�� ����4:0           X o � � Udemxy{|������-,O�� cj % (�� ����:0            ���
C'$(�� x�� �� 0�� ,�� ����:0           > A �p��) o" W�� �� 	 '�� Zf +   #/ am #/ $�� {� 
$0 gs �� �� ����*:0           
 � � � #Ykl��c��.�0%6�� ��� *2 EM !�� ����:0           X � � `�,A�� ����:0            �K  ����:0            q +�� ����:0            ^ 3 M�� ����:0           ��3*�� 8�� ����:0            �QZ ����:0            �8B �� ����:0            [.+$%�� 9�� <�� ��  
 ����:0           X ]���  �� ?F ����:0           u ��7? ����:0            � &(�� BJ 
 W_ 	4< ����:0           i LM�G&$&G^�� 	9B /�� v x� FO ��  <�� +�� 6�� �� B�� ����(:0           P i y � � N`prs��%,  ����:0           + !&6�� ����:0            �,mu ����:0            ��%,8%�� 	=E �� ��� 7? ck 6> 5�� ����:0           ] k � ! W�w� ����:0            � 
3C JZ ����:0           � ,";%�� '5    �� '5  n| �� ���� :0            � � � ����". �� �� 6�� <�� ����:0           �c��
!F%|� &��  �� /3 {�� ��:0           � )+x	%/ ����:0            q�� ߂�:0            { $1 ����:0            �$K"O!0, !�5�� MS G�� *0 ! MS �� /�� :�� 5�� 0�� 
06 `f EK Q��   "�� ms >�� �� ��у4:0            ] q %AQfXw��������+5�� ����:0            ^ 9/5=8�� &- <�� ?F GN 3: ,�� R�� ԅ :0           O s 2�X^�
29 ����:0            c9D�� چކ:0            _ �� ����:0            �$
'- HN  �� ����:0           � � �$B*�� "�� ��:0           �e!	&- sz -�� ����:0           � �9> :? #�� шو:0           (�>D TZ ����:0           .P
�� #�� 	 ����:0           ��#,�� �� �� 

  ���:0              �#�� 5�� ��Ǌ:0           ��'�� ow ���:0            �PV ����:0            c
  ʋЋ:0           � �cl ����:0            �2  ����:0            � 
/5 Ìǌ:0            �"& ��:0            � O>�� ����:0            w$�� ����:0            -+Y
 " .3 E�� (�� z 	 
:? NS �� "�� bg " FK ۍ�&:0       
    c � � � � � ����F!s�� ;�� ����:0           � )$<+*�� (�� # 	 DH =�� ����:0           
 ' � � (]	���� 6�� #( af ����:0           � � +�F�� ]b Ԑڐ:0           x�CI ����:0            � Lt�� ����:0            �C<:?;�� K�� 	-1 K�� #�� hl   *�� ё� :0           A u � � h���G&�� a�� ˒ђ:0           y �DH ����:0            �4	L��  !% ����:0           W ;Y22�� ޓ�:0            � C S�� ����:0           S � �� ����:0            �
 	/5 ݔ�:0           NX ����:0            )=�� >E ����:0           #	 $��  ��:0           � vy ����:0            � 2C�� *�� ����:0           � � 
!    5�� 
{ ���:0            4 Y Z �  %�� ����:0            � 04$&$/$&
!��� lo  &�� RU � 
7: 
 kn  %( )�� ^a &�� 
+. ! WZ "��  GJ   �� (�� _b *�� 
 # TW 8��  ���@:0             " ' / 8 a tw�����prsv����>Y�� ����:0            �@&x3.
	h&�� |� mt �� 5�� #�� '�� w��  ' &�� H�� U\  	(/ T[ ��ښ(:0             ) : rs|�����
@	!.D�� !�� PT JN 
 
'+ TX ���:0             0 9 �n�8? ؜ܜ:0            �#�� ����:0            (�� ����:0            =�� ˝ϝ:0             3  ^_ ���:0           F {	NT ����:0            %�� ƞʞ:0            %
 ��:0            �� ����:0            H	39 bh  ����:0           �OPBo�� ���:0            eGM ����:0            �<G�� �� :0            � 	 ��:0            � u| ����:0            #��  ����:0           M4 # 
59 os ��:0            �� ����:0            � 7�� �� ��Ƣ:0           $-�� ���:0            H1
:C ����:0            21�� ��ã:0            h (, ��:0            $�� ����:0            el ����:0            *�� os �� 37 ��  פ�:0           
  � � '�
_d mr ����:0           �,2�� ��:0            ��� ����:0            �
	)1
 ;�� A�� 
 
7: 
  >A  ����:0           � ���) /�� ����:0           H 86�� §Ƨ:0            3BO ���:0            7�� ����:0            $)LS ����:0            1'lu 
aj " ڨ�:0           .;it ����:0            F� ����:0            8�� ީ�:0            5�� ����:0            F  �� ����:0              Ӫת:0            H($�� ����:0            % G	�)&�� 
7B  ��� bm ?J ����:0           P o ~ � � Y	^f [c CK ����:0           V �G(
�"@	.3 !�� )�� C��  " <�� ��  �� ��Ƭ:0           P d m  � � fG+0�� E�� ����:0           P ^ 1�� ��:0            �+$1P PW �� |� �� (��      �� :�� ����":0           ^ a g p p����
 QU "& 
/3 ����:0           � ���q��  >F ԯݯ:0           � ���� ����:0            �� ����:0            e&�� ް�:0            e tz ����:0           � �  x#) ��	�	 ����:0           z|-W�� ��:0            p2< ����:0            �
-<1-W\ '�� �� @�� �� !�� ����:0           6 T � M�-�� ����:0             +2+�� �� L�� ����:0           ) ]�$+ ����:0            � C?E CI =�� M�� ����:0           ) 1 A C*MT ls ��  �� 9�� ,�� ۴�:0           
  @ A oy ����:0            �+&29D2�� sy <�� :@ �� 
8> jp N�� ��   յ� :0           ^ i � � � �Y�+&�� Զض:0            ^ B*]c �� MS $�� W] `�� ����:0           [ �T��� طܷ:0            T#z� *�� ����:0            �.�� *�� ����:0            [ x10��� ��� ��� ��� ��� ��	�	 ݸ�:0            |B +
HO t{ 8�� 
#* JQ !( % ����:0           $ ez���!�� &�� OW qy ����:0           � +!�� ͺѺ:0            jm ����:0            BF87C#.j), "%  #�� :�� 2�� D�� ]�� 
?B '�� '�� 1�� PS nq 8�� ����*:0           $ � � � � � � =���-
rx ci Ҽؼ:0           p�0). �� ����:0           `�
2
 8��  ;@  @E ����:0           � _o�+Ox!DH 0�� ae (�� 04 ����:0           w|�BM�� ;Ѿ:0            e ����:0            �  ����:0            g�� ��¿:0            %  ��:0            ' 5; ����:0           x y =9�� ����:0            �	$-FN �� #�� 1��       ����:0           ����
S[ ]e ����:0            �!�� &* '+ ����:0           � ):2

3; X` ����:0            � "% ����:0           <#�O30LB��� fj V�� ��� 2�� 	-1 <@ �� "�� ����:0           � �w{���BL#W�� b�� �� ����:0           e��� x!2��� '�� ��� ��� �� %�� ����:0           � � |��'�� ����:0            ;/	,1 *�� ����:0           1 9"- ����:0            _ :�� 1�� ����:0           � � 	x9L+]a BF 
 ��� >�� 2�� ����:0           ZUW|��
6> ����:0            � 
$9.$�� MU V�� "��   ����:0           ' r���')�� ����:0            �
 <F ����:0            � 7*�� ����:0            $ �� ����:0            �o{ ����:0            �1-�� ����:0            �F2�� ����:0            � 52�� ����:0            ^5! $ ����:0            �1 ����:0            } 4� �� ����:0            �"+/ ����:0            � 7KP 	6; A�� ����:0           # � � .0�� ����:0            X &4!	!G>&�W�� (�� 7�� X^ �� ! LR u{ �� )�� 1�� 
	&, lr �� ;�� SY RX �� 
	 9? `f ����6:0           W Z h p � � Uagi�������9;J ����:0            � 47NO
!$1L�C�� N�� 
3: pw 9@ # RY cj  �� �� CJ �� ]�� ��� 
%, nu .5 ,�� �� @�� #�� *�� 6�� I�� h�� ����0:0           W a h n � � � � Yw������JS ����:0            H9.�F B$&9$L"	.>��� ") AZa �� B�� K�� t�� ��� ��� ��� ��	�	 *�� !�� )�� C�� Y�� k�� 
4;  JQ   )�� "�� 1��  %�� =D '�� 	 *�� 1�� ?F 3�� �� �� 
7> �� ��� 
:A ��  �� !( & +�� �� gn ov ����H:0           X � � � � � � �]cdefns�������������0$[�� &�� ����:0           ���F"522$!l	:B ��� ��	�	 _�� w�� %- "��  [�� #�� D�� RZ )�� �� IQ ����&:0       
    � � � � �^mop��1x+\c ,�� �� DK )�� ��	�	 ����:0           } ~ �|/7 ����:0            ~ !	COq$�� +. 
 9�� fi .�� A�� R�� i�� 
14 �� %�� T�� [�� n�� sv ����&:0       
     j � � � � bXw!# [_ ����:0           { �C:V��  ]�� ����:0           A h�� ����:0            7�� ����:0            [ cj w~ 18 ����:0           $ ��� ����:0            %"ht ����:0            R"1< ����:0            R)�� ����:0            v  ����:0            �6W��   ����:0           Z�#KF"(rw X�� jo   �� ����:0           B q � � t�
F2.$:��   4�� U[ (�� ����:0           � � ���gm ����:0            � {� ����:0           � u! ����:0            � =C ����:0           6B! ����:0            �	OT ����:0            �0;�� ����:0            �"(�� *��  
 :?  ����:0           
 � � f��=F ����:0            
nu ����:0            U 8;�� ����:0            � /L ����:0            � 
r} 7B (  ����:0            � ��(&-=*fj ?�� im =�� �� TX ����:0           	�@Q�� ����:0              	%, ����:0            � ��  ����:0            N fk ����:0            �� ����:0            � �� ����:0            �!�� ����:0            �2"�� ����:0            m # 
 
9< ����:0           .P}� 15 ����:0           +�'"5
<>B ko �� �� GK �� ^b 
 
?C ����":0           � ^i�1X�� ����:0            } UZ ����:0            =*�� �� �� +/ ����:0           ���-.+A�� p} �� r ����:0           6 T X ^ #, ����:0            �#- ����:0            �+4 ����:0            �
 ����:0            �G!�2"-& 
O9�� �� �� Za 

5< JQ OV bi G�� T[ 	-4 >E ����&:0       
    P � � � � f�sz�O  ����:0            w$C+20#,G�	;A �� �� %�� �� JP io  
 =C |� 8�� OU 28 ms  9�� (�� o�� �� ����4:0            ) m � � � $>DLSo�����-B�� KR \c ����:0           6 O � 	  � ����:0           V ]AK ����:0            �
LZ ����:0            U is ����:0            �#%�� ����:0            B 
��  ����:0           T V-CG�)BO�� bh gm u��  CI V\ JP 
 &, |� *�� ����(:0            A P � !>����e8@ ����:0            !6-�� $�� D�� ����:0           Y Z Z!7�� jx Yg *�� ����:0           $ Z � [(9#@E 0�� di <�� ����:0           ���4�� ����:0            �"+!9

0?x 39 <B �� )�� 
 	/5 NT %�� +1 	+1 (. EK  �� (. 

,2 bh 
 ����2:0           	  1 Y ^ � � )2=������aj ����:0            {  ����:0            { UZ ����:0            �� ����:0            � :in M�� ����:0           � � <?   ����:0           � 2:!,&..�� 0�� VZ -�� �� /�� ����:0           �h����13�� ����:0            } &$ ����:0            �##�� ����:0            9&�� �� F��  ����:0           � � 'L	 `j #�� eo ����:0            � �� ����:0            Pnz ����:0            PG<	C7	$TG�� '�� �� 0�� N�� l��  #�� �� 	   ���� :0           P � � $P%)"�� 9= �� ����:0           16R"�� ����:0            	 % GL ����:0           � 8? |� ����:0           4JP @F ����:0           � (,�� <�� ����:0            ` )�� ����:0            + �� ����:0            !  |� ����:0           z�+7�� ����:0            ] ;A $�� ����:0           ^z  ����:0            �4]��  ����:0            �"54-+
"
(B�%* L�� 
+0 ty ��      QV �� +�� >C �� '�� <A $ '��  _�� ��܀2:0             6 O � � � � � � bf�����!<?-BI FM    >�� W^ D�� ����:0           O Z \ � ��#9�� �� ����:0           ��(IP !�� ����:0           	�
19 ��:0            L RW ����:0            ) 

   ����:0           �3; ڄބ:0            �:)�� ����:0            � 5Y�� ����:0            ^`
/@	08-
B:2	3"?.�
 AI 
   
6>  	/7 5= @�� .�� ��    '�� N��    D�� U] ��   ?G      �� Q�� 
' U] s{ �� %�� \d %- �� y� N��  
 ?G {� *�� 	8@ [c �� #+ %�� 5�� F�� " JR GO 
 .�� X`  B�� @H % �� !) %- ͅ��p:0       /         	      @ � � � � � � � � � 5Fhp{��Sehklmv������������)�� ��Ċ:0            J-L�� ��:0            pG�293u08 �� ^f  BJ =E ��
�
 em "�� 6�� mu 4�� ?�� Y�� IQ X�� �� ����*:0             * C P � � � 2{�G292�� =F 1�� ӌی:0           P � 20+".Z ty P�� �� (�� ;@ HM @E �� \a 4�� N�� @E ����*:0           m � � � � ����jp ����:0            O 3!�� ގ�:0            {+8�� U\ ����:0           � �/?G ����:0             `g �� ۏ�:0           [g &1	22 v FM $�� nu �� ��  �� :A nu <��  �� z� 
   ?�� ,��  ' ����0:0            8 } � 9>�����m�	%. ݑ�:0            A(<�� ����:0            �D	<(
-
#("x � .��  $- 
 2; @I CL W` ( 
.7   #�� /�� '  	  KT J�� M�� (1 <E dm  ir >G  %. %. nw 	,5 W` ��� ! 	09 V_ �� ���T:0       !     < s | � � � � 	 +I[_ep�������j|���2"xI,5 &��  	  	 ,�� {� e�� AJ v  	  ��ϕ&:0       
    > � %od|����t} 
4= ǖ͖:0           ES	
$       ����:0           ������,!�� �� �� ͗՗:0           �-.
NV ����:0            ��� ����:0            #BH ؘܘ:0            #�� ����:0            7�� ����:0            $-&32$�� fj # "�� JN "�� <�� ˙ۙ:0           � 5I���1!�� ����:0            2(#)�� (�� �� ۚ�:0           ` f b%@�� ����:0             +�� :�� ��ś:0            � )  ��:0            11 �� ����:0            2  ����:0           )(�� ��:0            1)ov ����:0            1 ����:0            4GL ۝ߝ:0            ��� ����:0            ^9:#2x!B�qw Z�� �� "��  kq �� �� % 9�� ^d &�� 7�� >D �� �� `f R�� ]�� ��Ǟ.:0           4 _ � � 7����m|����:.5 CJ �� ����:0           � � >##�� V��  �� ��à:0           � ���� ����:0            Z-2 ����:0            �2�� 	 ơ̡:0           � � 
 ����:0            O!p�� 
 (/  ����:0           w���� ܢ�:0            U2'
$.>D�� " !�� HP HP '/ ;�� #��  ����":0           � � np��*	,8 ����:0             # ����:0            �� �� 
<J ʤҤ:0           ��	*3 ����:0            S/8 ����:0            �v ѥե:0            
,3 �� ����:0            �CZ�� NX ����:0           A y 2LQ �� ئަ:0           : o2]�� �� ����:0           � �in 
 ]b ��§:0           '�	 /*CK |� )�� 2�� /�� (�� ���:0           ��4
(��   ��ɨ:0            �V	(- 6; �� !�� ����:0           p ���� *�� ��©:0            �1=�� ��:0            � ����:0            ~
26 7; ����:0           � � ��:0            v�� ����:0            +52  �� ����:0           ^o,A�� ��:0            �>&�� +�� 2�� 9�� ����:0           ���+. Ҭ֬:0            F"T�� X�� \�� $�� ����:0           � � @2$O.A�� Z_ A�� $�� #�� �� ��ƭ:0             � ��pw"�� rw 0�� ����:0           n�-&M2�� ). kp 
.3 v{ �� !& $�� ?��   8= Ѯ�":0             , / 5 6 7 8 �$-6�� K�� �� ݯ�:0           ' 6 �	 IP ����:0           & u /0�� J��   ˰Ӱ:0           � �0"�� ����:0            �$) ����:0            	&#+9�� :�� �� Աܱ:0           8 B -G�� ����:0             ) ����:0            v5
 fl  ߲�:0           [^04&9('2

 B�Y^ �� �� >�� 
  E�� 	7< #( y~  #�� 1�� �� ;�� �� &�� 
6;  �� 
   jo  k�� ��ʳ@:0              / 1 8 _ � � � � 	L�����z���9@ Ƶʵ:0            -F ��   I�� ���:0           � � �x ��  ����:0           z�+2 F��   �� ��:0           � � m+"�� ����:0            � "  
  
  ̷ַ:0           ���� 	 ����:0            �" " ��ĸ:0           ��	65(.!	�HM ns 
 hm Z_ 
  %�� 4�� R�� %�� Z�� *�� �� 4�� �� %�� $)  ����*:0            | � � |Z^���	
7��  ��ú:0           m �    ���:0           | � 
$- kt ����:0            � 3< ǻ˻:0            �U_ ��:0            � V\ ����:0            [N93#�� �� gm k�� �� �� 
 ��ļ:0           m � � 2c�*G��    ����:0            O
 ׽۽:0            � 9("#"8R�� 	 
 ,�� "�� 	 >�� 37 ���� :0           _ ` h f��"%"�� !��  &�� "�� ���:0           1 � f�U\ ��ÿ:0              ��:0            M +5�� ����:0            3	9C ����:0            {3  ����:0            {(8)	--HX] 3�� [�� #�� PU T�� NS "�� uz  �� ����$:0       	     % � 9p�u�%t| !�� ����:0             ch z ����:0           ^83*#�� V�� AE 
<@ #' :�� ����:0           , � � �d�BV�� �� ����:0           e�(2	26�� 3�� qx jq  �� $�� '��  ����:0           d � o�
-46@ &�� %�� @��  �� Q�� �� $�� ����:0           
   Z		 HN ����:0           �
9((]�� G�� 
'-    ����:0           _ d � � � � 	. 
! /6 )0 	4;  
" Za ����:0           � � � � � � 6�� !�� T�� ����:0           ~ �ZK�� ��� 
 PU ����:0            q ��� "1 ����:0           b.�� ����:0            h 
@
#%k��  	  
 -5 ����:0             ����	 ����:0            � QX HO $�� ����:0           F � $�� ����:0             ����:0             mt ����:0            �� ����:0            dX^ ����:0            KP�� SY 
(. ����:0           q   ����:0            	8> ����:0            =�1�� ����:0            � t| ����:0            � 
?G   ����:0           . � 
%%& �� y� ;�� �� {� ����:0           e / ��.cm gq ����:0           �#.cm C�� ����:0           B �2)�� ����:0            �  [` ����:0           � � �� ����:0              ����:0            N z  ����:0           ��$ ����:0            �  ����:0            d ����:0            9	 C�� 
 	(- ����:0            2� 7: ����:0            �
8F ����:0            vG,�� ����:0            �&�� ����:0            0 �� ����:0            [ [b ����:0            ��� ����:0            l�l��  py ����:0           � �&�� ����:0            �.E�� ����:0            �.0�� ����:0            �&2�� ����:0            * ����:0            � 3�� ����:0            �),�� ����:0            kq ����:0            $  ����:0             	+8dk 
)0 EL C�� M��     \c ����:0           � � � � ���K\e !�� $�� ����:0           q s � 
K23#b�� {� eo 4> 1�� ����:0           q � � 
� TZ ����:0            �,%�� 
9A ����:0           �%9�� 4�� ����:0            �"�� OY ����:0            �LX ����:0            � 19%G�� %�� -�� V�� ry ����:0           } � 2L
  ����:0           KP:ks ?�� #�� ����:0           � �(	4+�� <A �� NS ����:0           % 9 W �Yb  	 �� ;D ����:0           � �  W^ 
 ����:0            �8UX ����:0            � ,  &+ CH ch ;�� ����:0            �"fp ����:0            f
2G'�� # 6�� L�� ��� ����:0           ncm�K ����:0            q 8?�� ����:0            � =�� ����:0            �
'$$�� 	19 	 &�� #�� ����:0           * I���!
BLei '�� '�� �� CG gk �� !�� 	 
 !�� ����":0           ) @ � _e���.;�� ����:0            � ����:0            �2�� ����:0            2-�� ����:0            ��� ����:0            I	&1 ����:0            �!�� 
;> ����:0           �� ' FM ����:0           ��G]�� ����:0            �  ����:0            z X^ ����:0            i]f ����:0            < ow ����:0            ? �� "�� ����:0            �� ����:0            +
�Yd $ d�� ����:0            � 	%+ ����:0            ��� ����:0            � "�� ����:0            �m(G4.+%#	2�87!

 0$&3L,"G, >&#�(.  &�� )/ [a =�� ~� )�� -�� |��  ;�� �� A�� PV X^ $�� [a  y ��  n�� ��
�
 (AG �� '�� 1�� J�� a�� (�� +1 �� GM �� O�� ?�� #�� ci NT �� &, $ sy �� � <�� �� 7�� #�� `f 28 !�� ?�� (. hn �� #��  $�� )�� >�� U�� (. 	39 ,�� TZ _�� `f 1�� JP O��   ?�� .�� !�� \b W] ����|:0       5       " % 7 P W X ^ e f o | � � � � � � � � � )+�V[\]`fqrs�������������������&�� ����:0            =+(G(%#K
:�021L,� OV ;�� H�� d�� �� t{  9�� 4�� <�� z�� 
 el D�� M�� % '�� .�� I�� R�� ]��  5��   +�� ?F ��  ����::0           % ( P ` a e f q  � � *[`bmv���) ����:0            � 1�� ����:0            2
GR ����:0            %	*3 ����:0            )#�� ����:0            1
 ����:0            >B ����:0            >'
We ����:0            ;1sx ����:0            2�� ����:0            H oy ����:0             >F �� ����:0           F�� ����:0            .
X^  ����:0           -/7$( ����:0            $�� ����:0            =I ����:0            %,
	9A 	W_ ����:0           �� ����:0            M�� ����:0              ����:0            �C?rw  P�� ����:0           A � �	4: ����:0            v  �� ����:0            � ei ����:0            �  	V\ ����:0           BE"-4+	&"	"0&Gt�� X\ *. ��   sw   6�� 59 )��   ae  (�� ! 4�� h�� ����2:0             ^ m r � � bfj�`s�@E ����:0            �C&	#
K/4 /�� A�� ,�� # &�� !& CH  +��  ����$:0       	    ( A i � � � '���8�� \�� ����:0           s � �� ����:0            -�� ����:0            -=I ����:0            M
 ����:0            37'��  �� ����:0           �  � ����:0            [ �� ����:0            �
QV EJ ����:0           � �,/ ����:0            5 ����:0            0 8&��  	 ����:0           348�� ĀȀ:0            3  ��:0            8�� ����:0            3)@P   ����:0           4J*0 ��:0            *8 ����:0            P)�� ����:0            188�� ׂۂ:0            3	\e �� ����:0           /0	=I ����:0            :t� ԃ؃:0            . ����:0            Ggy  $ ����:0           -.C ؄܄:0            %?:�� ����:0            ��� ����:0            '$�� ˅υ:0            '  �� ���:0            1 $' ����:0            -(Hgk ^b TX /�� UY #�� 
26 �� FJ ]a #�� ��҆":0             � p�����2&*�� .�� /�� Ň͇:0           �ms)�� ����:0            J4:#> �� (�� 4�� �� ����:0           W � ��-B!  (�� ����:0           � �		:? 6; 	$) ����:0           r �<*54@(&	/&�$�� ��  *�� #�� <�� ?C 7��  " [_ !�� mq &�� KO ��  
	37 [_ ;? 
 @D 7; %�� 3�� @D ]a }� �� dh ?C 	;? RV -�� A�� 	 -�� A�� ]a ���L:0           
       % + , 5 8 @ L M m � � � � � ,Ahkr�s�
. @E RW 	-2 
 �� ����:0           0 L � ,�IM ʍ΍:0            
'+	[CL   >G  	 �� AJ  3�� '0 	*3 �� &�� +�� ���&:0       
    � � � � ������BN ����:0            � ) ����:0            �+%3L
;}�  #,  &/ 2��  k��  ) ۏ�":0           [ ^ � > ���$eo .8 .�� \f Րߐ:0           i��&�� ����:0            �	K# 	&0 	*4 �� y�  
(2 ]g jt #�� 	)3 &0 ��ב$:0       	    �����u1'�� ϒӒ:0            2!$ 69 ����:0           �N'�� ����:0            ;" ̓Г:0            �" ���:0            #�� ����:0            %_h ����:0            -&�� NR  ��:0           M  �Clq gl %* ����:0           � � �� ֕ڕ:0            � 
71'"FK ��  ��  ����:0           !$25;" ΖҖ:0            -#$�� ���:0            ��	��� ����:0            � -*�� ×Ǘ:0            � 
 ��:0            �	!
LO cf X[ ,�� ����:0            9 	/7 ϘӘ:0            
2)
 	37 
  #'   ����:0            � qv��&)�� +�� Й֙:0           8 �
 ����:0            �8MR ����:0            38X_ ͚њ:0            3$=C ���:0            	5	] JN +�� # @D   +/  PT �� $�� jn   $ ����(:0           z � � � �UX^c���$- �� ��Ŝ:0           k I'/�� ���:0            2C'6T�� #( af QV $�� QV (�� 	49 ���� :0           � � � � n��@H ����:0            � �54($	#		-
!!"=.	.	!B
�
HL  �� �� .��  #�� *�� ko X\ 6: 
GK UY 
7; 9= �� 
 sw  (, *. W[ !�� (�� U��  VZ  �� �� tx �� �� pt �� )�� OS }� �� +/ 
PT qu   
 gk X\ )- �� [�� e�� n�� ��  '+ 
    qu 
  im      !��  	%) 9=   )�� I�� M��   AE #' ^b uy ��   	  	"& 7�� 
	  
 %) 6:    FJ �� 7�� ;��  
IM im qu 	)- �����:0       ?    
    % ' ) * + 4 9 B � � � � � � � � � � � =[fghv{|�������������������������������z� �� ����:0            
B$&�� % �� v| Y�� ڥ�:0           [h��

 DJ ����:0            }.5 צۦ:0            
 0@$--


�!  G�� S�� V�� j�� " �� O�� &- ?�� GN  )�� �  

 	18 �� �� 
 $+ 	3:  '  �� 
 	*1 �� 

 >E �� 	 #* ����@:0             & ' 6 ; � � � =hvy���������^/4@$#!!2..�y~ \a 8= 	#( .�� RW Z�� ��   
 
?D C�� 	+0 7< �� mr �� 
&+ y~ -��     
9> mr �� GL |� $��   2�� TY "�� !&   $ �� z  ,1 
9> NS 0�� 
  PU �� @E #��   �� '�� 

 \a   IN -�� 3�� S�� %�� 	 |� lq  27  Щ��n:0       .           ! " # ' * , / : B � � � � � � � � =twx{����������������6> Ү֮:0            �
7ei w{ 
MQ X\ :>   ! �� ���� :0           � BET����.BC�� X�� ��:0           X �7 �� ����:0            �  Ȱ̰:0            GF9\�� GP l�� 8�� ����:0           P �x�'. ) <E ��  	 ����:0           ��#py v ����:0           � �+%�� !�� ����:0           � �$	
-"	 	*/ �� 	-2  # $�� $) 
', 	<A )�� @E +�� B�� Z_  �� 38 
 /�� ݲ��4:0            7 L m � � � � � � � � � Ucp�(F-	&�RX 

   �� �� ��    �� (�� 06 ek  gm %+ bh �� ci `f ,�� ���8:0           : J � � � � � � � -^dep����$!-2()9.B�%��  [` I��  *��  !&  �� !�� �� %* HM K�� 	(- 	(-    e�� ��ܶ4:0            Z � � � � � � � � 	#2W����9
0 FN �� >F D�� ]e �� ����:0           � � 2s�
$* ����:0            �
�� 
16 ch ?D ����:0           / � � ?;C ���:0            ��� ����:0            h>D ����:0            �
w~ V] Y`  ��:0           ?o����  ����:0           � �.%L-�� $�� �� ֻ޻:0           X  �0 ����:0            �26`e S�� jo )�� 
>C <A ��  ��̼ :0           N � t[����@\�� ����:0              
 
 ak ҽֽ:0            � @E ����:0            g{� ����:0            � Ǿ˾:0            4 5&�031(�� �� ��	�	 V�� R�� �� ���:0            8 � `{�0�� ѿտ:0            M 9(�� 
=A SW �� ����:0           _ ` a GL ����:0            a �2�� ����:0            �  ����:0            w�/*4@$&CG.9%K2F8!7N(&
-
2/"
B:xL, >�:> VZ 
 ae $�� dh '�� 2�� pt  �� 59 AE *�� �� s�� ei � B�� nr %�� &�� ! 48 �� M�� <��  �� 7; im 	04 /�� 26 (�� W[ HL 9�� 2�� =A /�� �� os CG �� pt  /3 ,�� B�� 7; fj  BF AE w{ �� lp �� 0��    
	15 :>  $ �� C�� a�� >�� @�� 	 x| E�� D�� # �� ,�� &�� !�� &�� 
59  $  $ �����:0       F            ' ( 8 @ A F P X [ ] _ c e q � � � � � � � � � � � � � � 	'WY_`bp}�����	V_eh|����������3GL ����:0            �&#8�� CH �� JO �� "�� OT �� ����:0           8 T f ���!5�� ����:0            � ?c��  
 ����:0           ���*�� ����:0            � >�� ����:0            �<i�� �� ����:0           � � �� �� )�� ����:0           L�.&�� ����:0            X -	"7V�� �� +�� KS �� EM V^ MU ����:0           6 h � � x�:! ����:0            h ����:0            d	7- (
 �� K�� 3< 
 �� ����:0           l � ]+,�� ����:0            � #!�� ����:0            9,�� ����:0            �
IO ����:0            
	E ,0  �� $�� �� x| 
 /3 
# 
=A ���� :0             c ����(
2
/]�� 
  +0 TY 
" EJ I��   TY $) 
#( SX ��  ����(:0           d 3Bz�����- ����:0            � 4&*�� E�� Z] C�� NQ /2 ����:0           0 W � =�:.�� z ����:0           � � $�� ����:0            ] 52��  ����:0            |� ����:0            
 ����:0            ech   ����:0           �� ����:0            � 	O !!#GGov   W�� ��� "�� .�� :A '�� PW K�� ���� :0           � Uwz���� ����:0            ,,4 ����:0            �5>�� ,�� ����:0           ^�9((% A�� 4�� "�� 3�� ����:0           _ ` d e 51|� (�� �� ����:0           ^�57�� ����:0            ^ �� ����:0            ] �� ����:0            � . ����:0            X 4x"�� !�� ����:0           W |�� ����:0            �-�� ����:0            +�� ����:0            �	 ����:0            �#�� *��  ����:0           ��Kl�� ����:0            q !	09 ����:0            �|� ����:0            a ����:0            �5W_ ����:0            ^({� ����:0            	4�� ����:0            !./�� H�� ����:0           � �@
0�� R[ ����:0             �,6 �� ����:0           
8= ����:0            U --�� ����:0             26 PT ����:0           ��Kw| w|   ����:0           q � 

  ����:0            � 
Fx%��   # p�� ��� ����:0           M � Nx|ov ����:0            L "�� ����:0            �	7< [` ����:0           ��$(	2-,	{  :=  ! dg ,/ �� 
 "% �� 
 H��   
 ?B  �� !$ $�� X[ ����4:0             � � � � 	;�������0-(>
5; I�� !�� 	17 4: [a `f �� '�� ����":0           � � � p��	`f ����:0            �45�� Y]  ����:0             �x[�� ^�� ����:0            |BG Z_ ����:0           ��
   . ����:0            ,_e ����:0            -- ����:0            /	2; ����:0            %>�� ����:0             OT <A ����:0           t � 18�� % ����:0           } �,CN"$xLG>�+�� @C ! \_ "%  JM DG ad KN  SV  
 "��   x�� (�� 
 *�� ��� 9�� $'  ����<:0           A F I � � � � Pdf���S[_|�����+(1221H?�� �� Q�� DH 26  `d �� E�� �� ����$:0       	    ^ ` } � � � M���
 (- 	05 ����:0           � y21�� ����:0            � #
?6�� U^  �� ����:0           f 
a�09nt �� ����:0           � 2  ����:0            �bo ����:0             ����:0            �1&�� ����:0            2hl ����:0            �
:< �� ����:0           ; ��� ����:0            (�� ����:0            (  ����:0            (GF��  ����:0           P ~ JT ����:0            Xd <H ����:0           t � ����:0            �
	0; ����:0            �	R] 	-8 bm ����:0           l � � *5 ����:0            t #
&3�� @�� ,3 ho ����:0           � ����� ����:0            � 
7A $ % ����:0           ��u ����:0            �"G0!(2	"ybl <�� j�� +5 3��  ?I ;��  pz &�� V�� �� MW lv !+ MW PZ ����2:0             P � � � 	�������� ����:0            #	0)/0@:G Q^ <�� >K "�� |� !�� 1�� 6�� ���� :0           f � � � #`
# ����:0            i ����:0            �+%�� ����:0            ]
jt [e ����:0           - K	V` ����:0            6Wd ����:0            Z2/�� ����:0            mz� ����:0            �do ����:0            �N
4: ����:0            � (@!
�!�� &* hl �� �� x| �� KO ��    04   
" pt    
15 -1  ����8:0             * / � � gx�����������
 CH ����:0            �@J ����:0            0?4 	,0   uy M�� O�� 9��  ����:0           ? B`��8�� ����:0            � 

 ]c   
 ����:0           � "i1��  ����:0           � �
+* ,7 NY 2�� (�� �� ����:0           T U .]?Z�� ����:0            ��� ����:0            t�	��� ����:0            � &JT ����:0            !�� ����:0            2 ����:0            m#�� ׀ۀ:0            �`r ����:0              
 �� y� ����:0           #-I���� 4< ߁�:0           � �(�� ����:0            	Cq�� ����:0            A Bw�� ���:0            e&.�� @H 5�� ����:0           s�B�� ��Ã:0            eB.�� >��  	 ��:0           e��.H�� ����:0            �/	�� )�� AE ʄЄ:0             
5: ����:0            �=�� �� ����:0            �"8�� Յم:0            �MS ����:0            �NQ�� (�� {~ ����:0           � �NO;? o�� ,�� ކ�:0           � w!K28M,�� +�� V�� rt �� N�� oq 35 ac �� )+ ����$:0       	    Z q � � � � L���@R��  	 ����:0             y1�� J�� ׈݈:0           =�l9(	0"	2(
#-+50x&� 
),  ,/ wz   ��   hk  ^a 
 be 0�� /�� ��  	-0  *�� C�� jm %�� $'  QT   
 !   ), !�� $��     	-0 dg �� �� 	(+  *�� #& >�� 	HK +�� 
9< VY �� SV �� 
Y\ wz $�� "�� ^a +. 
	 9< ����|:0       5    $ 2 3 H _ d h o u x � � � � � � � � � � � 	&367BEJ`n�����^`cgl|�����;$#91
�!'0$($G=>�?�� Y] sw #�� a��  �� 	$( ��� 7�� ~� 	$( %�� "�� 	/3 uy fj ,�� *�� rv 6: jn  0�� 9= 1�� 2�� U�� `�� =��   ����J:0           ' B [ _ z } � � � � � n`fj��������	
G0-R	17 `f &�� &�� �� nt % '�� w}   ��  ����(:0             P � � � >���  &!	3x!$�# 9�� 2�� dh �� " �� QU 
	# BF (�� BF VZ 6�� E�� J�� ,DH v�� ��� ��� ��� ��	�	 �� nr ,��   ����0:0           i m � <=l���{|����4
/G&1N	 :O9,=�MR ��  �� (�� gl $�� JO K�� Z�� $�� M�� s��   �� Z_ #�� �� ej Y^ .�� ^c <A ]b (�� -�� $�� j�� 7�� ]�� 
RW fk 2�� af 6�� X�� ��הD:0              ! * < C P i } � � ehnyz���hw������ ����:0            ~ 
"5�� .2 dh �� 
15 Ɨҗ:0           @ ��j+-�2
BFx1L	���    /4 i�� ��	�	 W\ jo FK  �� '�� Z_ EJ in ,�� .3 38 y�� *�� j�� $�� �� i��   FK ��Ę::0            c h y � -x�����[eqx|���2F!�� �� ����:0           �x!.>fm (��  "��  #* T�� '�� el ���":0            � � � u���� ��:0            %" ����:0            �>E�� ����:0            �4�� Ԝ؜:0            W # �� */ ����:0           9A�� ����:0            O839 ӝם:0            3 ����:0            �
1= ����:0            L �� ƞ:0            '	   ��:0           ; ����:0            $2b�� ����:0            � 
 ��:0            "5&$�� C�� $) ����:0           ^�  Ơʠ:0            � >4�� ��:0            �&922$3#
��� \�� A�� Z�� 	 CH */     <A " "' �� �� uz �� ��  1�� =B ����6:0            _ � � � 1������op����	17 ����:0            � #<�� 
.4 OU !�� ����:0           B � � ,8
BE SV %( ���:0           �3:pv ����:0            
$>E sz bi ^e 
\c ͤ٤:0           +47G!2�� 	)1 D�� ����:0           Z ��(?H -�� ץݥ:0           � 	# & 2�� ����:0            �2_f ����:0            oFN�� ٦ݦ:0            � ). QV $) ', ����:0           )4Q%( çǧ:0            K4, 7)1#)"$�FH bd �� \^ ��  �� ��  ]_ ,. vx TV �� "�� #% "�� ! 	AC 
FH eg �� �� �� "�� %' `b _a �� �� ��  �� �� ���D:0           �$'(*.01259BCDEFJLMOR%
]e ˪Ϫ:0            � �� ���:0            2$ )�� 
17 ����:0           mp2pz BL ͫӫ:0           mq�� ����:0            1)�� ����:0            2 ʬά:0            %)$�� ��:0            J"�� ����:0            R.  #+ KS ��ŭ:0           ���
DJ tz 
 
<B ����:0           �� %. ����:0           � � 07 ޮ�:0            5X] [` ����:0           >L#$�� ����:0            9).8 ٯݯ:0            J$�� ����:0             DJ ����:0           pw ԰ذ:0            69!�� G�� ����:0           2$CN2�OV gn 0�� 5< :A 0�� 2�� !�� $�� .�� <�� )�� 4; �� 6KR �� 4�� 7�� D�� H�� \�� n�� mt H�� X�� 7�� t{ ��ʱ,:0           	 
     ' < ? A v � ��N.+|� ks %�� i�� x�� K�� ��ų:0           $ � � �9��  �� ����:0            21�� ��ô:0            �'.4 �� ��:0           0;]a 	KO ����:0           ":LO {~ Y�� Ƶε:0           n � h% tz ����:0           � IF93��  �� F�� ����:0           � 2FY^ ��:0            � $in ����:0            ��  QU .2  $ ��Ʒ:0           O � ���QW ����:0            �
 ����:0            �%* Ѹո:0            � ����:0            ( ��  �� ����:0           � <\�� ιҹ:0            � 2&G6 :��   �� 3��  	-4 5�� ����:0           �orst�-  :�� ޺�:0             % ����:0            �  ����:0            �]j Իػ:0            �'�� [e Zd ����:0           n�# ����:0            !9!�� ټݼ:0            � ����:0            �2=�� ����:0            o��  ̽ҽ:0           7�
	  
    +. ����:0           
	
,0 os ��   $ ʾҾ:0           	!�� $�� ����:0           M �pw ¿ƿ:0            ���   ��:0           | �	4�,)�� \c ��� I�� ����:0            O � ��{�  ����:0           � �"
-1 *�� ����:0           � &F	! 	v	CG *�� d�� 	  %) 
/3  �� 
 <@ lp �� 8�� BF  HL �� ����0:0           > i � � 
)Zz����g�� ����:0            ! 0*�� ����:0            �F�� ����:0            � �� ����:0            �-mt PW ����:0           -
 HP ����:0            -*�� ����:0            $ ����:0            � G�� */ CH ����:0           P � �ag ����:0            s Gnt ����:0            P nu ����:0            y  16 6; '�� ����:0           ��3>F ����:0            �K i�� T\ ,�� ����:0           q �B9%1+C 
6$F
G�,/ JM mp dg I�� 
/2 1�� 6�� be  `c ,�� [^ lo  
 
/2 $��  	  !�� 	47 
 -0 !�� := ��   ��  
 <? p�� GJ  ����R:0             , _ e } � � � � � � � � OVor�����SZfx���� *9&<<6�� LP 4�� #��  ei HL vz  ����":0            _ i � � P�S8< z~ ����:0           v5I�� ����:0            ^ ����:0            j &�� ����:0            ����:0             x!9$,"G&���  >A FI 
8; #�� ), 7y�� ��� ��� ��� ��� ��� ��� 
 ;> RU �� ;�� &) VY 9�� ,�� =�� �� cf :�� OR  ����0:0           n � ��T|����������y� }� 19 ����:0           � ��:5�� ����:0            hW[ -�� ����:0           N �
$ rz ����:0            �"' ����:0            I �� ����:0            ] 	P] ����:0            )	0�F!
03L�
.2 X\ ae >�� }�� &* VZ ae #�� rv @D uy 8< � uy (�� T�� �� �� �� ����8:0           � � � � � )Ubhxz��
`t{�<3mq vz ����:0           � {xG2�� y�� ����:0           |�<8Q�� 9�� ����:0           � � 	8? '�� ����:0            �9"�� 	 ����:0           Y _ 
)#+  �� 2��   8�� �� ����:0            #���#(�� ����:0            �	 ����:0            x2:   ��� ����:0           [�|
$Za *�� GN �� �� ����:0           � � �	$ ����:0            �	%O>&<   
18 *�� O�� 	$+ FM -�� fm ����":0           9�� w����=M�� ����:0            �  ����:0            �@6?6
9>  UZ  �� ^c �� Z�� L�� ����:0             , A�Z�GL ����:0              ����:0            � 1x�� G�� Q�� ����:0           } |�4($-&C#G!	0F!
!('9"-$'%-50B2390	3,.�3�� =�� ,�� 	 jn lp �� D�� O��  $�� `�� hl bf *�� !% D�� p�� 	59 { )�� "& �� %�� '�� uy 
.2  &�� 0�� 7�� =A 4�� E�� &* DH ae 9�� #�� �� (��  .��  $�� ,0  F�� ^b 3�� os #�� ?C QU  �� Y] %�� 
 
59 
26 ^b 37 5�� uy � �� 3�� ;�� 15 	.2 9��  0�� �� A�� I�� 1�� A�� K�� ^�� 
OS pt !�� �� 9�� ?�� K�� #�� G�� :> �����:0       F     % ' 1 6 8 A B P T Y Z l � � � � � � � � � � � 	&2[bcfhkopv������������� ^`egm{������	�� ����:0            | Ze ����:0            ' ����:0             ou ����:0           �AY ����:0            &   ����:0           =j�� ����:0            �
W[ nr ����:0            � - �� ����:0            p ����:0            ] 20	
	 6+�� IO �� Z` V\ Z` LR !�� ���� :0            g � � G���(5 !
$$�	6= W^ 8�� jq 
 DK FM 

 DK 9�� pw  ��   U\ fm 4��  ' -�� � )0 ^e $+ � ����8:0             F s y � � � )Us�cfp���!;B �� .�� !�� ����:0           � �!	EI A�� ����:0           i�'�� Y^ "�� 	 ����:0           � � �K*CG%	�"C


/+Ox�A�� ei d�� 

8< LP "�� =�� L�� QU B�� FJ ��� *�� �� +�� PT �� &* ��   $ 	26 
 ;? ,��  &�� %�� ]a  �� *�� M�� F�� IM ��  s�� 
HL  $ 
TX os ����Z:0       $      A F O P T e � � � � � � � � � "_qx������iw|���(-
'9�� ci 
 HN �  ����:0           % � \p�B#�� "�� #+ ����:0           W��*
*@0<)+/�
9@ @G AH �� N�� W^ e�� FM RY ,3 \c �� u|  !( OV �� 
 �� 
 ho  �� ����::0                   0 � � � ]o�����0em nv ����:0           `�1D�� ����:0            �4"#/.A  RW rw �� Z_ >C HM �� ;@ <�� ����":0            � � � � P��K	$#/! ;�� HM |� ', !�� BG ����:0           ? q -U���!#�� ����:0            )59�� ����:0             "  ����:0           J uF)�� �� #( kp ����:0            � � x �� ����:0           H � \e ����:0            �0�� ����:0            �xq�� ����:0            |2�� ����:0            m8ks ����:0            � >+%#	(	+2	B�/�� <�� 
7< 	 
 49 �� af 
:?    $ 
 	"' .��  
 BG  CH in �� #( 
 EJ   �� (��   �� �� <�� CH   $
6; V[ x} �� 4�� Q�� ����N:0           ^ e f � 	$&.CEFObh{��������m���+%61,y �� ��  G�� .�� ����:0           M ^ e CZ�@B5��     }� l�� $ ���� :0             � � P���(#	#..8�� u| $ ") 	,3 3�� '. ����:0           ` f � � 5��<&)-2r0�� 	/4 #�� 9> UZ rw V[ +0 �� 
/4 "�� �� >�� �� */ 	/4 LQ ����.:0           < � � � � #Adop����&�� ����:0            -2 EJ NS ����:0            � �4&�� ����:0            W 
     ����:0           }~��
	C
F175�� 8�� E�� I��   ?��  ����:0           A ��x�BE ցځ:0            E1�� ����:0            �7$>�� �� �� � tv ac eg ��  ���� :0           $%(*H!ot ����:0            �  ��ă:0            *FS ��:0            "72�� ����:0            $8�� ����:0            3�� ؄܄:0            7l{ ����:0            M1*�� ����:0            2( ˅υ:0            
! ���:0            '$�� ����:0            ;,,�� ����:0            �
CJ ��:0             ����:0            #		7C ����:0            ))�� ҇և:0            J7Yb ����:0            $CL ����:0             Èǈ:0            N_ ��:0            
CM ����:0            �! ����:0            D)"�� ׉ۉ:0            1|� ����:0            8F ����:0            55= Ɋ͊:0            Q�� ��:0            H/? ����:0            . 6
 -4 

NU _f (/ �� 3: &- @G ��ʋ:0           '0CHP�� ����:0            '1 �� ΌԌ:0           FPz� �� ����:0           N%
DP ����:0            C[d ֍ڍ:0            P7/�� ����:0            $ t| �� ����:0             r� �� ӎ׎:0            'Xd ����:0            $&* OS ����:0           �
05 9�� ԏڏ:0           �g%* ����:0            *�� ����:0            *
"       AE �� ѐݐ:0           �(.6R=@ 47 ����:0           /8*1 ϑӑ:0            �#�� # ����:0           9$#�� ����:0            9)B�� ̒В:0            &�� ���:0            1 0; ����:0            &2 ��Ó:0            M�� ��:0            aj ����:0            6

be ����:0            x~ Քٔ:0            !$	X[ ����:0            ek ����:0            
GR ĕȕ:0            QPT "& ��:0           5D�� ����:0            E
+##=�� .�� {� :B   ��˖:0           � ���
#%Z`h px �� DL T\ mu  �� -5 �� �� FN }�  ��  ����":0           E G � � ����  ,��    ����:0           � �	�� ��:0            O'fn ����:0            ;))�� ����:0            1 ��:0            &
GQ ����:0            (* ����:0            �7B 8C њך:0           ���� ����:0            %)�� ����:0            J
*. Λқ:0            1	)* 6�� ���:0           ��1#�� ����:0            21,�� ˜Ϝ:0            2
fo ���:0            /
 
%QV $) ��   ). ����:0           &  ��:0            *
	Va ����:0            ) �� ����:0            J ܞ��:0            -3G .2 .�� s�� ����:0           < ��8�� ȟ̟:0            3?8�� ��:0            �*%�� :? ����:0            �!�� �� 47 ǠϠ:0           7*/ ����:0            "�� ����:0            R Сԡ:0            �>I ����:0            7.�� ����:0            $7"�� ��Ţ:0            $"AL �� ��:0           ER!/ ����:0            ($. ��£:0            &EK ��:0            , 	 ����:0            "" ����:0            "
	>H Ҥ֤:0            *1 ����:0              ����:0            - ��ť:0            !�� ��:0            *	 ����:0            5[f ����:0            5y� צۦ:0            5% ����:0            6�� ����:0            z� ɧͧ:0            H')	
Dbf 

;? cg �� ��   
$( SW +/ QU  ���":0           (47;<J
JP "( ���:0            83�� ����:0            318/�� -�� ȩΩ:0           23""�� ����:0            R
/7 ����:0             }� Ǫ˪:0            
 ���:0            3? ����:0            $$ ����:0            L' ܫ�:0            ; 
 ����:0           ,�� ����:0            �	JP ׬۬:0             19 ����:0            D U\  ' ����:0           (DI ڭޭ:0            P71�� ����:0            $!�� ����:0            �� ͮѮ:0             
*/ 
KP �� 
', gl ����:0           '8& ����:0            %@J ޯ�:0            76�� ����:0            $#jy ����:0            9! 2 ϰӰ:0            	DQ ����:0            G
"0 ����:0             ��±:0            O)]e ��:0            11< ����:0            G)%�� 3< ����:0           1M|� ޲�:0            M
4= ����:0            " �� ����:0            R+: гԳ:0            *7�� ����:0            $73�� ����:0            $'�� ôǴ:0            ;)&08 !) ��  	NV >F ���:0           AGJLMO,$- õǵ:0            �#)	3$( �� �� !%  
)- X\ %) ���:0           )79<DJch Ҷֶ:0            !]b ����:0            %)V] (�� ����:0           GJ7'�� ͷѷ:0            $p~ ����:0            *)�� ����:0            1'!�� ��ĸ:0            ; ��:0            $!�� ����:0             
 ����:0           �� ��:0            O��                ��� �� �L'  543 % xA '0A ������������  nG� e 5  -820.,E%  $x1%   32 �w- 	640C N)  x5B .l0A �� ,0A )0A � �� �iA� � 9lA���� 1 sA�� 1iA����j to�W  %(sli �������<�?�� nb ��  ) iaB�'   sdm��' gli� � Ӈ:oieCƩ2   &Espl ����G������ '�lA���� % sA��u' 	urm#�������- rm���  8>uoie O dA� �ie��� ��������� �� , sA�h d ie!] vo J"l!A��  +; 
uiB�H�  /4<?Ptrkihc � %aA�� � JaA�u \ vo!�)  tn! R�e!A���  Q�� i  �srieD� �.  ]oi!�������� %�tA� L'  sdB�� � +oA��ŏ tc�� ����"�    � oia" ���������˱�n%��  GNd��vomda �jA  �sie!C� ����� ��J%  rmb´ dc�K ���������X ��\%  rof% %  ie!�� /rl!A����L sg��Ǣ   > oig! ' sA  '�y-  nmd ���p �� '�A�����˱��� ��j �� �ş���u' %��tla� �������/  �ld!�Q*   ��sie!�� S sA������O �- �L'   kge! �K  �si!BK  �wc!� � )tA�5 X  ykd!� �� oaf ��� �� ����� (nA� ���� ����� )�n!A�� �ș'
�oheD� ��y ����˱����Ǳ�s�l-�o� X   KNTx�����wtsrmligea % zA����˱��� �������ϧ� �s' � �zc!C����� � 9 sA���% ���Q ���v� �   upoeba� ������V �T%   � yoi!�+ xxti!1 tie!R zs� yo N'8lhB' �iia!� �� �˱�% �aJ  tmw ����ݱ�q �a( ����  �� L tn! 3 sA��� 7 sA������ 'pA� �ȉ oi� �� ���b7 m   tomb!-.��q��  {;DRY���ytsonlca	� � R-  � sia!C��o ����  �  �sB��Ȓ   )tb"�9   sd�  	ecG   yi 3�e!A�� C�l!A������ ��� vpa�  ��� O  'fsrleD{  �pi!� �% ���d!�����L ĀT �����������%  �a� ������˱�����ϧ����% */>�ysnm1 �����V �� iuA���� %iA� A sA� ������r 
na� ��Ӹ Ā����� &nA������ +lA�����v �sd�{ �� �2  yn� �Y ia� � ��\ ���L ia- fc +iA�=V�aQ*  &>Blr���trokgecba	� � �ݱ�% �l���� j=�ie!B) y  �a!< ���y �� 2iA�~ � tr!I ���� 5 dA���\  � pie!'   ie!� rm�   +2uoe� �������3��J�   `fp{ysplki8 ��� ( sA����p v nm!� ���� �� J% snB������ O   'riea' Ato���л ��W ����1  si�� � dA ��Ŏ) �� onc!  ie��7 ���  nm� 6ohV' OTtsg� N�li!����� �� s=qie!B��X�   oea� � 1nA  yr; ��  kfa� � �����Ƽ���� ��ϱ���� � ��������% maǱ�N' %�ra� ����� ��������� ������wJ%    �	  spnlk!��%  	�m!���>�=�=�<�:K7�5>1a+�$vS��!5��	�)    ? {  � � 2�+I��AC}����*	�yxwvutsrpnmlkigfdcba"� � K sA�� �ǖ ������ �� ��  ��vO(� E   
 \	   wupigeb"G�U ��Ʋ ���������ȯ	 ��% rb� ���xL 
  �ma! ~S�  �s!BǮ �	 ie!���-	 ��'  ig ������� ��J%  roe �qQ  ld!B 1>a!A�� 	ie=�9 z,
�e!* ������ N'� �l!B��� � %Kt!A����������+  �sl!��d'   ��ia!�5 	  �a! �'� yn!B������h ����� �7	slB�5 ����&  lk�/ �r%   Jtmd!�S �����   (  ) V �vlka"��O�zU*�KqkD   � � � � � �  N  T��ztsrnlkhdc"� �'  yi�0  �ut! � sA���;   �
sn!�� O sA���  �ie!9  �vl!�  � ia"� ��������# �X1 #	#	 lki! f-  �si!B?  *tc!��  N ) n zed"Cm �� ��L'   tlb!E
 ��  ti� � ��	 �� 'iA���	p	�~�;
7��   "9cu�����ytsrnlkhgca	 �" � sJtgB% ��sl!� '�n!A�%  	sl!s � tr!q'  igeP+   �gda!� ����� 7 nA3  ie %�n!A�  9� \ ' � 	 �ysnd"D %��!A�����X
 ����,  mi!������� ��Q ie ���  3�s� � � w   , 8 0>f  �lkiedba"Hp � (iA�O���   [  � � � ztrnlg" � %bA�R � mc!%   rd �'  K sie!C� / sA� gc% �  re!�� y     �	1 uoia" ,�e!A� f9  �si!B� + sA�����P 0 ol!�/   1yi!� �) ea!B�� �w
 ��0��{D� T -       	 ! �7 C +yzyxutroida"
 e3rie!B��B  ,ni!� � �n9  " sia!C��( �Kle!� �o  rnB� �� I sA�r T ie!��"U   "wuka) �Its!�7*    {I ^ uoiea"� �������������������������������������������������������������² �� ��� �� 濂�	   ��s!C �c  ��sie!C&   td�� ����ұ���ʱ�����/  L�b!� � L' ua!B� ��� �ӟ��s �yn}X  'uka �� �� %�l!A�oJ% 	 ulda � 'sA��,  <da!_ �  �  yiB� � ����� ��ӧ�  �uN'�m�x)� V 1 	 %;Z�����zytsrnligfdL� �� ����˼��� À� ����+  mk����x? ytr' 0���
 �% � �a!��Ǳ�  �1�0�0�'�'�"7�1�
�   oO a�1�
#��yutroliea"K �N  sdB� { ie!ξ ���� ������� '��!A`  rd  �?  � sie"C�' #-lic� ��% ~ ga!�O ��  �O(�
 �
�da"CW   iyi!��%  cb! / dA��� �)
taB� �� 'iA �lA  ��sfe!C� �d=`        trged" ] sA� ���Ō se9 �/ e  ie!ƈ=����	�-  %^����utsrpnmlc	 7n!A` ��% ��li!����� �����;  
ia!�� ��Ň �[6� '   ,vsrnl8 �Nie!����O �  �y   sdB   ie"W ����  ngc� �������' � ta!��u    ^ D rpnl" � � �ȗd   R�soie!D�� caF � %iA��+ z  ie!ƑA � �soi! ���� ��mD�$  &2Vuroiea7 �����1  ml!&  ul!�<	 ��� ���� ҭ-vtrC qYe!A��'  �`sri! �V/��uie!C %kl!A� rn� � va!� � wL&  �s!B��g ec% E�ie! N'�sl!B�q'   �snc!���  %>foiea� �  Q+u   �sb"C�  � ie"� ��% ��vo!��¾ ���'  ec!�& |�oi!�����N ��7 ��on!��-   � <soie!�*O   ?  gca"a 4ea Y%  �sa!B���)    uldX/ &�;iea!�� � sA ���% ������� N) spB�� n,  Wsi!B��' d�ie! ștO   )�tsmi!D� K�l!A�� �n  �on!/  ie��  � tc"�0  � tn"�M��   2:Xeuoiea +��!A@  Vyi!� ��    ~ trn" %n!A� ��L ie� �9  rdB7  *ea!� '�t!A�� f3�  ld!B� 4 ie! {�i!A� xt/ \[ca!0�   /iea �-  �s'!B���5 �  ie!��<�   �  usn"� ��¬ �' sh� ���N oe 3�a!A����' ��c �  iea!��<��(  ?j���uroliea#��_�    ����pmifeb"� ���� �� N sA��? Y  rpn!-   �tc!����'   )uea ; sA����� * sA�����%   �tc!�¡ ��ȋ  tb! + dA� ea��J !gd N'  �si!B���\ �L ��ie!ƈ[�Q   Rurlie� �� �� f sA�� �^'   4sie!C��= ea3 ��� ]7�Sie!B��C   [tc!ˁ  se�� sd� ���� ��V ��' G0on!L  oi!��% uap $ra �+  �sr!Bݶ u` pie!�5�l   KQzutoieV � = sAC  rd  #� )   � sie"C�7 #ig > sA�� � xn! <l!A���    �oie"�˝ � ���6 �  oia!���  4Eriea� ����' N%ea!V � ts!N rn�  ~�
�,���%  % � >di��vtsngfdc"H < sA��R ��e rk-   �yi! wP)F�xnli!C�� ��ɩ sc '�i!A��� 
uew;  ;  rpe!! � �� �% db· �� 'pA� ��I  . sre!C�Y �Cie!�' ��sa!�CP   2rpnc f7j�ea!B��  %0�-�-�+F+�*(�	�@���  b f � � � �Zkx}vusrponmlihed"M N'  Iui!B )�e!A� S.r-ie!Bρ3   ;wsf! ǀ  sdBd; ���von!�)  ~  oie"�� ��' �  oa!��a �h ie% tp� ��ȗ �] nc: ��������^7q�    H B l yuoiea" 5bu!A� �� 5|l!A���T ri� ���� �� �\5 shfC� meA�� %tA 't!A�`   .Etsrl3 ���� �ȟ��������І
 ��' ��  �Z�Z�W�W�RR[!���g��   # � .9����	�yusrpoliheda"M  �5   8rl! �������� %��!A����� 'nA�� ��`5 dd  �gda!D� ��� � sA���U �� ���  ��y�o	   sfcb"D�: �% � yk!K � �a!% �  �n!��w �m��)  9re! rI|  �s!B  �	fr	��}!� E   D p v � � �� yvtnmlkihe"J �%   'yi! )lA� �� f= �li!B$�    nldS ��ie! )gA�1  ut M sA���R  �	sd! 9 dAj + ie!���� ��7      �roie"� ��-  h�c!�( �?le!%  �pm! -�e!A���  ����� V)  sdB � ie!5 nc~R  �$ iea!� �%  ea!� V'  se!B� % dA��' �  ie!���� ��}N'    �A�ysiea!E��L vb�} 08iea % rA� 'tA�2    [oea!� �����M(   � yie!b   �yi!�  tc�  t5q   U sie"C��z �- �Uli! 'bA G sA���   �� � 1    ��
 smiea"E��! ���  =Arlie ������' ! vn! '�i!AL si j9  sdB� � ie!��� ��q  �Qsie!C�+   sd�9  
rgO �/ �� ����% riiD�  ;tpic T sA�� �\5  H�sie!C�C �G ��' mi� rc ����ȼ�   	2rea  L� }  �s"B>  rd  3 X� mie"C���; �" �  �9 	oieCv �z �������a ���- �k���| ���ȍ ti��)  �l!9 7ie��  m>[���
?
u	+�[�ym�A  E � � 2T�� N]�����vtsrpnmlgfedcba"P% ��te!��� �O rn ��t lg - sA� �f�li!B�  tc���d ��ʫ  ie�D �	 �+  �'  0me!'  mk �� )�l!A���. ym�� 弁R-  H  Msolie!E���� ����'    db!v �� '}e!A���� X1  �se!B�N  % vun!~ �1 b K on! Z3 �ie!B��d/+   Buroi�
 �z ���'  Ngd!�F ��l �L ol�  �5  >nl! t dA/ � � on!� ie����o ri�_�zd   3D UY�tpokeca� �� X'  $si!Bc �Ğy���~�sE <�   �    � (?CG;!wzyvusrnlkgfea":  � /aA�������������  c4� R -   X!� m! �!siea.'"F���ГJ%  }  Outsk!� ��P  ��U ��  aA`  �  �e"o! ��c ��������e �!e	ie!� � tl!� L'  5!se!B��� ) sA���{ �� tsl�: � )d!A�ǟ��	i	Jh+������\     7   L W �!\ h u   z � �zwutsronmlgedc"" �' " wi! ] nA� o" ie!�:T     8  yoia"z ���� 'dA�1 �"  mb!X �"�"on!%  ie����Ϧ" ��: ��~ ��% >  ul!V  pmJ% umaM ���! ��ӟ�% 	�k�^! Ā����q'  
 �"gda!i�� � j   /[r |yrpmec P+  psa!B�u  oi�ŋ ���ۚ sn! �Џ �����% md�s ������������T �m' +nk% �#�yd!���# �����Ƽ����! �u �) yl��! �R% � �mec!˼������J +8�zrn� R��J �������C�AA>�=�<�2k2s%�
u
P
   
 � � �"b�\$��N#'+��yusroniedba"+ �#  sr!�{  yi� �# nl!K $  sr!� �$ le!��     yie� #sr ������ � &sA�
 �ȟ�K �k°! ����� -�"i!A�V  ie! L' ?"si!B뼗'  &@rnmcb� ��b7  �#=ytnl!5 %�$on!���ʲ�%     D%%   uigea" `1�j%nl!B�� [iA�� .%l!A+  �%tc!����Q �ǅ�   oieۃ �� %nAS ) ro!� �Ƣ � ���B  �mg!' �%  ie!���� '8#z!A%  ieN nm lE� &�'!B¯\� J %     2 �%B G siedba"�$ �0% ��� ''&y!A��V ;& ta!�V' c   upba! g8  sdB��ڇ$ ����� ���V  rn!-  �$ud!' oa�% �� �{V1�! �%uple!D%   �$yi!' ��&jg!J rmt& �� j%  m&si!B� �' seB���" �% D&�%ma!�� V sA� �& ie!���! �j &
X!tr!' ��1s    '  rlie" �F  �%sa!B��������  ��{�����7� m   = �#O [ _ w | � � � vtsojhgfedca"L& ��)  ='ia!�3' � | sA��W 	rl[' �ň ��{# �+ oe +�'l!A���G  �'tc!�� ���P y'�ie!���5 ia� 8   2Ctspc oJ%  K%�'nld!CȻ# � -tA��R  e%  ysnk!� ����� ie% nz�k!��� '   7 tmkcc( ��c ��� Ƈ/�!   usd!C �TtiB  d� o �'w#j#tob"C  �yA�  rnL @(�%ie!���  oe�  �v" � ` sA��� 	pi; mc'   �'se!�<( � i)  ~'sa!B�� 9iA�~W ple�" �����V  �$<(  uihe"G �Q �(�(on!�X  �( iea!�� ' dA����4  rc" ��� �3  �($sie!C�� %f(e!A��g	 �� )rA� u: `%ea!B�, �"�)ie!� ; dA���� V/  �si!Bs tiT�   )rnc1 K)u)ea!� +k)i!A˗# ���R ni>) ��J% �)   iea!'  Q)ri!�w oia7 �)�)vo! j3 *ie!B��¶yC�f    �% W b � roliea" )�)i!A' #�)ob!�P sd �� rn '*i!A� %cA�@  reD$ ��  �D��^��9   E .4f�utpiheca"H� ���)  2*ie!��  ,1�0�"����f�B	�O|>A  �* l�1Ae�2'�R��yxvtsrqnmligfda"P� � P) dbB+ ��X  ya��� /�)o!Au   tie�' �  sA��  �� � � C    	 �*R*usoie"E�'   se1   +si!_ r+ sl!- �+
+ea!��y# ��R oi( � 'cA 7 kA)$ � '.A���- "+  sr! UeA� th- :+�lc! %�i!A��S��vJ�N�+��  �$ 
 *% 9 ? I b v ~ � zvutsrnmlkic" O*  �#sl!B � sA��Ӽ 
tr* ��+  sbt c' ld!����  �(�+  wtlea"1
 ��7 l'�+uh! � sA�   )�+ tle" ?�,l!A% �%  ie!�h nl К?  \,sia!C %(,s!A <�+e!A�g �, ts!�g$   U)  ) igeda"] ���%  tsf!ML   l,   sme"  � T r#�,�'tie"C��d��BN     -1 5 � � � xvtrnlge"i( �5 N-�,li!���+ �*�pg! %-i!A�'   |,rd!�J  woaH� _   �,  ( 5 uoiea" d;P-�,ie!B�� sH  ]-si!B��f'  �-  lkd! S%I*/-tl!B'   tdB- ��# ��uN 
oie V)V-  ts!B��# �� �1 usaC T/  -se!B���,V '     , �H,wmgec"O   B-rn!�* ��I���     " q | � wusrolc"�- �� ��� HwA�j,   k*mgc! R-�.  ld!B U�.l!Ao  � tc!��ӭ� C   .+    sqed" 5�*e!A��m �$ �zng!��  �  L uoea"T � A yAU lf� ������ �
/i!A�  i]  saB��� wtA' �.Yia!D%   (dc.2* ������zU�   �%=/ 	 G tsrnl"L% q-���tl!���Ǳ�&�!�!��g{z    �,� �#R�usroliea"	- ��θ �ףR%   �/q/utmi!w+ ���% �- rc!% �*  sk!�J me2   sdb Eoe�  Vtl!=  �% ia"�Y �� %lA�����b  (  tie"-0 ����X' � -lgd!% �  yr! %f&i!A����� ������s'  	  0tsie!�u+ ����������� \%�& tl!B�§�gB   J-   �mie"�+ �' �& me!�  � ] 0   tsi"C� �������+ ��J%    �.rnm!�& ��% n yr!q ie���o7I�� '    - 6 X � � �0�ztronlc" ��%  pl�V �����0 �� %lA������o% �  sie!i' �� =mA  �   snBI  1 ie"nq '     $ K �.vtrdb" J%  :0sa!Bo+ �v sb%  ob�) �� 1[,�!A�Ϡ  gd  ��k8� �    �1v1�1o0toniea"F %S)f!A�K x. pc!' g1  sr! CeA�) ���� %�Aլ  �1 gea!g/ �\ z$71pn! {V/�.  �1tsi!C� wu% �   "&Roiea p5  sdB������ .2i!A�� %}.r!A�e� �     	yrmea# �t0 ����) �����˼����������� )�0b!A� �����J% &   zkd!� �����% &�*sn!�П�' �n���{- !8?�med=& ��� '�0i!A���'  rn% 9)  nk!¤/ mig���%   1nc!�Ǽ���@ �+ ���L'   `)�ld!�r�'   *[�ztsrnF1 ����˼����+ ���м���� ������' ) ie!�� )�l!A���� 7lA���qJ%  )4�vnlc/  Q��oH�9��B	�    26l�8��zuronliea"
�3 ��- ����% �i L'#2!.lk!B"4 � %wA '1k!A��L �1 �a!z.  kfe�0 � k:  sdB� �3 ie!  g@e   yslC '4n!A �/ siB�  gd x;  �3se!Bˡ  yeɓ/ � �7 �we!B % iA���H. ���4 ��?�   mied�+ ���qL%  �4  F%�tea!% N0ea!� �������/ �����˱� oJ% � �tl!C��� ���B� Z 3    ' 1 �1I ~ � � � � �2Ayvtsrpnmlkfcb"E5 �' h0]4ie! �AleB ) yA�8  &5ti!}) � 0bA1  td%   �-yi!�k�   .vrld% �3  ie!���� M' �+li!B�� d?  y5si!B�  pd' j�5�c! %�%s!A )�5i!A���% �'  i&ia!�. ��������2 ����t&�~O�P      ( / *,9 !5L g ytsrpnmleda"' �3  tn!�}T 6   ied!> ���� �Ku6�5le!B� )�5e!A-  3td!- �3�1id!��D& ���» �����% 	tmT td � ts! `7'6  ts!B 9�2b!A��A��f��    
  o/K \ h o �tsrnged"^3 ��> ���4 �� �� ��������'7 ���% ul��yDxB� � � X /         �6$ )796�*)7* �wutsrponml" - 5A��  �~ tm= �P ;7 ba!�' ���%   <7si!��� m(   zrnm!�2 ��׎ ����y4 �/ �N' 	zsk���������    # T g � �t�yutoieba"	 �G  �/sl!Bp7 ���&   rd'  �7ec!�  yi�% -8 o1tfc!��  ,[ +1nmaC_8 �  b/ ieB( ���
# ������� 'hAN 8 ie!���� �� �����/ ym�'  �1tm!/   _8ie! %}i!A�ȟ���� -tA% }8�id!�T  ie' H ��i! ��+-6  ynl!C� %�n!A %iA�� �)L6 yl!B�����.7 ���(  �0un!�����       I61 ^ lkihge"3 >4M9ie!� GE9l!A����t S# rd!� *`8e!A��8 �O tc 3 sA����  � e !9~8 iea"C��� ]mA��    �7 yie" O�9l!A�  �9tc!���}$ �_  sr�# � �^9  /9  smd!C��3o   ?9  uoe"�hv   'I�rola$� Z    � �6� pmka"Y���O1 ���' ncp3 ��N �7 rd! F sA� �9 ie!��Y+ ��% �9 mg! U sA� �9 ie!�P2 ��+ :9ia!����   mda��P�   3BTroli -�:l!A�� KeA��� +�:e!A�'   �9xpe!�x G:l:)1oie!��R  �����  	vc�4 ���V  (uieb& �% �' xv% J4�:tc!���D ;�:vo!��i ': ea!��S   �9ea!�������Ə ����� eaQ�   ":rol�: � , ;i!A�' 	sn�(6 ��1  �:ie!�� I�;l!A����S# ��  � 8 nA�� ˙b9 �;Y8  �lda!D�� % nA��  �\ 	�lB�% �""2rc!�4 �+  �;gd!&   �;ea!�� j.�:�;ea!B�a ���' �; ia!.  .:tc!� nl; ��4 �~ ����  	riea� ����  \@��/ T`nxutpieaF{ <  ie!�� e< ia!ǳ5 ����� N)  ^4sa!B�� 1iAW*  �<�;tsd! f=  �8si!B�� g>O<�;ie!B�� \ sA��< �� ea�+ ��� Y+  �<sl!Bϙ ?< ea!'   �;sa!�e4 �L oe�r! �-  �;ia!�Ja�   '=CWdvpnmfea�   ���rnlg�5 ��� N)  sdB� �< ie!�����  rie' �0j<ui!�, /=  ie!Q ~< ts!�< � qL'  �< smi!C��'   P6srn! b1  sdB� W= ie!�ύN   Loea��[�
v
I
$
�	R	����L    e o +4B:  8<GXm��-�vtsponkjihgfedca" 3 cA ����� ��G �=�=on!~  K=ie!����7 �Ӷ1 �������3 ��sL  �9-< yrmd!� M ie!�*� N )    * �>/ 8�;F   tsponmie"�0 �����-  rmN�   K9   �ye" �h?<r:sld!C�!< �����&" ŀ��� ~5�<  �l!B 'rA�� �< �l!���'   �>id!�� %nA %iA��oJS %    : �ynlk� � R&?d!A�C�   G5 	 tie"���" Ā� Z%�<;nd!B %iAe7 �'  u5id!�%  ie�% )rmd�  �R - �5   tle"C��. �?  vm!�����4�2b1U/+/y.�,)�(�((�y�t�M %     ^ } � � � ��q5��p*GM�=���ðzytsrponmlkhgfdca"�5 �}? ���� )sdB�-  <@vr!! �� �N@ �- ?@ ea!��%� � T /      yuiheb�= � %dA�r(�   =  == usoea"1 �8@ea!�@ ��0 �& �:\@ma!% rk�����< ��Ƙ' M1  ��mdb!�= ��" ��ɏ= ���������' �  �k!��. �a� ���?  ��d! �%nlB������' @�t� ����m= ���' +A  nl!��% �l?= ���N? ���������'  	"nb!�< ������I��gA
�� � f    
   & @ G � � � � �8�yvtsrplfdb" �U  BAsi!Bɺ= � h5  ieB�� '�4n!A�  9� V /  	  snml"D� R% )0da!B% [�Ami!88 �=8 � �wA wsbC\���     dA Z yspne"� ��A �%= ����� %,:n!A� sN'	sliC�+ �; ��� T%=BV8ld!B�} +@ ie!�@ �T/ WB    lie!  �6-   r: ysnl"Dȟ�  %��� 5 DJNn�tnmlEbB �
< ��  ���      TBsnli"D�ġ4 ��63 �����&1 �3> �% �@  zn!����L �@ yn!�@ �����Әs �B 
 utm!�� Ϫ�^2 �43 7 C�ysld!E' Ruf�2 ���X 3     h .<�nmd"A< Ā����' �@o=�m!��% la) hC  yk!Ŵ> ��� %�An!A���������% ����ӟ����7      �:�utma!s Arl�: ���8 ���% 8 ma? �����˱�����������% �= md!�%  (zsl��V/�gNF"	�   ; @ � 'FJ�S��uonliea"	 { sA���Ӱ  ge�4 �� P rA��  � C �C  nCsrn"C�� �� �L rn� ��  �A�@�{ T %    �C+ 3 8 YD�yutsrpnmf"I 'De!A %De!A  
q KD�Cie"B�b ZD�6ie!���� � m    !D  D  ! vsrnkfd" 4 ��� �]4   Dsia!C�4 ��{A �% gc K�Ao!A� ;�?�!A� ��`�;O�x      & �D; vtsngfa"P   fCyi!��ǲD ���� )wA��aD ���]  yiV, � �mwlB� X}De!A�� ~5  Esa!B L'  Ese!BU.�   F�D  utke" 1UEi!A� ieAR  tps �E	le!� ) dA�
K:���?� 7      ) U ^ z �EE� �"vtsnmkgfeba" YEe!A�  nd 3�Ai!A7 �E)Eie!X tl�/ �E<Eie! +�Da!A�  � ;  	sigC _�Ee!A  � �@ �g"B+$ � �l3   FwEusie!D3 �^7   spkp3    tse 3%Fe!A�@���    �F  < Q s � wtsongca"d1 5�D  nca!�< ����U0���I�v Q %    GF    � �T      �yuoliea743" � sA����E' ����5 ��{V  �< nia!*   �Fsi!	 ��������& NG�Fli!�' wG  rd! |/eaB�� �� ea �d7 �B- tlf!C� Gnl 0 sA���  �  sfB�  YG ie"�/ �� T%�G%Grm!B{ uG ie!�6  �ɍ ����&P� �     '  ]D  yutnia" y%@�'tk!BQ �D@ts!� �.   �Fsa!������u: ���U thc/ mE�-ui!�� _>Hb!A&���e@�~q�z?    ^> 8 B   M � � �)� EH&yxvtsrpnlkjigdc")    @sf!��  �==   tsiC E sA��� �q3  smdC!  vH ie"���  $snr �������C �� h7  �Hsi!B�e9 � ? sA��7   �.yi!�h ob %Ii!A�+H �'  �Hon!H ��L oia� 7 dA` �H ie!#) �����_  hge /lE�!A�% }G  �a!�����˱���������@I ���ȟ�L 
�k�~F ��� �5 scB� RI ie!� }aA�V !Msla�9 � >dA�, ���95 ���� �~G usoC�� L sA����   	$rhaX7 �hA ���a<�	n]t�]��O   �F  F � � � &�yvtsrnmkedca" ^ sA��� FvA�����: "JJon!-  ie��W  �Irh!�1 ��%  hGso!�'  �Jle! -�Af!A1 �GBIua!� Z sA���d 	uid|J �����&J ����H ���� Y0|J�Iie!B d sA���&   �Jsi!��������M YJ sn!  b�Y� � { L % �J  & 1 8 A> yutsmlic"HO: �ȶjC�m��  bF�  w M:� � � yxtsnmlgc"	K �|F � ^-  qJse!B \lA' G/yi!� ��n�   uie�8 ���/   j8yt!�2 �� �u*  XK�Jsie!C���N �j� V   tige7K ��  �'  �Jea!�D �'  gHih! a+  sdB� �K ie!�N ����� /    �2 " 0 4 k q � � vutrpnmdcb"
MB �½. ��' �m���H ������7 �H  ie!x la %pA���   >Bti!�, ��X  �Iie!�2   �ua!�   �E  ula"��� [    , 6 Y +Itslhc"$L ����������������������3 �������������% tm�- ���Ƽ�  @11�0�0�,�%�r� K 
 e=: � ��c��yvuoiea"I�L � �9  sdB  �L ie"7 |JIM�t! )SMl!A�P  ea� 1uA&M � /iA
b � %     " , LA vtsmig" a1�M7Jle!B�O   �Eyi!�����) 2MoMie!  �� �   aM�Lsie"C�� ��, �; ra!�E �����bN ��&   20��M �M nd! �C siB���  ' !wfB�E ��� -tA�> �ǃ; �' pg �{ )se!B  �o
01���g� G �M  + �J\ d s � � � xwvtigfedca"K�N �ȁF ��%  4	�g!�N � ~) s.B� ��]- ������t? ������� �Z3 pfeC M�Nl!A���kM � )zMa!A�% q$�2yi!�P �N  ofc!�'  MN�%�Nihea!��/ X� � �      3 7 �NA ` �5Oe wtsronkied"
� � �3 eb!�  �Mml!  +��T/�-  �K � � � �utoigea"G �C  �Hsi!B��¢7 ��&   3Nea!��%  �Eec!D ���ȴ.  #vslj �% nO  nd!U lO ie! �% srB�% ua�84 ���' �F rn!����6 9+rn!� ��Oe!A� tf�' ��9E ��ş� Q+	�uB *�Mi!A����� �� N)� �l!B6 �@LNld!  jA� � %  hJ e  yrncb"EjP ��%  mL�l! )QBz!AU&  �P  uda!%  nmӟ�O !�k -uA�K ���������L �������� 'uy!A�����L �N �a!/ �N  �a! %nA����) 0N�P�a!�8� { -     ~J~J �M5 ysnmlkd"�' �PDNua!�B � %sMn!AL �- ua! �L'cN 3Jusl!C %BJl!A��WO ��%  Qma!���<X /    ;�yrnm�q]8�   U _ � � usmgda"�/ �  �   �Qs'"B = nA�� Ցd9 �Q�Q  �lda!D�K  �L ia"�J ��B�^ /     - �N;   uledca" C�Qi!A �P  �Psa!B�^  �Qon!�a   pP   oie"R  /tb!�j 3rn�Q �E   [Pyi!�����p �3 sr!� c sA��ȄU��   
$(tspieMN �� �t-M  Q�sa!C����� �Q ea!����R �Q�*tl! 9aA��'  �Jge!/   �0kd! '�Ri!A������V haT{x    <]tigd�a Mt  �ws!�©/ �%  �Dud!�� uh JBKi!A��1  f@9C�Dspca!�' �8�Qrl!m ������ � ;>Re!A�Œ.    �Cyoa!S �'  �Kui!e� � \   &*3tlhea���  ���,  seˈS �  ?!� 1 ���% i����    h �   � ��e{���ywvutsrpnlkfdcb"O�R �� �=�L ea!B� �H  �s.!B� {RkKXKlf!BA  nd8Q ��WS ����sS � -iA���� �V  se�, !mlgdM ��@ �% 8TMtn!�� EOTl!A��ϕ ui T-	TfSie!B���~K   -tca  �V=   ysiC> ����b    T X �tlea"' F>VTon! �I T6ie!B '�Ia!A� ts N'yT�Sie!B�% )R  �a!˱�������%  �(oi! _ sA����� �    
 fT�T' trihc"%  WL�a!����L  oa! �yR+   �T  slie!D�F�	�}Xw�+    5<, y � �HBUa\Uyutsrligca"
8R ����� ' iA% �R�Rsn!���� c7P�!A���L U0Rni!� yC�UmUli!B��  � � cU�TqPiea"C��� oe�6 ��Q �' �U ts!�� � �=�T�ea!B��M ��5v   poi  �~U� 7  $ �3 7 a smihfc"F�S ������ L %     � � � v� �ronked")& ����?< �����b)  �B  jQ R=yrpoia!�; ��-  �Utk!�? �ʘU ����%6 �]�   poecs � |T-  smdC�- jV�Uie! ) snBT ������ �       �V ytnic".   sg  	ua�O ��� Z3  �Vse!B��) 3FWtc!UT �������N yi3   rl 5�Gu!At%   PKVsie!��6 �L �< vo!��Q   ye�  �Vli!��sL'   �M~V  spea!�   'tsi� ������ POf!A��X��A�t� ]   
Wfmu��wtsrpolid	 �   yW}QrViea"���%2 �ЂQ  �S  igc"
 �Ț- �� qL'	W�D�rea!C�� J%  �Wsa!B%  Xtc!� E* rn!� ���  �N use!-T � f+  �Qsi!B�� 7YXl!A���� ie  �le@� V '    $ �#V g l vtspfdc"GG   xPyi!�p �P ia!? �8HWla!���% pX�Xze!J  yi��ǲ(�   �G  # vonm"  h sA��z   |la"W ��`   sd  c.s �X�X oie"Cƚ'    X sed"� �Z1   srdC5 3Y  ie!W  �Xvo!  ��  siB&�    �X! tie"��%   ?si!�������� �+  �Ys'!B�}?   -Y 1Xiea"  �,  smB� '�Ri!A��+  
ea�~O ���� +pA �gbT �s!B����X �� L'  Bs.!B��q Y oi!)   Xyi! s1 �Ytl!B��U �� oe -�Yi!A�ʺX �B �0 tco oe N)  snB �h=  �Y  srd!C  �Y ie".  �Y nd"� (ieD   �Xyi!������
���	?	q;    xYC d hZ� � � � � Lxvutpnmljgfdcb"����  �F �*�uoiea" 2 sA�'   srd �)�Z ie!B�6  sc��41 �EI ���� +.A�������A �� ��i pc S�Zt!A��_   �W  , 0 tsrplb"�<�!$�����   w |E�X����urolkihea"	_S �����G [ ld!= ��� 5sA�  �Yyi! Y sA���� B sA­%  usr�B � ќ' �[I[sle!C�   �[ tc"��   !VieaX/  \  upa! ����ڗX � (	\l!A�ľ3 � }'kdB3W ��    �X  ihe"�} L %      � X, 0 wtrnidb"k\ � L%\p\ie!By tC th!M g\\li!ڃN �  ��U� S     )\  ysiea"E %�Ta!A����Z �\�\ zts!  �= �\ li"B r1  p[sa!B˳Y �ȟ so����  <\  @ l tsldc"y< �0  �Coa! ��[  ]  srd!C� �\ ie!�& �I ]tc!  ni)] �V �� �z0�\B\ iea!C��M �� pm�S ���xBW   �Y  y8vnmg"�\ �ӛ ��wP��  JNuroie%   V]si!���� C sAt S] ie!�; �Ν  xnc �. uiBFZ ����� �8}]�\ie!B�����> � À'  �\ sre!C�/K �% �]  ie!�����     v"Q; $ urliea" ���Q ��& ����] ��ϵ]% uria;D ����] ��% vs�^ ��S? ��=  ]sa!�f j^ vo!N  �]ie!� �] yt!G ���j8 ���� ʓl=  sidcD  W^ ie"Ƥ �p?  �<  vna"% �^}]ea!e# ��{/�   Myuiea 4�^i!A��w[ �k  _md! sG  sdB� �^ ie!C  _vt![   ,oearJ ��5 ��N da`: ��� 9N_l!A� 'eA��) _  ie!�. )__on!%  ie �q tsB�&  �_ ec"��   R5 ) yia" L%  �^se!B��F ����q sr yL'  e_z_sia!C�����^ ��Ҡ oe���   "=�role1   rd  �� 3   �_ sie"C��  iU   Y	  smd"C�  �_ ie"�   !ie�|N �&\ ��V' �  tra!, �$�&sl!B �`vu! � sA��ǯ 
ul N)  `si!Bj   �^yi!��Ͻ �` li!�_  �ie!� #sd���7 ���# ���L ui -rA �I  l`si!B�����   '^y�utpoie�^ ��7 �'  %Uoi! k5  �`si!B�Ǌ' urhJ   ats!8  �_ra!.` �1 �` se!� ie_ �' RW  te!��- ro�)�(�(�'� ��R52���;�a�    DHC n !i"d��2���Sawvutsqponmljigfedcba"�^ ���{a � �M  ysB�t� N '     �  J^�_spgdca"R ��'  �Hue! ?�ai!A�7   tm�_ � '&l!A�1   ge�V 
ie�X  d tng!�[� �   !b , 4 < wuolb"�T �6. �  �a� U @  �a tsna"D '_h!A�9  $tnl�] ��  �6b3Z0=..�-}V'   ; � � �_� 59�uoihfeda"I% XSB_�a!` ���5 �b ea! qL%�b  �btrl!C�/   �Xpd!�) \b  nd! %�Py!A��L SS pi!	c �'  ia�^ �� `7  sdB� �b ie! `7�!�b�i!B�S �������Ч�� Ā˱����������� )ecl!A�S �����vO  �X	 nlk! 5aA�2 ����� %    �_ + yrmd"C  \H �a"ϟ���Cd�T+�i� s '    b o z � � � A]� � � � � �=��yvtnmkihfdba"/ ���? �c�cli!� f=  sdB��   �c 
 iea"1S    &nlf* �+ Id ea!�; ��2   eaT 	md�% �
Ldtc!�§R ��, �\a �ɢ; 
iea�n�m   D % ; J roihea"9 ��� 5�de!A��q 
rm�\ ��� �\/  �^ sa.!C�� H sA���bd ��3�     �R utro"  :� v E     �d�d�dsnmki"E� �%  pdrm!Q] ��6 ����% ri {)�d/doe!B�� GR nc!�  fe�? �� �G  �dsi!B�d ���X' �d   oie! /"`e!A  !sDp   R# tsid"D* Ke4eon!/  ie��ǀ e ea!% >�etc!� �L sn�� 0�el!A��T-  �e�]oea!q% ������  3I  sfB  u� + �`   trd"C  	g   sdB��  M7 ieB �'CviB*X ���� yA�e  ts!BnZ �5 |_  rn!�B �% `\ zd!¬�'  	a  mied!Q��T
�	:	�rb�e��    0 ; B � � � <O]  z�vtsrqpnmlkgedca"/   Zfsi! �U  sdB2�   mf 
 ied"%  �frm!- �&ld!�_ � {T/�fqf lec!C�W ������������������= �` nb!�� ��V1    �fISsnic!D�x '     5 WEgwurpe"�< ���g �� 'dA��x��~       v � yuroiea"�S �� 7jA�M, ���� EiA@  gnh!% �d�]sd!�%  �Cme!�o �g oi!s ��� �Y2g  sr!B% �f�gec! /�gi!AL yi%  �gfc!��    $yieϵ ������;  �Zta!�  Rupi E�`t!A� �lA�s-   �Z�g /hkigc" V1�b  �s!B�` �� �����  � Y 	uieCo[ ���%  rh�t!����G   ieq
�	BJky� m    	  D h � � jfzytnmlgdc"	 _0  �gse!B��-  iie!'   �hpc! �X)  ue�hfhsmle!D�|'   Nboia! v�he!A� 17e!A�� 	rli �.  oa�h �����' Waki!  �4w"A�Sg ��� Q sA���� d=  sdB� i ie!��     ohvui"{i �� C�i'!A��=i �ϴg ��  �hih!�8 ���N� /       {5! wtpodb"� )�gs!A� '�Zd!A� s%.e nc!B �EurB�I ���� Y+  �isi!B )LDu!A �T'�b �bynl!C�; "utaZc � P sA���'    )irpn!�\�
�
D	\�N      �iN r � � � � usronmlkfc"
+   [jmc!�\ �% �SZbtl! �5 saB%   sd� 	ec5  �$ yi"�+  �jDifea! <iAC1 � Ocji!A�  td(�V   Wneca Y2;j  ts!B��- 6c�ctr!>�DP   �   � rolea")   rl| �j{aie!�[ ������M � +iA�� �; saB�D] �  	� � S    �jGjusie"D��^ ���� X+ �:�d!Bθj ���  � � v G    �b�b  smlfd"Em  Ya ie"o]���� Y   ^A 0 C ` >jv ~ �htiTkytsrnlkgfcb" X sA�� �ku  vrp! J%  �[yi!B�2j ���    �j mlc" �5  sdBE �k(lne!�Vm       �eyiea"�U  �U*lrpn!�b �������L   sjyi!��) ti 4 sA�{l ��ק�] �Z�l  tsna!\% )l�jvnk! R%�llle!B�(  �lnk! f5  sdB������p�   %3Ruoiea- cB�jyi!] �� { V   �j  �j�Lpmdcb"p��
z	�  �l * � � yuroiea"F ����'   Ckyi!�����ǎ# �N oif � +Pmr!A���ǫl �'  tq�i �����O ���R ytec%   ye�  1� � L %  
 ; �1? [ tsmjdc"F �E�d�mfe!B�c  �]se!��9k ���m �����1  Bmie!� 3�le!A����C   �lea!�1   �Syi!����l �� %cA� T-  �lse!B� K dA�{ sr� �;peB X ���\7 �d |+�  rpgfe!�a ���%  �2tp! /�h�!A	����� �{  2cp{����tsrpmigfdcbA ��%  tm%  Gia!.   \dsi!��P6 �U pb*o �'  %gtc!% ��  ��� ]i  ?�sa"C��  �' taB؊ '5snm�l ��qJ% R<�U �>yrnd!�F ��� �eϻ  zy0J ��Ǽ���% �j�lie!f? �� �{' �N �kc!C% ed�� 2��]m �������� R%hm sd!By sm ra!N'    �irkc!��  �k�i$d�c2Z�G/G�F�FWA`393�1�/1/N$���'  1 � � ll�m"ntOW}�����
���ywutsrqponmlkiheca"TNo ������ 7�Ml!A�o � �E  snB�m ��ȧ� '�A)  �opn!� �����˱�.��     $ �k�ied" }P)  �oDosie!C9  �oke! % eA-   zn���� L% nmB������)  �k����0 Ā������ '�ny!A�Sm �5 �l  nm!������% �k����� ����M (�tm��k<� �    RR\j=   H �ytmkd"����U0 ����>j � �N'�g  zga!Cog ��j ��k���.Q� � � %     
 $ � � � �o"�srnmlkicba" � sA`   �mmc" ^9^q]qli!B���e ��� qc|   �oyi!���D  oi �nA� %vNl!A�� )rA '�ml!A��h �L pf� �m le!3W ��'   �iyi!���u) �q  toe! �vI �p�qpea!C'q � b; seB {) Ujda!B % ry!A�ǔn �r ���)  �doa!� �E siB��   �\  rmc"2 �q  rd!  I�t� � �l  �q �p�siea"E��M�lj5��  �q ) X a y � � Ap� xsronmlkfca"Bm ��%   �oye!�E Sm�m�f!�3 �r�rvr!�������h yro � sA �}  �rsi!B�  kg�  �q rn"�r ���j ���� = tA�/[ ���r sgL' urmc   3rea!* �`�`po!�� &�ri!AO wu� oe[   CZsm!R �.   8d��uroiea<Q ��J �Qd �yT �� `1taB  �  srBq �˝  ie���� � >     ts   . 2 �qpomlgec"1 ��1 �sUpge!s8 �M  ed�s �L'    �sged!�s �������������������������  �,ml! 9�ii!A���EY2� b   �svbtm  - �p? K U wutponmlgd"
yt �� )oA�% �s  nl! ��Go  s�sa!C������ ���S ���Sm ��' {[�Rol!�z � �    pmlifa�@S� � -   d2 J T �rvnifdc" N)Ht�tmi!B��t �s   nea!�t �� b1�t	tie!B���.~ M &   Sn%u tb vpgeca" T-  7tye!B�7� j ?   �q s>u  tsnle" �ui!A��4v  /b|yuiea _2  {tse!B��q ���������% �r�l�a!%  yk�% mk�7  ( utrn!0b �1 �i�utc!G-    oie A�ul!A��v �u nc!r  Xie!�!s ��[5 ������ϱ�;�:�9�7�6G.$*8$Z!	��     0 L � �*�_uhf���ywuroihedca"% Hv  yk!�'  �kma!�����u �����{ 	ta�a ����u �������J ���
j ��j ��) oa�L' �A   " wvmdc!� ��v �� � �G  `vdusia!C��Ÿ tc� ��)   #tsl��n ��  oe/Y ����o ����") ������% 
oa�n ������� ��\ ����J %      - �exvtqnf"'t ���k) �5  Gvie!�E ����5. ��'  Kla!�  ��wv �όa �% poL%   ;pspl!�8 #q�3ym!��%  �vts!�o ��!�9~A'��M     @ O V d j � � � � � wurpnlkigfedca"�N �� _6  sdB� �w ie!�����nGN   �U  �t�wK  tspokgd" : sA9  �wlg!3 :x+Ugb!  �j�r  �s"B  uia�   �o  srfd"D ouxl!A��  P	��A  &x
 0 uiea"D@ �' �xWxea!���L%  ica�s � %	vk!A� %tA�U �����v Ā������' �a����o �x  uma!�U ������*7O
s� { L '     A E a � � �  �ps[x�zytsrpnligfa"�Z �% Of uc! P)Fy'lia!B� �I  sdB�"  ui E rA�����? ���% wy  ts!�a �w  oea!  �� ) �y  sid"Cqw ��ȧ�����@^   Hhzrlcr �v �4  pyoi!�' �o�yme!��sL �w   rnb!; xyi!' ppie!%  Twsd!� � 5      �y ^wrnmfc"' yw  yk!� j sA�ĕ�   Lz   uia"C�/�   �#  % ^ tsmie"  �|
~ W hz�. � � ysrnl"E 19zb!Aw � wR-  ��yspe!C�1 \z�zie!��Z �z ul! [6�z}gli!B�����g �%  ryui!�W�� n      4 D �XH sroedca"�t �����' �%  �znm!�P)  �z lic! I xA�n ���~ le^�L5     �z 9 � nuspoiea" ~I  �zsi!B� �lE  {czsie!C�`z ��S  si-  znm!s -{=>ie!7  2utn!B{ � ]'E{ id!B�� � sA���U�� 7      , C �yS }.ytsrnlig"% ?{  sr!�w �� })neB� jx tk!!z � UsA�G ���� Q,  *cse!B�S{ �� %lA���<Z �].  | |�zvrl!����~K��X)�    �{�z % 1 8 B �rnliedba"	/ 
w(Q�e!�- w|�|ba!�� 8   �x jE#{trne"�E �% �| tc!/ �|�|sl!.�T   :oiea %8tn!A�� �iA��F ������������� T' s.B�� Ԫ-  L| snd!C%   �<ed!� ]j�|oi!��UZ\8      @ dz}tsnlfd"�B ��A �  �6�� �     �a?|slife"E�R �C   te�1 � N' �twl!B��k��     x| �tsrlkd"�[ �ω1     ;wurn"% Q},}ie!�� � sAd�   �sc} tie"�#x �x �} tn!��  'oia ���������� ������E 
ca��< �E�m   ! a � H�0wroihea" -�|m!A�n ����� %lA˱���% �w{�d!˱���� %Xu�!A�� %lA������L �a! ���N '       6{�lid"�t ����% �-  �k!�o% �z  rcb!J% Ax{�synl!o �u �a!�G ����˱�����% �{ tl!qJ �. �rk!����*�   +Ctma�. �% } �a!�% W.vtm!q%   ]vtrm!' 6}  �a!˱� �b3 A}  �ca!Cб�����   lt " �da"1 f}  lk!����. ���%  z,la!��  ����� X 3   ! z � 3!o�zrpnkg"G� ��'  �k�N= � V'}�z lie!C
D ��L  ie��z �q rn %eA��� � X      # 7}6 �Jtsrnma" %vk!A %|�!A�� )�pd!A w%ulB�� ���~vrl!������& ŀ���ӟ�A4J    9�ulk' Wx,~ti!)t �L tlp ��q te�- �}�vsd!����V �P sl!�x ��м����}  zrk� .��  �3	�k  Z � �oea"D� �����˱��������{ ���' �~.}nm!�� R- ��d!B��aq �����6� L   	"(ymha�} ��O ��'  pn P)}|$�us!B;  Rrn!  #��) #'oieaD' xXw�k!���N . ua!nw ���'  �{�m!��������|� ����������} %tlbIP ��o% �J �mie!Z� �J% ��  �wlid!�� %
n!A�  � L % �� 	 ^ysnl"D�ǹ� 37vtk�~ ����{ � )mAӟ��s  �kcPy �˼��r �������   	.���oeauy �����Hx ���ϼ���# ���% � mi!��Ǜy �Ǽ���Z � )lA�Z �� li!�N ecJ� � N'm��yk!B� )�vl!A�� ����Ҽ���uN �ge�z �ȟ���Ⱦ ��x ����oJ%   . mied!��ǟ�n��� � p K &    - L X \ z � �� � �ztrnmgfdc"
p������(    �ed!���ez ���M �e�yJ% �J  � � �zsrn!�R%    :   ����"� ����� '�2l!A�������' rmƱ�� ���*P �/  li! �V1 �    lie!C� yk� ���������v ���' �y ti!���������s% �rk -�un!Aw �������ζ��I"�O     NC H m �uoiea"��QZ�Y�P	N	A�@������O7���E�E��g7H3�.��b�r��dle(��S��Z�ZxZ�Y�Y Y2X{VV � � �B����
�F!
(�(00�4�6�<�?~C�CLPbT�X|_�h>svz    ��#�,�H�  ���zyxwvutsrqponmlkjihgfedcba_7543210#%�      �       ����:0            �C+	!;9�� F�� 9�� 78 [\ cd     uv ���� :0           A ^ � &Q����� ����:0            �B |� 9�� ����:0           ez6RU ����:0            Z ����:0            S  ����:0            � 60�� ����:0            ZOS ����:0            w Z\ ����:0            [ 4+�� ����:0            W 
C" b��   ��   ����:0           � � ���L ����:0            � ����:0            Q @B ����:0            �HK ����:0            X[ ����:0            $ 0	"#   ����:0           `��� ����:0            L ����:0            R !6�� ����:0            Z +%�� 8�� ����:0            ^ )��  �� ����:0           [ � � ����:0            � ^c &�� ����:0            �O�� ����:0            w
  ����:0            �
IL !$ ����:0           ��8P�� ����:0            � -F( ,`"�� A�� �� -4   ") 5�� !�� �� &�� ,�� �� ����*:0             * F a p u � � � �]�-K�2

-02Ll�� �� ��� ��� U�� 
 
6: ,0  6��   04 C�� ;? n�� ����.:0           6 [ q � � � � "Zp	\`m�-5 '�� ����:0           2 �*
?�� 	:D cm ����:0            � �ow  ����:0           � � 
5@ )�� ����:0           � � $��   ����:0           � m$	*6 ����:0            �)FL 
  lr ����:0           � &8�� ����:0            8 @$	!^$��  
  
 `j 	<F 
,6 �� �� %  
 
<F q{ #��  
  ����&:0       
      ! " ' + , / : � � �( NW 	(1 ����:0           � �d2F6FC/�� \�� �� 28 .�� 
.4 �� )�� 6�� ���� :0           � � � Z_qrx2JR %�� ����:0            � 29�� ����:0            � !|� ����:0            2>�� ����:0            o# ����:0            &+px ����:0            ]4A ����:0            �1G�� ����:0            ��� ����:0            �1&�� ����:0            } 2 ����:0            � -�� ����:0            p	+3 nv ����:0           r�$1L:9@ 6= #�� OV |� "  ip p�� ���� :0           ] � � � �f��	$�� "  %�� ����:0           @ � j[
�� 	+4 ����:0           O �(5'+ :�� 
	04 ae ����:0           d ^  �� ����:0            �1��  $�� ?�� ����:0           [ d�!&��   FI 
7:  ����:0           � �����!&3�� 8�� ����:0           � 	
  & ����:0            ##0�� *�� ����:0           ��& ����:0            @	)& ' :�� #�� ����:0             � #�KQ ����:0            < 

'#z� $��  A�� ^f ����:0           N[i���� ����:0            U&/ ����:0            U*G.!		$&F�| �� u�� x�� ?�� �� KN EH 
14 /2 x{ ad :=  (�� �� 
58  �� !�� 8�� d�� ����::0             P X Z m � � � &gj�����fgsx$F	JO 3�� s�� CH ����:0           v fx�!�� kq �� ����:0           � � � .[c ����:0            �+$F%9C 0�� 8�� +�� )�� ����:0           � ]px& ����:0            v 4-Fx!c*�� �� CJ P�� 29 /�� r�� !ho  �� .�� 7�� m�� (�� 9�� ����:0           W � � px|�.F!,5 FO  H�� h�� ����:0           X � jx! ����:0            �&@�� gu ����:0           s�"
:H -�� ����:0            �<h�� ����:0            � 
5< ����:0            0 [b ����:0            �26�� ����:0            o
 ����:0            s+80	/8 �� ]�� Z�� ����:0           ^ s � `(_k ����:0            �-2)/ #��  ����:0           6 ��
 `i ����:0           � �!+ ����:0            .&lr .�� !�� "�� ����:0           i et�9��  �� a�� ����:0           ,e�v ����:0            F \c ����:0            t&2 ����:0            $ ����:0            %, ����:0            1)�� ����:0            } ms �� ! ����:0           � � �
(1 ����:0            h #. ����:0            � ,<�� ����:0            �K	g�� DP ����:0           q �$) ����:0            ! wz ����:0            t	&) ����:0            �/"% EH ����:0            � MQ ����:0            � ����:0            wz� )�� ����:0            m $!�� ����:0            $�� ����:0            ,�� ����:0            �)W\ ����:0            1�� ����:0            %�� ����:0            -) �� ����:0           AO /�� ����:0            � 
  w ����:0            � �� ����:0            �C%=�� Y�� �� A�� ����:0           � � C!+&	#- `j ( % 
9C �� ����:0           � `ab*8�� ����:0             "%�� ����:0            �2 ����:0            � KU ����:0            L
(/$�� ��   �� ����:0           ` | WY87/C�� =E $�� '�� ����:0           � � � 4F	N:<$  �� A��  # 4�� 
*0 ag -3 ����":0            W � � � � � h�  ����:0            05 &+ QV ����:0           ��C
8@ ����:0             +2 ����:0            $	RX %   �� ����:0            V \ �
	"
:A "�� (/ ^e �� ����:0           V � �<-5@CF9+
&x!.
!� B�� I�� b��  �� P�� "��  @��   &��   U�� :��   :>  	(,  �� ���  #��  $  �� [_ FJ ��  ����L:0               < A y � � � � +-2]b���
\s|������� ҁց:0            #5!�� ����:0             �a�� ����:0            � %# Ƃʂ:0            e RZ ��:0            �88B Y�� ����:0           ~ � 8�� &+ ��ǃ:0           %3)�� ���:0            J<	&N)		(.�
# Y_ &, !  "�� Z`   u�� �� !        TZ     ]c 	;A 	   dj 
FL _e !'  �� z� ��  �� K�� ��ׄL:0            V \ ] i ~ � � !&7;NX^b�����	y���)]i ����:0            J8#)�� �� ����:0           39 ҇և:0            F 
 ����:0            N1:�� ����:0            } *7 Èǈ:0            EU^ ��:0            �   ����:0           ���C6  >#O#��  y "�� #�� ;�� ,�� $�� R��  NT Ɖ܉$:0       	    h � � �Zz����(�� ؊܊:0            �
 ����:0            38> ����:0            �
 25 ɋ͋:0            ��� ���:0            -4/�� ����:0            W #.7 ��Ō:0            �, �� ��:0           ��F$��  KS MU ����:0           W�kx  ܍��:0            
 >/�� ����:0            �(%)�� �� ����:0           � 8 % ێߎ:0            3)�� ����:0            8@ ����:0            E ̏Џ:0            -&+ ���:0            <'�� ����:0            ;�� ����:0            � �� ��:0            /%1�F!!"3x3 �'�� 
5< �� {� \c   ���  �� ?F ,�� NU Za �� =D (�� U\ 8�� J��       BI & ����>:0            : < L e } � � � � � )f�{|�����	!4CI _e 
 QW TZ pv $�� �� ���� :0           ! � � $��	! ����:0            � 2.�� 2�� P�� NR ����:0           � �*5 ����:0            @ K\�� =I R^ ����:0           q ���� Օٕ:0            � x ����:0            �bi �� JQ ����:0           � � d!�� ܖ��:0             =�� -5 T\ � v~ ;�� EM |� �� ���� :0            4 D � � .Id
 ����:0            	/UX  
	(+ nq 
69 %( WZ NQ ����:0           ���TU��  ����:0            �!x%"��  ��� ��� dg ����:0           �|
! :F
"CI 2�� -��  	6< ����:0           � � hx�	MW ̚К:0            ;
.7 ���:0            
<C 	/6 ����:0             S] .�� ś˛:0           . � F/5@C9(#)'%$Ox
?
	�/�� BM "�� !�� '�� ?�� 9�� ��   "�� �� BM #�� CN Y�� -�� ;�� 
1< *�� U` 	3> oz >I  �� s~ �� :�� &  �� "�� @�� z� ��� ��� 
"- R] ]h *5 !�� 
0; w� \g %0 ����V:0       "           $ ) * / ? A _ ` f g #=t��� cpw|�����
-+!%$GB	JN�� O[ .�� �� %�� ) w�� ��� I�� " ʟޟ":0            ^  p��

5& bq m| l{ �� Xg Ӡߠ:0             8 ��2O�� ����:0            �  2#�� $�� T[ ɡѡ:0           � �� y~   ����:0           ���LB1{� e�� dl =E  !�� )�� ��Т:0           p � � � +���� ����:0            ( ,�� 	(3 	-8 �� +�� 0�� ϣݣ:0           d � bz�Kx�� ��� �� ����:0           q N�� ���:0            > �� ����:0            � 7�� ����:0            $HQ ޥ�:0            F ����:0            / 1��  �� ����:0           25
# af ��:0            0.; ����:0            %#4 ����:0            -F O�� 
BK ٧ߧ:0           � ]	.2 ����:0            � 
09 ����:0            � &>
6B �� �� GS lx 2�� %�� ! �� Ԩ�:0           � � � � Wl�<e�� ɩͩ:0            � �.'��� >��  ��  $ <�� ���:0           � � -��54��  �� TY ǪϪ:0            W�t| # ����:0            !bj ����:0            � ثܫ:0            � )   �� ����:0           56J�� ����:0            't� ߬�:0            %# ����:0            +("	2D%�� @F \b �� bh " ek (�� F�� �� ���� :0           % � � +��m�!�� " 	.5 ����:0           � ��$,�� 5�� ��:0            �)(�� ����:0            #)#& �� -�� ����:0            � 29�� ����:0            � "* ����:0           	 D FO ̰а:0            5  
 ���:0            = ����:0            '# ����:0            &F(W6�� wz �� '�� �� 3��  <? hk hk kn BE  ���(:0           M � � � 	-������3M�� ����:0            {RX " ����:0           �  "& [_ س޳:0            �� ����:0            -$+2 �� BI ����:0           � p�!��   <B ��:0           � ��-7�� D�� ����:0            � " ҵֵ:0            J.0�� ����:0            �$�� ����:0            m # Ŷɶ:0            � 
)RX kq    ���:0           � � #@�.SZ JQ ����:0           ��8@ ��:0            � 5? ����:0            Ait ����:0            �! ոٸ:0            � 5�� ����:0             
�	)  g�� ��	�	 ��
�
 
 NZ ����:0            � 5qz ���:0            ^1U�� ����:0            } L	��� ��º:0            ��� ��:0            �,�� ����:0            �
+' "#�� GP aj �� )2 ����:0            � � �Zb %- ����:0           �& ����:0            � ټݼ:0            �DN ����:0            &EN ����:0            B�� Ƚ̽:0            4
U�� 
=J ���:0           W �! �� ����:0           ��/	, M�� :B t| "* '/  Ѿ�:0             r���� /-@(	C
	,�2; ox �� �� i�� 	5> r{ !�� )�� 
5> '�� 	-6 
3<   \e $�� DM BK   ��ֿ0:0                # % ) 1 9 A � �����R_ '4 jw ����:0           ��/ 
 ����:0            :& #��  
 
 cm 	1; �� �� `j ����:0            �������	��	�
 ����:0            � 9(�7"GU�� /��   P�� � :�� ( ��   #�� ���� :0           _ d k � � [\�(
7N5:#D?�� JS >�� *�� EN X�� "�� �� "�� ����":0           %  � � ^hi�+#�� $�� ����:0           [ ^ &	2	"]   ��       [` X�� 
 TY �� /��   �� ����*:0            ; i � � � � � � f�
[b ����:0            � /&. mu ~� ����:0           ~ v$,
 MR  �� 2�� 8�� '�� ����:0           ^	[p��� ����:0            r	".x| FJ fj hl ?�� HL �� ����:0           � gj��+"�� ����:0            be ����:0            B1
+/ 
 �� 7�� ����:0           ��'2< ����:0            ;�� ����:0            ' �� ����:0            AS ����:0            /�� ����:0            % ����:0            �
FP ����:0            7!s ����:0            # 	NT ����:0           �9!$�� �� ����:0           = L�� ����:0           ��"C9$x,G|$�� #�� L�� *�� 
26 '�� $��  TX  $ "�� 4�� U�� ;�� b��  
04 ����2:0            < A _ u y � ![f|����dl ����:0            n B 	3B\c 	6= RY CJ �� KR �� ,�� 9�� @�� ����:0           Xaeyz{Fx�� em 4��  ����:0           Xax|&)�� ����:0            s6�� ����:0             �� ����:0            � $W] .�� ����:0            f$ ����:0            f+�� ����:0            �&! VY ����:0           U�� ����:0            71�� ����:0            2 ����:0            O#�� ����:0            9!
kr �� ����:0            BOF3!!#_$, 
;C U�� L�� }�� %�� x�� # 0��   �� 	,4 lt 2�� ����":0           aewxy{���OF3  
/8 F�� U�� " ����:0           wx{BG�� ����:0            e2&C�� |� ����:0           o�

 MQ ����:0            � �� ����:0            � ����:0            / #fp ����:0            �L	 ����:0            �
+5"-�� _c V�� CG DH ����:0           � S^��
9O1> PU @�� �� LQ 3�� ^�� ty 9�� ����:0           � � 2Ww��-)�� ����:0             V[ DI ����:0           / �5
 W�� ����:0           �^-U�� ����:0            6 \a ����:0            (18/4 %�� 0�� ����:0           ,23
VZ ����:0            F8�� ����:0            3�� ����:0            F
CM ����:0            N�� ����:0            -	@K   ,7 ����:0           +7-= ����:0            +  ����:0            )
8)"!(. 	4: ~� ou �� ����:0           !3JR)�� 
 ����:0           JK  ����:0            
    	 ����:0           8"  ����:0            =kx  ����:0           56{� ����:0            7 ����:0            7� ����:0            !�� ����:0            .�� ����:0            %	:B ����:0            N ����:0            �|� '�� ����:0           � �  ����:0            �!
,B[a 7=  �� 	*0 $ �� V\ HN #�� ����$:0       	    � � "4c����5-�#,p+�� V�� ��� #*  
5< �� �� 
	 mt &�� /6 .�� mt [b "�� ����.:0            � � � 5DI������@nw ����:0              ),$* z� 
$ TZ ����:0           #��
$KQ �� ����:0           i�+	#�� [a dj ����:0           ]�B
*1 $�� ����:0           ��5-	+(=h}� $�� =�� 
2: nv �� :B BJ &�� \�� �� �� LT 	6> 
JR ����,:0            � � � � � � ]�����u~ $- /8 ����:0           - � � 0 y %�� 5�� ����:0           k�74A  �� ����:0           #$. �� ����:0           
��� 	FK ����:0           P$105 ����:0            2!MP  # �� ����:0           &*0 ����:0            G(2 ����:0            P84��   #* :A ����:0           � H��/H�� ����:0            -NB=�� X` N�� ����:0            � �@F ����:0            07,�� ����:0            $(G�� ����:0            �rz ����:0            � fm ����:0            y .4K 
"F�!% ^�� �� 	 	*.   +/  hl "& |�    �� 	26 FJ  .�� -�� ��   �� ����>:0            q s y � � � b~�����
gx���B(0)'
2#B=.�`f 2�� 
39 
9? <B .4 A�� 2�� ek  
6< �� NT 
 OU  ]c +�� 
% :@  8�� # fl nt 
.4 kq ek &�� ;A \b ou 5�� ag Q�� y %�� L�� ����R:0             % J N Y � � � � � � 3~�������ej���
G((2 KQ  #�� # %+ ����:0           P ` �o�8�� ����:0            38"�� ����:0            3
C0
Dy| �� 
 IL lo   X[ 3��  N�� qt ����:0           O � � � ��5��  	$+ �� ����:0           � _�# ����:0            � )�� ����:0            11(�� ����:0            2 	 ����:0            Q(0 ����:0            ! ����:0            !�� ����:0            &�� ����:0            � :?LR >�� �� ����:0            h�9"�� ����:0            29"& ����:0            �R,7)1	8'	)		$

� 
 .1  �� �� �� �� := tw )�� JM 	 �� x{  # 
 	FI $' �� 
 ]` kn 
 	69 
IL z} �� %��  gj   03  or �� 
  
), ]`  	RU 
  
RU  [^ �� �� kn '��   JM qt 
	  !$ �� ��    ����b:0       (    ���� $%&'()*+.01234568;<>CDFGHJLMO %�� ���:0            78 ����:0            306 ����:0            (uz ��:0            O)	AE # ����:0           1Q/6 ����:0             % 9? ۂ�:0           (HP'#) "�� ����:0           %;5<   	9@ Ń̓:0           -FH	 ����:0            !4< ����:0            ls Ȅ̄:0            .�� ��:0            *0< ����:0            :
CS ����:0            �,  +�� ޅ�:0            �go ����:0            *ip ����:0            N
 jm Ԇچ:0           $�'}� ����:0            ;@D ����:0            ,  ·҇:0            �&@H ���:0            �  ����:0           8�$ ǈˈ:0            �!& ���:0            d0K�� ����:0            �-
:A ����:0            � �0��� D�� ݉�:0           � �	�0bh �� 2�� ^d ����:0           � � `�2;�� ڊފ:0            � �� ����:0           ��	G>B �� =�� P�� ����:0            �'JO ���:0            �& �� ����:0            	 fj ����:0           �15 ��:0            �ag �� ����:0            ^43�� !% ]a ����:0           W +�� *�� ,�� ���:0            ^ ', 
 ����:0           M �+ ׎ێ:0            0�� ! 
,6 ����:0           � ��+�� ����:0            �DJ ޏ�:0            =KH�� ;@ ����:0           q �"%�� ����:0            � +�� BJ ې�:0           =]   ����:0           � �
-(=2 �� "�� "�� ,�� >�� 	 	 ��Ǒ:0            ` ����� ����:0            Hdl Òǒ:0            "�� ��:0            
 17   	 ����:0           E G ��
PX NV דݓ:0           H � ~� %�� ����:0           ��5&�MDI =�� �� 6�� �� ��� 
(- ch ]b TY ty ��є&:0       
      # i y � gv���LU ͕ѕ:0            + !
# v~ nv ���:0           Z � �&, ����:0             
!
    +�� " !&  Жܖ:0            Z � ���� ����:0            K	��� Ɨʗ:0            q  JO ���:0           gt*�&
A FL -�� ^d  ��� ��	�	    NT ����:0             w � � 
4: ����:0            � 12")  ����:0           } �.2x$�ov �� �� 
  ]d �� 	 <C gn $�� -��  PW .�� T�� &�� ��� ��� :�� x ���*:0           X ~ �������i|�Nx�� z�� țΛ:0           � |&:�� ����:0            i �� 27 ����:0           =�� Ӝל:0            ==C ����:0            �18'!20�� *�� >@  �� �� +- ����:0           236:; 7< ����:0            MT ����:0            � !2	

Y�� or ! fi %�� g�� %( 47   
 VY #& �� Ҟ�&:0       
     � � � 9<?A}��)+2.A%�� jn w{ A��  �� .��  ?�� &�� ��� :0           � #O]v�����   ���:0           *P!( ����:0            �@	*4(&7!2-/
�	 uz  &��  ;@ .�� L��  % OT ,�� |� 7< " NS 4�� 
 ,�� ! $�� ?D 
38 �� )�� jo 	). gl ^c P�� Z_  "  % �� 6�� x} (- 
9> �� lq ġ��P:0                   % / 2 4 8 @ � � � � N����[���	kr ��:0            @G/�� N�� _�� 1�� $ 
$, BJ ����:0             P � �2 SY %�� ��:0           mz~� 
<A �� ����:0           ��cm ϦӦ:0            %1 1�� ����:0           ,22%�� ����:0            oSX ̧Ч:0            Q8'�� ���:0            3fs ����:0            H�� ����:0            0'�� ��:0            ;
PT ����:0            N  ����:0            � -5 թ٩:0            N,IN ����:0            �.5 ����:0            % ĪȪ:0            :&JP <�� ���:0            s,%�� ����:0            �
 ����:0            �G2	0"''�c�� K�� Y�� # 	:B /�� >�� S�� .�� 
IQ /�� & bj (�� 2: �� ��  ( >�� �� ���,:0           P � � � � � � �����,$( �� CG ��ɭ:0           ��-9�� ����:0             0,�� ����:0            �9�� ʮή:0            2�� ���:0            %>$�� ����:0            �7	GM ��ï:0            $�� ��:0             )w~    :A 
]d ����:0           1C"BI  KR ΰְ:0            ?R �� ����:0            )'�� ����:0            18A ձٱ:0            ?09!�� JK B��   ����:0           � � 2� 9(#N9$���  �� J�� $ .��  �� 
  `e 
6; LQ uz 9�� =B hm  /�� K�� KP �� 0��  
05 TY 
 ?D �� )�� ���0:0            _ ` f p � � � � � � �����N{� "�� Ѵ״:0           � i9Nd�� �� ����:0           _ � .9%>IP �� }� .�� ip 
3: U\ �� ,�� ��ȵ :0           X _ m � � � & 2W�� 0�� ����:0           � �	nz ��:0            � 2
,G  UY �� +�� SW �� (��   
NR rv ���� :0           � � � � ���341:�:F303LG. �A�� 
$* [a W�� 
"( ]c �� K�� �� 8�� J�� �� ^d �� e�� -3 >�� 28 x~ .�� KQ CI @�� 	5; JP 

4: TZ &�� :�� 	4: 3�� $* �� ����B:0           W n } � � � /�dhnx{������������'5�� qw ��:0           � �MW ����:0            � �2'4#RY A�� s�� ��� ��	�	 2��  �� ��ʻ:0           � ��+2	,C	*/ TY 3�� 9�� �� +�� :? ). Z_ [` ����":0           � � ]��TU��,>�� ����:0            � ƽʽ:0            ��-54CG.!+9(#&K1:	0�F"87N )&!
-
	/"+16$:OFx!	=.	,>&!	�	,/ kn IL  �� 3�� <�� tw +��  �� "�� g�� �� .�� t�� 
7: (�� >�� X[ B�� !�� _�� >�� �� 7�� 9�� ]` nq il @�� �� AD #��  -�� )�� ��� K�� TW �� 3�� )�� 6�� "�� �� 25 �� @�� P�� tw "�� t�� dg �� 
 6�� fi 
36 ?B @�� $' "�� %�� %�� �� 
>A hk  �� 2�� sv   IL or 	*- O�� IL �� %�� 	), 
 	+. y| EH 7: _b �� �� ad 
7: 	 X[ ,�� &) 9�� C�� 7�� 1�� mp �� �� I�� #�� �� I�� O�� V�� TW �� AD vy #�� Z] !�� M�� 5�� c�� n�� ��� X[  7: lo 69 TW ^�� 9< ,�� 
;> 	<? mp -�� ! -�� ;�� F�� W�� )�� PS �� CF AD �� Z] GJ �ѿ�:0       p          / 7 @ A L P T X Z ^ _ d f h i q } � � � � � � � � � � � � � � � � � � � � � � � � $)3EHQWYpsx������������2Z[fhijvwx|������������������	L&
 4: QW .�� <�� O�� ����:0           $ �EO ����:0            �/)
9�� t{ jq  '  )�� % 
 % ���� :0             � ���75  
  
HK SV ����:0           � [^	18 ����:0            1[e ����:0            �$,�� %     	5=   ����:0           ' ; Q R S � � " #�� ����:0            �12w )�� ����:0           } �  ����:0            ��� ����:0            � (��  �� ����:0           ��-?E TZ  & LR ����:0           
Vpx ����:0            ch ����:0            " ����:0            � !5�� ����:0            � 0<�� ����:0            �
(x.&F��  4�� )�� "�� ����:0           % S|��#0',�� ty 1�� 0�� EJ +�� ����:0           B ~ � � � �%. ����:0            �  ����:0             
!	-$8��  % @E 4�� �� ����:0           );>Fu�� ����:0            � 
 ����:0            �N$��   ����:0           � � �$  �� ����:0           n �xS�� ����:0            |�� ����:0            l
=F ����:0            k963= ,LS 0�� :�� �� Y` #�� ����:0           � 2Z���>&3�� :�� ����:0           ���� �� ����:0           �jPW ����:0            >)
 ����:0            1Xb ����:0            �((A�� �� B�� ����:0           d �4R�� �� �� ����:0            � �'1�� ����:0            �B/5@(-&CF
!!+"�TZ !�� dj #��  *�� N�� 4�� pv '- ek *�� [a #�� v�� 
8> 
 ag  L�� {�� �� 
5; 1��  �� -�� U[ �� �� ,�� bh /5 (�� &�� !�� ^d 	5; }� )/ ����R:0                   # % 6 8 A � � � � � � � � � � � ),Q]dft���<	 �� NU �� ����:0           � G�(5-
C)"(x�%�� 9�� 8�� 	8? �� /�� ?F /�� T�� ov 	 3: %�� & �� "�� �� "�� 1�� 
4; u| ��  �� V�� Z�� <�� #* ����8:0               6 7 v � � � � #-Qf���|�5F%:0_g n��  3; 9�� Z��  ����:0            � � O h�[b ����:0            �AI �� ����:0            �mt ����:0            ��� ����:0            ��� ����:0            
 #* (/ ����:0             &/54
2BO=.�+��  (�� 
05 E�� H�� 8�� C�� 	$) 8= 	). DI 	5: 9> 1�� MR I�� P�� N�� # !�� +�� =�� 6�� ����6:0                 4 HK�����ew���=#* �� %�� @�� ����:0            ��$�� " ����:0           ) , �� ����:0           ��/HN �� ����:0            N
ty ����:0            � ����:0            � %%3=�� <�� =�� ����:0           e  {Y_ KQ bh v| ����:0           � � �$, ����:0            bty ����:0            m +�� %- ����:0           ��&�� ����:0            �54! ��   �� ����:0              �!.�� ����:0            Z |� ����:0            �*+(�� �� ����:0            ]�� ����:0            �
  ����:0            s{� ����:0            �'-�� ����:0            �$#	"�"�� !��  hm  
   $) ej �� &�� KP 	 
49 ��  	27 �� 

 	', +�� ����4:0           B { � � � � � � � � Mf����(&V] /6 BI ?F *�� 9@ ����:0           � � � 	�-2(ch R�� 	(- &�� hm NS ����:0           �m��& ����:0            ��� ����:0            ���  ����:0           �*@�� ����:0             x ����:0            ( ����:0            	-7�� ����:0             +7'F:
 ��  B�� H�� �� _�� 	8> ���� :0           [ ^ j � �ixN% 
?F -�� S�� ����:0           � � � FL�� ����:0            x3Y^ ����:0            ��� ����:0            � 1
7> ����:0            � ����:0            � ,�� ����:0            � /�� ����:0            m  ����:0            ��5($&#	N(&+
2	#'/	+2...B�VZ RV 7��   $�� ;? |� 	+/ x| hl 
 JN 
! \` 
(, 48 48 os  vz �� 
/3 @�� 	)-  �� @�� DH *�� "& z~ [_ 

 $( 8< @D  

  &*  
 pt 
-1 <@  $ Z^  LP ~�  6�� gk �� 
37 !��  (, Y] Y]  Y]  +�� �� "�� +�� SW 
 |� 
 	+/ 
	6: rv 
HL qu Y] 	!% qu J�� 
(, bf IM " 	+/  NR %�� 2�� !�� |� I�� 	*. 59 �� �� 	.2 �� Z^   NR cg %��  hl �� !�� hl 
 #�� 9�� ko "  IM H�� $( " �� *�� 2�� =A �� 
  $" ,0 rv *�� 3�� S�� 
 >B !�� 
  ?C  "& 26 
 CG 
 [_ 6: �� ;��  %�� $( '�� �� 'gk ~� B�� S�� ^�� m�� #' X\ #' 
/3 DH �����:0       o      % ' - 8 B v � � � � � � � � � � 	$+./17CDEINOPSU[\]cdegitv|������������������������������m�������������������� W` ���:0            0 !�� ����:0            -|� ��:0            �
0)/$�� -��   F��  ���:0           � #w8#�� ����:0            � HP ނ�:0            � `h ����:0            �

Xc }� ����:0           _i?E ؃܃:0            � 2im #�� 59 ����:0           o�  ����:0            � v� ݄�:0            �*;�� 9�� ;�� ����:0            � 	&	3< ]f ��  �� 2; " ̅:0           k���"�� ����:0            �#8�� 4>  ��:0           B O n (�� ����:0            l*�� ����:0            �	5< ÇǇ:0            +�� ��:0            � ����:0            � )0 �� ]d ����:0           v y " ��:0            �+�� _g ����:0           X��� ��ĉ:0            Y F, 	   :�� ��:0           � dx�<'9 P�� ,��   X�� FK sx  rw uz �� SX  ��Ɗ(:0            ) � � %2Y	z�!4�� ǋˋ:0            )-CI �� ��:0           � � 5<  ����:0           6B	Rd ،܌:0            � ks ����:0            �&OV &��    ����:0           � ��� ��:0             
 T\   9A ����:0           ���,4$-&	
� &, #�� 
17 1��  "(  KQ GM B�� 	'-   #�� >�� 
 
 
  
  
  
   y Վ��<:0                  ' / 5 6 7 8 ��������& ��:0            �S] ����:0            4;B ����:0             5U^ 6�� ڑ��:0            ^-
4> ����:0            6 -2$@#) 	 Z` 	39 e�� 8> ;�� /5  $ ��ƒ$:0       	    0 2 7 � � fl��#1PX V�� �� ����:0           B } � "
2 '_j lw 4? u�  .�� ���:0           � "�]9Ta ʔΔ:0            2K�7'
@#��   [�� h�� Z�� ( 1�� Yf t� ��� :0           q � � � � "�%Q_ ��:0             2+4 
,5 E�� ����:0           �m ˖ϖ:0            �O,�� f�� m�� 7�� ���:0           > w�K��� �� �� ����:0           q -,�� ����:0            �C" ����:0            � �� Ƙ:0            $ 
@H ��:0            �Nw�� ����:0            � FM ����:0            �+	1; ڙޙ:0            �� ����:0            s r} ����:0             $"�� pw BI ˚Ӛ:0           ' �$!  QY ����:0            ' S
$
2-)1�� 08 
/7  �� )�� ��˛:0           ' ?H�&.�� ����:0            8 &C�� ��:0            8 4	�&81�� &. ��� �� JR CK ' �� ���:0            l � � �dsBl�� ՝ٝ:0            e���� 2�� ����:0           � � 3�� ����:0             4G!;I��  6�� h�� �� Y` -�� $�� ؞�:0            O P T � �
�A ��  
 DN ��
�
 ��� %/ �� �� ʟݟ :0           0 H U � � ����� Ǡˠ:0            > NY !�� ���:0           �S@B*"�� @I �� #�� g�� Yb ����:0             ��!.�� ����:0            )	!L	CM R\ 	&0 !�� .�� �� 
 q{ mw �� 
  ���� :0           l � � � )��"+ ����:0            �     FQ ǣϣ:0           � a�

 nv ����:0            � 	, ����:0            9 �� ϤӤ:0            ] 1B�� ����:0            } &-8 	=H ����:0           i �& �� .�� ̥ҥ:0           T i .9x�   ����:0           X 2" !*  ����:0           n �6O��  ��:0           Zn1 ����:0            } JU ��§:0            -3�� ��:0            � (-�� !  " ����:0           ` � � �! !�� OW  	08 19 Ϩܨ:0           � �	
;C ����:0            �     % ĩΩ:0           � WXY5'�� ����:0            ^+KT ����:0            ]'�� �� �� Ӫ۪:0           =y�-�� ����:0            �

 
/: ����:0            �#�� ��:0            � 		 ����:0            �  ����:0             @&C
/:?Z�� �� #0 v� ' ;�� �� U�� '   \�� !�� Ԭ�$:0       	         8 A Th�2Q�� ���:0            �O 	 	 z�� ����:0           R�w9H�� Ӯ׮:0            �%�� ����:0            �%�� ����:0            e 4O�� ȯ̯:0             HP ��:0            ;C W_ ����:0           ,�'dl ðǰ:0            �Fu~ ��:0            x>�� K�� ����:0            ��#�� (�� ����:0            � (�� ov �� I�� ��:0           �BK ����:0            n (	.8 '�� ?I βֲ:0            g�!73#7&�� #��  EP "�� q|  5�� ����:0           Z �  �g{�.�� ����:0            Y !;�� 
;G ����:0           � �(;�� 	 &  .6 dl -�� ^f {� ϴ�":0           d � � � ����c'C�� ɵ͵:0            �~� ���:0            � (75Jgr   r} +�� &�� &  �� �� J�� ^�� ����:0           d j � nr[^#/4�� !+ <F ����:0           B L47I�� �� }� ҷڷ:0           W � �-C�� ����:0             Cl�� �� ����:0           A �@)d�� �� & 6@ ���:0             #/�� ����:0            > " عܹ:0            S�� ����:0            � %0 ����:0            M& %, %�� 7�� ɺѺ:0           i � � .G�� ����:0            X   �� 5��  ����:0           � � _G?�� ��:0            �'>�� ����:0            :A�� ����:0            � fp ߼�:0            �?LS  ?�� ����:0           D ��!	+4 ��ý:0            )2? % *3 �� "�� ! ��:0           �v� 
 hr #��  
 ����:0           tuJT ��:0            1 C2F?*�� DL �� 
 C�� 
4< ����:0           A � ��x�'29	$X1�� QX �� 	 @�� 	7> �� Y�� [b 	 MT �� $�� ���":0           ) m n � ����?A�� R�� ����:0            �!8	A0�� ��  
07 
$+ 
/6  �� '��  ����:0           � � � � ��
$	2:  ����:0           ' � �� AI ����:0           � �� B)  �� %. �� >�� ����:0           M � � ]e�]g �� ����:0           a � 	<
J  
  
 �� �� 
=G /�� _�� k��  
  
 ����":0             > E G � � ��@Xd [�� ����:0              F'V�� �� CK �� ����:0           � � H�-"[�� |� ����:0           p� C=|W^ ov 1�� =D BI 3�� (�� %�� 	 x o��   �� �� +��  x c�� ����0:0           	 
      - 4 A � � -7��	*4 ����:0            0 23�� ����:0            �/�� ����:0            9H�� ����:0            2:.OY @�� ����:0           � �Ox!-Q�� q�� ��� ��	�	 bh #�� ����:0           w|�1O-�� N�� *�� ����:0           } w:;�� ����:0            h+(  J�� A�� �� (�� ����:0           ^ ` n � -�� ����:0             !,0 �� JN ����:0           � � &, !�� 
06 ����:0           # Y� �� �� "�� ����:0           � (2�� ����:0            �B%�� ����:0            ��� ����:0            �
 3>  ����:0           ���� ����:0            y 2B�� ����:0            �
G	C,.N�� B��  AE 9�� V�� n�� &�� )�� �� I�� ����:0           P w � ��(
*�� \a ����:0           d �5> ����:0            � (/ ����:0            � @E ~� ����:0            �	3(t{ �� ,�� J�� 	 %�� ����:0           ��KV ����:0            �(,�� ����:0            �OU ����:0            �#%�� mt  ����:0           f � *	�"	/3��   :��   fn �� ,�� ����:0           � � � � 6= ����:0            ��� ����:0            1  ����:0            sx ����:0            
 & 
! lt ����:0           |�9 .5 ����:0           _ �  ����:0            �?<�� ����:0            �>D�� ����:0            �x} ]b ����:0           
5LB�� J�� ����:0           ^�L_�� ����:0            �9', ����:0            �9<�� Y�� ����:0            �9ow ����:0            �"-(CK"
2!2(�/�� �� hn �� gm 4: io *�� R�� !�� OU (�� 	.4 1�� >D   NT �� C�� ����2:0             % 0 5 A q � � � � nzm�#56= 1�� 29 X_ ;B ��  %�� ����:0           4 B � g�rv&�� "�� !�� ����:0           ��	/-(#+3.�� ai '�� 
08 G�� &�� |� ����:0             % B ^ � �#%- '�� ����:0           	 B "�� ����:0             ����:0            �0�� ����:0            I! ����:0            � Oa�� ����:0            w!- 4�� '/  �� ����:0           ! � /@ kp {� ����:0             �T[ ����:0            �  	 �� ����:0           + < \e �� ����:0            � -H�� ����:0            pN	 {�� ����:0            � #' ����:0            � 	"07 \c " ����:0           ����� ����:0            �
(-��  �� "�� %�� �� ����:0           ? ���	r{ >G ����:0           � 
++�� ����:0            � 	39 ����:0            � #@)�� ?�� �� mu 
3; JR 6> jr t| u} ���� :0           B u � � � � � -#!�� ����:0            B #�� ����:0            B +KO!9!�� �� j�� FO v�� # 3�� 
7@ ����:0           ^ n q uw��
 %( ����:0           T �
 ' ����:0            U fk �� ����:0           4 � ����:0            �`o ����:0            !�� ����:0             ,7"$zVX "�� %' ') �� �� �� 
/1 	46 �� �� `b �� wy .0 df ��  ����0:0           �$%()*-4FHR!&2�� ����:0            s,8	
R	-1  �� ;?  ��  �� �� 4��  04 	AE ����(:0           �%)*-3< )05 *�� ch 8= ����:0           N k	18$�� 	DH ����:0           231hr ����:0            2,
 ru ����:0            �,-1 .2 fj ����:0           ���,$�� ����:0            �6; ����:0            %,��  % ����:0           �7% ����:0            �	6B ����:0            �&<�� -�� ����:0           IL [�� ����:0           0�VC#+9(#1	2	:F7	C&%5021?.!	�(, ^b O�� cg 4�� F�� ^b ~� F�� hl �� %�� 3�� ��    �� dh �� +/ #�� G�� Q�� *. )- dh �� �� 
#' rv B  	04 �� �� !�� %�� 2�� 4�� H�� L�� ?C 
.2 �� ,�� �� 5�� ae -�� @�� Q�� h��  	"& �� 
   4�� PT ]a :�� lp 8�� 1�� #�� &�� >�� I�� �� "�� B�� �� �� 
15 ����f:0       *    A B ^ _ d f h n w y } ~ � � � � � � � � � � � � � � � � <� ^`io�����
*C49(%25$1!�ck (X` �� &�� 1�� _�� u�� :�� �� B�� &JR ks �� 0�� 5�� E�� 7�� 3;   �� $ fn  ��  �� |� DL �� �� ' ks �� '�� 2�� "�� ����::0            A W _ ` e p v � � �  ^fgil���+((:F52O
# `i $�� =��  R�� py   " F�� �� ����":0           ^ ` d � � � �^o!(Q[  �� $�� ����:0           ��rz ����:0            �  ����:0            Y'�� sx ����:0           *;7�� ����:0            $! ����:0            {� ����:0            DM �� ����:0            "$ ����:0            &) [�� [^ ?B {~ #�� %�� �� 4�� RU !�� 	14 )�� �� ����$:0       	    8 E G #�����2:> 4�� rv ����:0           o�*]d ����:0             (�� ����:0            d 
47 ����:0            � 7'!J�� �� } 5�� #�� �� �� �� &( 
LN ����$:0       	    � #$;HP#$ &�� ����:0           � I )�� ƀʀ:0            �EK ��:0            
!-F$"��   �� UY �� ����:0           � �x(3GN 	5<  ��:0           % L�Zf ����:0            LL  Âǂ:0            �
  �� ��:0            �20�� T�� ����:0           b�# �� ǃ˃:0            �"2F	*�� CL 1�� "�� ;D FO ���:0            4f�x� ˄τ:0            :F!7��  BH ����:0           � %�� ����:0            g%�� ҅օ:0            p 
&O&1: BK x� >G BK 2�� ����:0           ckw�� Ά҆:0            ����	�	   ����:0           � -.4>  ����:0           W�(�� ��:0            �#=�� ����:0            �
$$!9&6? A�� =�� /�� A�� ����:0           �fp�� # ����:0            �� ����:0            �MS Љԉ:0            �K	��� ����:0            q #=?F  ;�� ?�� ����:0           2 3 B �=#�� ��:0            � ����:0             r~ '�� ����:0            S!MS \b  ܋�:0           � � v![b ����:0            )! 
8? ����:0           � n/I�� ��:0             �� ����:0            "- ����:0            ici ܍��:0            & Y^ ����:0           i � % ����:0            �&#�� AG Վێ:0           i _  ����:0            � U\ ����:0            v "(  
 5�� Џ֏:0           f�(iu ����:0            �
)0 ����:0              $�� АԐ:0            �8b�� ����:0            � 0s} �� ����:0            � $DL ϑӑ:0            �
<$	
.0�� `�� l�� 
 
 	)1  ����:0           � � ���<;�� ђՒ:0            � !& 

 "' ����:0           4v} ����:0            (0 ѓՓ:0            4,�� ����:0            / 
JT ����:0            :L	��� Ɣ:0            � ��:0            �@F ����:0            � �	.E%1   Q] �� _k \h y� A�� Y�� \h GS ��ŕ:0           � � W�����!,�� .�� �� ��  R\ ����:0           v � � ���2N�� ����:0            m!!�� 1�� ����:0           ��	NU 9@  6= ���:0             � �6?G ����:0            Z&	 !�� _e 
(. ci   Ә�:0           ) / 4 ? @ S %�� ����:0            � Ff�� әי:0            � ";E  * ����:0           5 � N:�� E�� Q�� T\ ����:0           � � h�N>�� ���:0            � @$-&f<F � ,�� �� �� �� # 	+5   �� 8�� (�� 
 '1 ����(:0               ' 1 6 8 < > @ W�G�� u�� ʜМ:0           > � ����:0            i�� ����:0            v 1�� ɝ͝:0            2�� ���:0            �VZ ����:0            L''�� ����:0            ;5L8@ S��   ��:0           ^�B \e gp 6�� ����:0            ez 	*3 ԟڟ:0           ��?'�� /9 ����:0           ��9K�"2!
0=B�  ~�� tz x~   |� ��� �� E�� f�� hn DJ  %+ &��   8> �� Y_ �� 	.4 !' E��  N�� k�� h�� ���H:0           Q q w { � � � � � � � � %)-WXYl��SV`b��CG.b�� z�� �� ����:0           A ��)9%( +�� 2��    ǣգ:0           � #2 l�&") ����:0            	�:,EL ^�� `�� �� ǤҤ:0           ] � h�)DK ����:0             	:A ����:0            ]#. ۥߥ:0            �nx ����:0            M�� %+ !�� ����:0            � �
	F)$ �� I�� % �� % ��:0           � � � � mO3)/ �� �� ��§:0           'w�#'�� (�� ����:0           � �
1: ����:0            7 !W^ !�� Ϩը:0           l� ����:0            �&*�� ����:0            ��� ̩Щ:0             4�� ���:0             "*�� ����:0            �/'7�� G�� 07 ��ɪ:0            �.AJ �� ����:0           � �-!- 4��  )  ����:0           6 p,5&-
	2"�CM & G�� �� �� +�� 2�� 
 s}  ;E     $�� &0 ", �� #- S] �� )��   �� ���<:0              ! 7 8 @ � � � � BLqv������	=J 	+8 ����:0           * G((
2B2
5? 2�� �� PZ IS C�� H�� ��ɮ:0           P 	��m�,*5&	0
)-B��� ��  w� %�� ' 	  �� 	  4? Q\ B�� 
9D "�� R��  |� P[ Va   &1 do  ��Я<:0             + 8 F � � � � � � #+Wp�������xN�� ����:0            |Fb�� ��:0            x	"!   �� �� $�� ����:0           ��,3 ˲ϲ:0            �)!>G �� �� ���:0           '1
.B ����:0            �    ҳس:0           ��   ����:0           ���	#2 ����:0            �'�� ߴ�:0            	 ����:0            �
 PX ����:0            � qw յٵ:0             LS ����:0            ��� ����:0            U63+�� -�� ƶ̶:0           Z{
$.",�� C��  \f  ����:0           ' ��	@K ʷη:0            :*$#+'9+2Ox!(G=.�#�� r{ (1 9�� �� 0�� aj  ��  	,5 [d � �� ;�� }� �� ��  
$ lu L�� O�� �� lu �� [d Z�� $�� c�� 1: /�� L�� +�� 4�� ��� /�� 
GP js 
5> ���J:0            $ ' B � � � 2]vy����aw|�������>?�� H�� ����:0            �+O$�� k�� ��»:0           ]w(0�2:xL,
L'�� 4�� ��� %�� 9�� ��� y�� OX ir 	 ���$:0       	    d � � � h|������ ����:0            j_e ����:0            %�� �� ˽Ͻ:0             77�� ����:0            $,4�� ����:0            �1�� Ǿ˾:0            2)� 	 ���:0           1>)$�� ����:0            1
0 ms �� x~ ſϿ:0           � �q�GM�� ����:0            � ����:0            �
08 �� ����:0           � c0�� Zc #�� ����:0           0 ? `!29 ����:0            �:BI ����:0            h0�� ����:0            �	DN FP IS lv ����:0             '�,BL ����:0            �#;�� ����:0            �46�� ����:0             2	I��  	,4 ����:0           � ;t&t~ Zd ����:0           � ����:0            I)9�� ����:0            #v} AH # ����:0           � A3
9B $�� ����:0           y{9
=G ����:0            _ !*�� 2�� ����:0           Y Z FN ����:0            +0>#!;	)- 
$( .�� +�� U�� ^�� �� )�� ����:0           _`r����X` ����:0            �&�� ����:0            �&,�� ����:0            $�� ����:0             T^ ����:0            ��� ����:0            � 'T_  \g ����:0           ���9T^ z� # ����:0           _ v�*47601C�� 9�� ;F �� &1 N�� �� H�� F�� ���� :0            W � � Z[`�NZ ����:0            vYe �� ����:0           m �   ����:0            �

	 25 	 ����:0           ��_f ����:0            �2
!�� �� ����:0           ��1.�� ����:0            2(, ����:0            +
4!!3 4�� V��   1��  
"% hk ����:0           W Y Z � � ����:0            v ����:0            ils ����:0            
&"(��   
08 E�� AI ����:0           
 � �� ����:0            �$f| ����:0            �$(�� 2 ����:0           �/(-:0�� B�� 0��   �� $�� D�� U�� ����:0            % �0U�� ����:0            `  ����:0            k#, �� ����:0           
 � :> ����:0            V(,��  	/8 HQ ����:0           % L ��  ����:0           ��!�� ����:0            �CF ����:0            +	4.0�"'9'
�
 $�� P�� ]�� 5��  �� 7= 
CI +�� ?��   �� {�� ��� RX �� $* I�� S�� ;A  "�� ?E ?�� >D  & 
   �� |� ����::0           W X Y z � � � � � 2��������.# 3�� ����:0            X /-@!uK�� 5�� SW Z�� tx 
04 hl 48 "&  
	59 vz ��  .�� (�� /3 tx ����.:0               ! � � w�ag���<5%0!(�  �� {� ;B pw %�� /��      
 #* #*   9@ z� JQ el �� ��   ! V] @G  ��     }� �� 
  @G HO ��    cj ����L:0             # > e x � � � � � � � � � � 	����������	��� ����:0            � G�� ����:0            � ����:0            �WZ ����:0            � 
  	!'  ����:0           � ���CT�� j�� v} ����:0           � �CL�� ����:0            � -&�� ����:0            p-E�� ����:0            pNMU v�� ����:0           Y � !_i ����:0            Z ]f ����:0             �v~ ��
�
  ����:0           Y � q ) ����:0            tG!   ?G �� t�� ����:0           < � t�MS ����:0            h 	 V\ ����:0           %�� ����:0            (B9�� JR ����:0           e�  ����:0            � #
16 RW ����:0           f �5"B0�� �� '- ��    ����:0            � � v���/�� ����:0            �   [_ ����:0           ��#�� ����:0             ����:0            ��� ����:0            d�� ����:0            �  x9PS 2�� �� �� ����:0           t]|�5�� ����:0            � &�� 3�� ����:0           1 x� ����:0            n IT ����:0            (-   �� =H  
 {� ����:0           � � � $%'�54�� ����:0            ^
W_ ����:0            M7
NX ����:0            $/7 ����:0            &$�� �� ����:0           O�� ����:0            N�� ����:0             ����:0            Q ����:0            B9 ��  �� ����:0           L 2$�� ����:0            f
8@ ����:0            M  ����:0            � IU ����:0            M 8A ����:0             7%�� ����:0            $7# ����:0            $  �� ����:0           %8 
 ����:0            3	FN ����:0            6"- ����:0            B	
& EO #- ����:0           ���1DN ����:0            2	GS ����:0            0!  ����:0            $mz mz ����:0           1�� ^h ����:0           2N |} ����:0           !(3  ' :A %�� ����:0            [ c{" ����:0            �
9/:)
	 # 
.3 �� -�� R�� ����:0           � 2h	 ����:0            � Gp�� ����:0            P  (-<"
N
�.��  �� Y�� �� E�� m�� (�� 	(. -�� B�� nt +1 '�� Y_ #�� &�� .4 ����0:0           % � � � � � � � � &*+To�6  ����:0           :Z+#1
2GND�� �� pv (. �� W�� 39 qw �� HN j�� ����&:0       
    ^ f }  � � Y�j�00$�� �� !    ��  ����:0           p � � '([ ����:0            � $DS ����:0            �� ����:0            0,� ����:0            �NZ ����:0            #  ����:0            #04 ����:0            '#59 �� ����:0           9fl ����:0            % ����:0            .7 	HQ ����:0           HP7-�� ����:0            $
48   ����:0           n �  ����:0            �) 8? �� ����:0           -8J�� ����:0            " ����:0            R	3< ����:0            �		-6 GP 
9B ����:0           ��*4GF*
 �� :�� LR CI t�� ����:0             P � � � 	*C'
(\e 5�� 	 gp 8�� JS ����:0             A "�� ����:0             ��  �� �� :0           $ �-$. {� �� NX ˀ Հ :0            � � �(1 �� �� :0            �$<G u� �� �� :0           � �pv  � � :0           ��2R�� �� �� :0            m
 �� �� :0            �7ls � � :0            $:5�� I�� �� �� :0            � 
-3 ^d U[ �� �� :0           5 {$'�� � � :0            pZa �� �� :0            7IM �� �� :0            #+=�� cj ]d ބ � :0           �2$
7> &- �� �� �� �� :0           { ��	2	$
?<D fn (�� D�� (0 �� .�� 8�� 
6> Ya ۅ � :0           ���%. �� �� ǆ :0           � �
 � �� :0            U �� �� �� :0            () ��  :0            1)�� � � :0            J" 2/2 z�� �� *. vz � �� ^b vz ~� >B �� =�� �� >�� @�� -1 -�� �� �� 2:0            � � � � >ESd��m��	BH � � :0            91%�� �� �� :0            }  �� �� :0            �-C�� Ԋ ؊ :0            !�� 	 �� �� :0            �� �� :0            $4�� 	+0 ы ׋ :0           ��K'9�� ,�� 
 nu �� �� :0           q �8#'d        �� 	GI �� �� �� ��    SU Č � .:0           ��!-3579;EIL%5/:=(�� *0 
8> 
?E h�� % �� �� :0            hu��:L�� X�� ڎ ގ :0            h5$C��  �� �� :0            p�� �� �� :0            ?V�� �� � :0            �s|  �� �� :0           �-%0 �� �� :0            � ��  	 ې � :0           �  /*.c@�� TW := �� ��  8&�� (�� *�� ,�� F�� H�� P�� R�� �� �� :0             � =n��X] �� �� :0            ^)PW ˒ ϒ :0            &. � �� :0            � '�� �� �� :0            vG#* �� �� :0            P  � � :0            K 2KQ �� �� :0            �)!�� �� �� :0            J" Ҕ ֔ :0             &z� =�� �� �� :0            i �� �� �� :0            �8C ˕ ϕ :0             G2 v��  	 cl w� 	>G � �� :0           P � � �29O��  �� �� :0           ��)s| � � :0            #/O�� �� �� :0            mv �� �� :0            03P/�� fl (�� bh  QW qw #�� �� O��   ݗ � $:0       	     � � =������'L	%+ TZ   
06     &, %��  	5; ��  � �� (:0            # u � � � Jnr���7
"�� ,�� L��  �� �� :0           � � �FW�� s{ ˚ њ :0           � �,w~ �� �� :0            �)!-B%  Z` A�� >�� �� EK 	)/  ag �� �� $:0       	    # � � #),p�Y�8=-�� .�� �� �� :0           � �	 ٜ ݜ :0            � "-�� �� �� :0            � 
4; kr �� �� :0           �"/-@K)"G�(�� 	6A p{ #�� 0�� >�� *5 
 #. KV "- (�� �� T�� Wb [f 0�� �� 
<G "z� �� >�� Q�� f�� %0 GR ԝ �� 2:0                ! & - / q u � #����w� � � :0            y-G1�� Q��  [�� �� �� :0            �!�� �� Ǡ ͠ :0           Z 0B�� �� �� :0            � .  
28 rx �� �� :0            �
2,	 BG ch $)  w| -�� С � :0           K���l�4&�NL@U�� 	8> QW G�� e�� +1 �� }�� 
6< �� Ȣ ":0            g i � � ��� 4�� �� �� :0            �	O	;E " ��� ڣ � :0           ( r w<2�� �� �� :0            � MT �� �� :0             	@�F!K�� ��� a�� <�� � �� :0             � � c[f �� �� :0            � 	 ԥ إ :0             C
2:    �� �� :0           � � aC7�� �� �� :0            �  
 ٦ ݦ :0            `�� �� �� :0            �)&�� �� �� :0            1_e ̧ Ч :0            Hgm � �� :0            (
JO �� �� :0            5 V[ �� ;@ 	@E �� Ũ :0           -CD"�� �� �� :0            R
]d �� �� :0            E)�� 	CI ̩ ҩ :0           1>~� �� �� :0            6�� �� �� :0            *
NW ʪ Ϊ :0            I � � :0            �,-4.	872- $x�K�� `�� /�� ,�� _c 04 �� 	+/ 
8< U�� D�� R�� !�� 	+/ 
 $ Q�� rv 9= ae 5�� !�� 8< �� 7�� /�� f�� r�� �� « <:0             @ X h l y � � � �  !����]gp|
 hp ǭ ˭ :0            ��5.+	+0 |�� !& ?��  �� (�� � �� :0           � � � ^�.�� ̮ Ю :0            ��.0SY &�� ~� ��� 
7= bh F�� � �� :0           � � � Z�5dl QY ]�� ӯ ۯ :0           h^!'�� �� �� :0            � L/@$&C	!'9


9�
49  �� *��    ��   1�� �� ej UZ ;@ 	7< ot )�� �� r�� 5��  
 
6; QV 	*/ uz    % \a ch 38 
27 `e  IN qv )��  fk |�   	-2 }� )�� ��  �� =B '�� �� �� \:0       %     	 
    ' , 1 8 @ A h k r � � � ,2K�������V����	@I �� �� :0            �/"* fn !) =�� �� �� :0           > L � "4)2?	q 
 LV ^�� 
1; ", EO 	.8 
 \f CM #��  * Yc  �� ", =G +5 �� �� 2:0              3 b � r����v����� IO ȶ ζ :0           c� �� �� :0            c
2: �� �� :0            uw ÷ Ƿ :0            �-:`g <�� @�� � � :0           � phO"�� ;B ! �� �� :0           w��!$�� 7? � � :0           ��		 :2O(=>&o!( 3: KR ��  �� &�� �� H�� "�� @�� �� FM  5< 
5< �� �� .:0           � � � ��]hmw������#:#2�� O�� {� �� ׺ � :0           f � �� +�� �� �� :0            �3�� Ȼ ̻ :0            �9X�� }� � �� :0           _ �		;A �� �� :0            -0�� $ '�� Ƽ μ :0           kl9D �� �� :0            � 	' )3 4�� @�� _i �� �� :0           �l  OW !�� � � :0           � �  �� =�� �� �� :0           � � MU Ӿ ׾ :0            �!( �� �� :0            +�� �� �� :0            ?�� Ŀ ȿ :0            �5�� 1�� � � :0           �^@H �� �� :0            - C�� ;��  �� �� �� :0           1 � ��C)mv %�� Z��  �� &�� �� �� :0           � � �Ya �� �� :0            =&�� �� �� :0            8 9-�� �� �� :0            �(G�� 3�� �� �� �� :0           % c�7�� 	.7 �� �� :0           � �58NB,G#�� �� �� y� P�� ow EM i�� QY # �� �� $:0       	     # � � � g�e��
!��   �� �� :0           L ?(. �� �� :0            �2 �� �� :0            o%Kx~ y�� IO �� �� �� :0           e q �" JV �� �� �� :0           � �0�� 9A �� �� �� :0           ) � � , �� �� :0            �2�� �� �� :0            �,IR -�� �� �� :0            �-!-8hr  �� $ �� (�� �� |� �� �� :0           � � 1p��$�� 
2= �� �� :0           �  !�� 4�� �� �� :0           @ � (u~ [d �� �� :0           ��! �� �� :0            � >6�� �� �� :0            �9&8�� <�� �� �� :0           _ �	 �� �� :0            o 2 �� `g 9�� �� �� :0           � >�&0 �� �� :0             �� �� �� :0            �  �� �� :0            �&�� �� �� :0            �@U�� �� �� :0               �� �� :0            �
 �� �� :0            Fl�� �� �� :0            �  nu ls  �� �� :0           � � � � &/ �� �� :0           � C6�� F�� _�� �� �� :0            � +# oy ?�� �� �� :0           �	2(.)�� 8�� 9�� �� �� :0           � ��
" �� �� :0            s�� �� �� :0            q.�� �� �� :0            �Xb �� �� :0            �
:!2):B C�� /��  H�� # �� �� :0           � )���26�� �� �� :0            mbg �� �� :0            
  �� �� :0            � #�� �� �� :0            ��� �� �� :0            � 	%( �� �� :0            �  
 OT  �� �� :0           "#Q\ �� �� :0            7LU�� w�� �� �� :0           � �17�� �� �� :0            } -,�� �� �� :0            p �� �� :0            F "�� �� �� �� :0           �(
-5 �� �� :0            �
+)9%@D 
 w{ # &�� ^b �� �� :0           ^ X�91�� �� �� :0            �K07B2�� TX |��  H�� 15 R�� �� �� :0           , 5 q � � (e! '�� lr �� �� :0            � �4	B!X�� ") 
 >E 6�� �� �� :0            \��#! �� �� :0            �
B  jo 	.3 ^c D�� �� �� :0             | �e-K	 N�� �� n�� 
	5< PW �� ?F \c  
	 
29   �� �� $:0       	    5 6 q � �\]���
K	7Fai )EM �� 6�� ?�� Z�� ��� #+ &�� X�� �� �� :0           7 q r � � W[ �� �� :0            ��� �� �� :0            (  �� �� :0           � �&5�� ty �� �� :0           8 � �� �� �� :0            2?N�� 2�� bj BJ �� �� :0           � ��	#�� �� �� :0            EM �� �� :0            �	 tw  �� �� �� :0            X)9�� �� �� :0            /G82@Q�� +��  d�� �� �� FI 	*- MP �� �� ":0            P � � !y��)�� �� �� :0            1C=D %�� �� �� :0           A �fr �� �� :0            �<O,&3 Y] ?C 6�� ��� �� 3�� �� �� :0            5 7 � w��
<C""( O�� r�� 39 sy �� �� :0           \ � � ��JQ �� �� :0            b%* �� �� :0            �%�� �� �� :0            �	
', 
16 �� �� :0           z 9"9> �� �� :0            & �� �� :0            M 87< �� !�� 5�� �� �� :0           (3&* �� �� :0            
Zb nv �� �� :0            � V[ �� �� :0            /:3=DE�� 4; !SZ �� *�� H�� U�� *1 
ov �� �� �� :0            � h{��/)9/O[9�� W_ 	"*  ck }� �� G�� �� *�� 9�� A��  �� �� &:0       
     > C T � #2cw�<! 7�� P�� LT ;C �� �� :0            � � &+ �� �� :0            �
(-"DH $�� 
DH #��  �� �� :0           	!Npuz .�� �� �� :0           o�:> �� �� :0            �:#+ �� �� :0            �  FK �� �� :0           Y � "[` %* �� �� :0           � f$�� �� �� :0            � 	.3 �� �� :0            62�� ?E KQ �� �� :0            � Z%#2:N0?!�*�� 15   8�� #�� +�� ;�� dh +�� )�� L�� b�� z~ 	/3 4�� _�� %��  sw �� �� (:0           
  e f � � � `��:	N0	?e! Q��   ns l�� ~�� �� ��  �� >�� E�� ]�� 
%* TY �� ��  :0           h � � � `�>\�� �� �� :0            �pv �� �� :0            $!	~�  .��  �� �� :0           Z GX�71I��   4�� �� �� :0           � A� �� �� :0            �!?H �� �� :0            �0^x| mq \`  ��  \` DH *��  �� %�� )�� 6: �� �� ,:0           � � ov������`� �� �� :0            
<+20dk "�� nu 	4; �� ,�� W^ �� �� :0           U � � >tv�

 KP �� �� :0            }-/�� �� �� :0            � ! �� �� :0            -:�� �� �� :0            p�� *0 �� �� :0           L�G=}� V�� p�� �� �� :0            ��.�� �� �� :0            �1:A �� �� :0            } 1JS �� �� :0            } !�� �� �� :0            �0(92!
$>B�BG �� 
38 	 Q�� 	 ', .�� pu 6; (��  >��   !�� qv V[ 	 ��   7< �� #�� 05  O�� �� �� @:0            % 1 _ h m � � � � � � ?\��������+ �� (�� FI 

&) be �� �� :0           � dz�� �� �� :0            �
& ?�� DH #' >B 
,0 �� �� :0           8 M N T � "*<
!&
-�7: J�� | AD ,�� %�� !�� �� <? `c VY ��   Z]   %�� 2��   �� �� 2:0                , 7 � � � 8����!!
 
.3 3�� �� �� :0           � � sx 0�� HM �� �� :0           � z�-)!$�� 8�� 
 _e ci �� �� :0            6 w #!  	 B�� �� �� :0           ���:=g�� \�� �� �� :0           h�L<A }� V�� ��!��!:0           � �x� ��!��!:0            W 
3; 9A ހ!�!:0           OU�B#hn .�� 9�� ��!��!:0           de�:h�� ԁ!؁!:0            h=]�� ��!��!:0            �OT ��!��!:0              ǂ!˂!:0            � v} �!��!:0            z/�� ��!��!:0            ��	��� ��!��!:0            � 
28 �!�!:0            
<+/#jo ]�� SX H�� D�� ��!��!:0            � � " %  Ԅ!܄!:0           7 �  ��!��!:0            � K%�� ��!��!:0            q ')�� م!݅!:0            '
7= 2��    ��!��!:0           ���-Kgp $ ��� �� ņ!φ!:0            6 q �,3 ��!��!:0            {-,�� ��!��!:0            � 
X_ ه!݇!:0            i20�� 3�� ��!��!:0            �Bb�� ��!��!:0            �N�� ӈ!׈!:0            � FOU g�� ��!��!:0           jxtz ��!��!:0            �� Љ!ԉ!:0            !(�� ��!��!:0            !:>�� !% ! ��!��!:0           � 'j:dj  ي!ߊ!:0           � D?5�� ��!��!:0            � AK ��!��!:0           �"8�� ! ދ!�!:0           � )�� ��!��!:0            �
C" <�� �� nu ! ��!!:0            A IY�F@�� ��!��!:0            xFN ��!��!:0            YK�� Ӎ!׍!:0            q -+$%Of?D ;��   &�� SX !�� :�� V[ 05 �� KP 7�� >C #�� MR ��!��!*:0            6 � � � ��� w��# &* �� ��!��!:0           � ��
]c �!�!:0            � 6U�� ��!��!:0            Z ( �� ��!��!:0            � 	 NS ns in �� �!�!:0           ��'$!'0 ;�� HQ !�� AJ ��!��!:0           �lp#2 Zd  
 �!��!:0           �m  	'+ ��!��!:0           \^5
>@D ,�� VZ T�� ֒!��!:0             ���� ��!��!:0            N>D ē!ȓ!:0            t �!�!:0            �2��  ��!��!:0           � �54D�� 2: 7��   ��!ǔ!:0             . -23(u T^ GQ !�� N�� # ��!��!:0             6 � ��AF ܕ!��!:0            �nr rv ��!��!:0           ^�� ��!��!:0            ^9�� 
49 w| 
	!& @E ז!�!:0           _ � '�)�� HP ��!��!:0           Xa$(�� җ!֗!:0            f/4 ��!��!:0            � .�� ��!��!:0            �0.�� *�� Ř!˘!:0           � � !&0>*-��  `d ae :�� (�� ��!��!:0           Z � � s��
!�� uz >C ՙ!ݙ!:0           | ��(O�� ��!��!:0            � ��!��!:0            �	$.NPX }� $�� )�� EM �� /�� $�� 7�� �� �� ܚ!�!:0           ��c�@(�+ "�� V�� \f &�� �� ݛ!�!:0             % � c�G	BG�� �� y��  ,9 |� 	)6 -�� DQ W�� ��!Μ!$:0       	     # P � � &����($.I
 	 
9B +�� $- ��   _h 
  	 �� N�� !؝!$:0       	    � 	&�������  Ξ!Ԟ!:0           * +;B ��!��!:0            � �	��� ��!��!:0            � "FJ ˟!ϟ!:0            f2!(x
QNT �� \�� 4�� 9�� �� '�� 
/5 ��� JP JP �!��!&:0       
    � � � 	&��|��"�� ��!��!:0            Ral ��!��!:0            C�� ԡ!ء!:0            0sw ��!��!:0            W	/3 ��!��!:0            DJ IO Ţ!ˢ!:0           <�kr ��!��!:0            l#
 HM ��!��!:0            �#0�� ã!ǣ!:0            �
 �!�!:0            :�� ��!��!:0            gn ��!��!:0            0
! ۤ!ߤ!:0             $- ��!��!:0            0&2.   M��  
 3�� ��!��!:0           4 Y i � S�
*$ "&  3�� py �� ��!��!:0            ; pq�x9��� Q�� ۦ!�!:0           |�x ��� ��!��!:0           k|� 	+4 ��!ǧ!:0           $D �!��!:0            E	 ��!��!:0            U ��!��!:0            !" �!�!:0            5	06 ��!��!:0            v  ��!��!:0            � 1M�� ϩ!ө!:0            �!$4�� -�� ��!��!:0           ��7cj �� ��!��!:0           $.1Za ڪ!ު!:0            2en ��!��!:0            $�� ��!��!:0            iw ˫!ϫ!:0            !#]i lx �!��!:0           9I
7%26 37 +/ !%  $�� ��!��!:0           ����$(M�� �!��!:0            �  ��!��!:0            & ��!í!:0            F'	IS ��  �!�!:0           ';=8K-<+N$
	#/0>&�HK �� 
 	/2 /��  }� B�� L�� R�� >�� d�� BE PS    %�� 7: $' ), 
 47   /�� =@ #�� 
8; cf QT 	,/ 8;  ��!ٮ!H:0            ! J q y � � � � � !/H[^���������'%�� ��!��!:0            ;,�� ��!��!:0            �(�� 7�� tx %�� ʱ!Ա!:0            ` e�&2&�� M�� `�� �� ��!��!:0           i � 8gr ٲ!ݲ!:0            3�� ��!��!:0             	<F ��!��!:0            %ms ʳ!γ!:0            D$�� �!�!:0            $ ��!��!:0            �#�� ��!��!:0            98�� �!�!:0            3*/ ��!��!:0            :1= ��!��!:0            I$- ӵ!׵!:0            "7E ��!��!:0            "8> ��!��!:0            &,W     �� &��             ¶!޶!*:0           �������������	  �!�!:0            -!-5,:&�� +��  15 @�� 	8< )�� 0�� ��!��! :0           � � kp�^�9!2x
PS�� .�� 
38 mr z   ���   !   ty �� ��!��!&:0       
    _ � � <b�|����F8N'20�� M�� @E 16 �� 	49 ,�� ��!��!:0           � � � M���80,�� $�� W�� ��!��!:0            � `! #�� ��!Ż!:0            �?C ��!�!:0            ! ��!��!:0            �  ��!��!:0            & #�� ܼ!�!:0            n(. ��!��!:0            F<
"3(Gq~� %�� 
68 RT  (* JL 
  &( ,. hj } �� ��  �� 3�� I�� ��!ͽ!.:0            � � V���gy{���
828   A�� #' OS JN   ��!��!":0              5 � � ���</�� *�� �!�!:0           < � *9# #E)�� $�� 4�� )�� �� )�� MR 7�� 3�� ��!��! :0            M _ o��]�GK ��!��!:0            �>-2
(+��� 	/3   RV 
^b z~ �� A�� ;�� '��  ]a    |� "�� 	*. z~ 	04  )�� PT 	;? >�� I�� 4��     �� 
 w{ -1 �� 	,0 ��!��!N:0            : ? K � � � � � � KNOqt���������	g���19L,96�� �� $��    CI l�� 9�� ��!��!:0           } � �i���:D ��!��!:0            i ��!��!:0            �  % ��!��!:0            �! ��!��!:0            i{� ��!��!:0            � (%#+!_

 X] !��  <�� 1�� 	"' 
 !& 5��    [` CH ��!��!(:0           L d e f � � � 4r��1 qx ��!��!:0           H� ��!��!:0            GB!
^c hm ,�� /�� =�� ��!��!:0           ��#�� ��!��!:0            9# 
 ��!��!:0            9 �� ��!��!:0            W] ��!��!:0            �

=5af )�� 
 GL &+ 4�� A�� K�� ��!��!:0           � ����*!�� ��!��!:0             
&G8,(<�� a�� *�� �� �� ��!��!:0           8 P � � ��� ��!��!:0            �Co�� ��!��!:0            � 
28 ��!��!:0            �(7N8�� hq q�� 
BK ��!��!:0           d � � �
6@ 6�� ��!��!:0           � [7;�� ��  ��!��!:0           � [\x	��� ��!��!:0            | �� 5�� ��!��!:0            �00�� ��!��!:0            �
 qu ��!��!:0            �hu ��!��!:0            E36 ��!��!:0            �~� ��!��!:0            ] 7�� ��!��!:0            $!�� ��!��!:0            8#`e HM ��!��!:0           39!�� ��!��!:0            
O^ ��!��!:0            O,3 ��!��!:0            O
 ��!��!:0             
7G ��!��!:0            )�� ��!��!:0            ##3 ��!��!:0            #. ��!��!:0            1-�� .7 ��!��!:0           2B
( ��!��!:0            �� ��!��!:0            H�� ��!��!:0            O_k ��!��!:0            I"�� ��!��!:0            R
OX ��!��!:0            6$�� ��!��!:0            1�� ��!��!:0            2 ��!��!:0            8hr ��!��!:0            4  ��!��!:0            @
/3 ��!��!:0            �� ��!��!:0            �� ��!��!:0            '! ��!��!:0            4�� ck em ��!��!:0           FMP3? ��!��!:0            
&+   ��!��!:0           y /1S�� '+ ��!��!:0           } $* ��!��!:0            $	 * ��!��!:0            	JM ��!��!:0            I'�� ��!��!:0            ;	 ��!��!:0            !,�� ��!��!:0            �=:�� F�� ��!��!:0            �	 ��!��!:0            �8#�� ��!��!:0            38/�� ��!��!:0            3# ��!��!:0            O  ��!��!:0            b }� $�� IM rv ��!��!:0            � ^��'O3-�� EK ��� 
4: (�� fl g�� ��!��!:0           m � � '��w'7�� E�� ��!��!:0            �+2�� ,�� ��!��!:0           ^ m$}� 
 *�� ��!��!:0           � p	
.3 lq 8= ��!��!:0           z�]b ��!��!:0            �LL�� ��!��!:0            �,)`e �� ��!��!:0           �1'. ��!��!:0            � 3,1 6�� ��!��!:0            �!*�� =��  ��!��!:0            � J#�� PX ]e ��!��!:0           � I���  �� ��!��!:0           < � -ty ��!��!:0            � G!6?�� N�� BF ��  
 
)- (�� ��!��!:0           P � � ���FL 
 ��!��!:0           o�F
*1 ��!��!:0            � -3$D�� I�� �� PX �� ��!��!:0            a �#�� ��!��!:0            9
 ��!��!:0              ��!��!:0            < ��!��!:0            �'+ �� ��!��!:0           ��el ��!��!:0             ��!��!:0            v�� ��!��!:0            '	P` ��!��!:0            .) & ��!��!:0            1 ��!��!:0            ��� ��!��!:0            H ��!��!:0            I ) ��!��!:0            E/< ��!��!:0            /" - ��!��!:0            R49 ��!��!:0            � 0A�� F�� UY ��!��!:0           ��2F+�� /�� *�� <�� ��!��!:0           �x	O +�� ��!��!:0           o w
 ��!��!:0            �+�� ��!��!:0             MT ��!��!:0            �B#H�� O�� �� ��!��!:0           e�2�� ��!��!:0            +
 ��!��!:0            �<+-�� �� ��!��!:0           � #�� &�� ��!��!:0            ��	��� ��!��!:0            � mr ��!��!:0            ] ,lq #�� �� ��!��!:0           �  ��!��!:0            Ny� ��!��!:0            0  ��!��!:0             -0�� ��!��!:0            pF%�� �� ��!��!:0            � #K2-!2/>o	,0 *�� U�� �� 
:> 7�� '�� �� G�� �� :�� G�� (�� 

 fj ��!��!,:0           f q � � � � �����gn ��!��!:0            � 7< ��!��!:0            ��� ��!��!:0            .!?�� 	27 ��!��!:0           �TZ ��!��!:0            !
IL ��!��!:0            &
29 ��!��!:0             8�� sy OU ��!��!:0           3N8 ��!��!:0            3
=B ��!��!:0            $�� ��!��!:0            d-P�� ��!��!:0             "�� ��!��!:0            RKFA�� >�� ��!��!:0           q �   ��!��!:0              ��!��!:0           � �"�� ��!��!:0            � 4'H�� 
@I ��!��!:0           W ��2$02�� O�� �� gk S�� !% 	=A ��!��!:0            � op���.
-3 [a GM E�� ��!��!:0           � � � �9
+2*L�� CI 
17 �� IO 1�� ��!��!:0           _  4�m;A ��!��!:0            � \` ��!��!:0           ��#�� ��!��!:0            Y ,�� @�� ��!��!:0           � �,TZ ��!��!:0            �!!�� ��!��!:0            dn -7 ��!��!:0           :p~ ��!��!:0            8]l ��!��!:0            D ��!��!:0            N"/:�� ��  �� 
69 Z] EH ��!��!:0           � ���9-1 x| ��!��!:0           T�9(�� ��!��":0            �!$  �� hl ��"��":0           %[b ov  ��"�":0           !*2 �� ��"��":0            �**�� 48 Ł"ˁ":0            K"�� ��"��":0            q #-�� ko ��"��":0           �  ΂"҂":0            � 1pz  �"��":0           ��GOS �� 6�� ��"��":0           t�'* &) ڃ"��":0           <  OS +�� jn ��"��":0           ��*2(x} O�� fk hm  2�� ��"̈́":0             N 
o(!0':3@@�� 	DK !�� 6��   qx   D�� )�� ��"��"":0           % ~ � � 
Lh{$(; ��"��":0            	 ��"":0            
N29&2[�� z�� <@ ae X�� M�� D�� �"�":0           � E���2  ć"ȇ":0            �O3x,
 jn '�� im $( w{ ��� �"�":0           � w{|>&%* 
27 	 ��"Ȉ":0           ���
� 
 >C 
:? ��"��":0           }� ��"��":0            �+2�� ݉"�":0            .*�� dl ��"��":0           X h &8�� ��"��":0            i  ܊"��":0            = $"�� ��"��":0            '�� ��"��":0            �p{ ϋ"Ӌ":0            �� �"��":0            #�� ��"��":0            %2  "ƌ":0            o"37 �"�":0            � x	��	�	 ��"��":0            |��   ��"��":0           F82.cg CG IM �� <�� "& bf �"��":0           � � � � � 0N- �� "�� �� ʎ"Ҏ":0           6 ] � �� GL ��"��":0           ��~� ď"ȏ":0            � /8 �"�":0            & %3 ��"��":0            j-E�� ��"��":0            6 ~� ې"ߐ":0            --$�� $ 2�� ��"��":0           6 z �x!�� p�� ��"đ":0           j|Y_ �"��":0            )v~ ��"��":0            J$  ��"��":0           ��  �"�":0            ��� ��"��":0            x} ��"��":0            6�� ۓ"ߓ":0            %�� 
 ��"��":0           NQ,%�� ��"��":0            �"$�� TW ڔ"��":0           R
,
'.�� *�� &) 
`c y| �� 	 ��"��":0           ���;H	=F �"�":0            (Uc ��"��":0            ) �� �� ��"��":0           AHO�� �"�":0            O# ��"��":0            =��  ��"��":0           7H)#�� �"�":0            J' �� ��"��":0            ;X^ ��"��":0            I�� ߘ"�":0             " �� ��"��":0           R �� ��"��":0             ޙ"�":0            	HW ��"��":0            -'	MV ��"��":0            ;)*- 14 ͚"Ӛ":0           %1IP ��"��":0            K	��� ��"��":0            q #$/�� �� ag ɛ"ћ":0           f n �C #�� ��"��":0            � \a ��"��":0            ,4�� ܜ"��":0            �
  -8 '�� p{ U` ju ��"��":0           + , > ez	" ҝ"֝":0            �AG �� ��"��":0           ���E�� ��"��":0            �  	 О"Ԟ":0            '.�� ��"��":0            � (:=,2 	 t} %�� �� �� DM :�� ��"��":0           R ] ` � � ��		F. M[  �� H�� $ iw ��"��":0           V � � � � � k�� �"�":0            .
	&B$GR ;�� 9D /�� �� ��"��":0           V h w e�� 
 P\ �"�":0           p � '�� ��"��":0            c�
CH ��"Ƣ":0            � <4�� �"�":0            � *	4#	N!
-	BO!�6?  	 09 # 
@I !* +4 �� NW  
2; ��  1: " (1 }� % ( u�� 2�� ��"��"::0            9 D W f r � � � � s��ew�9M�� ��"��":0            27F%/ ^�� @J ]g ��"��":0           � Ix+�� �"��":0            -5@	> EL g�� +2 
 mt    
'. pw ��"��"$:0       	        o � /���=�� ��"��":0            � ��"ħ":0            �.� �� ��� KS �"�":0           X � �(�� ��"��":0            �:F +�� ˨"Ѩ":0           C i	[h ��"��":0            #
;C ��"��":0            s �� Ʃ"ʩ":0            u 7+�� ��"�":0            $:2?#..P�� 9�� �� �� U��  ��"��":0           � o����Fx�� N�� ��� ��"��":0           vx|.2aj ,5 {� ��"��":0           X No�� �"�":0            �hp ��"��":0            y
G+6�� @�� V�� �� �� ;�� �� ��"Ǭ":0           P � []��'#%��
�
 /�� ;�� %. t} ��"��":0           � ����1JT ��"��":0            �#�� ��"��":0            ��� ��"Ů":0            � 58#,7 M��  �� E��  �"�":0            � � �3eq ��"��":0            ��� ۯ"߯":0            N",�� ��"��":0            � 
F!:$e�� $�� 
6A $/ �� ��"��":0           � � )�h" ��"��":0            � 0?) 	,1 9> 
 $ ;@ T�� ��"��":0           � � `�w~ ��"��":0            � 	>	  �� X�� " ��"��":0           G��
F# &  ,�� \e 
.7 ܲ"�":0            � x�KU ��"��":0            y#�� г"Գ":0            �	6?H8B #�� NX �� �� \�� �� %��  
 \�� ��"��" :0           l � � XZ���:K�� ��"��":0            h'GO  C��  ��"��":0           [  �"�":0            � 2*�� ��"��":0            o9 ��"��":0            2
q| Ҷ"ֶ":0            "4"F?c0�� Z�� �� �� �� KV 
 (3 OZ �� 8�� -8 :E W�� ��"��"*:0            W � � � ku�lxy�� kv 0�� ��"��":0            �w ո"ٸ":0            !�	��
�
 ��"��":0            � 4$&*GU �� , ��   �� ��"��":0           W jnp��<H ��"��":0            H  ��"��":0            $:$�� ʺ"κ":0            � : �� �"��":0            � 0R�� )1 ��"��":0           � +9  #�� λ"Ի":0           � 2+B�� ��"��":0            � 
+83"I�� 	 HQ cl (�� ��"��":0           � � � <{F'�� ��"��":0            x ��"��":0            ~0_d hm ý"ɽ":0           `�0'�� �"��":0            `0*�� ��"��":0            `C$* !�� 	 ns �� /�� ��"ξ":0           � � DEbp54F�� 9�� D�� ��"��":0               ׿"ݿ":0           G/% # 

 .6 
T\ $  !) ��"��":0           !"0:C)  ��"��":0           JO�� ��"��":0            "
;E =G �� ��"��":0           !-R5? z� ��"��":0           ,-/: v�  ��"��":0           %087�� ��"��":0            3 ��"��":0            +F}�� ��"��":0            x?E ��"��":0            y �� ��"��":0            bOKQ *�� ,�� %�� ��"��":0           � ��w ��"��":0            g  ��"��":0            � z� ��"��":0            �?�� RY *�� ��"��":0            �* %�� ��"��":0            �$?G2�� �� ��� ��"��":0           ' ��#>G ��"��":0            B �� +�� ��"��":0            < �� ��"��":0            { /-9&2 x,=d:�� V] '�� �� 5�� 7> �� ")  
9@ �� �� ah (�� ��"��",:0             _ � �����z|��-Z�� ��"��":0            p?&�� ��"��":0            �&�� ! ��"��":0           � ��"��":0            R		.N"  �� ��  + 
 s~  DO 2�� L�� �� ��"��" :0             E G ����(#�� ��"��":0            d +P\ ��"��":0            4< # "�� ��"��":0           k ��+y� ��"��":0            v| TZ ��"��":0           � �(=�� Xa ��"��":0           	�BC�� ��"��":0            e	#- ��"��":0            Gy� 8@ ��"��":0           P�iu CO ". |� ��"��":0           � ��Xa ��"��":0            �<U�� 	08 Zb BJ ��"��":0           � ��	7�� � ' ��"��":0            �	 ��"��":0            :F,3�� i�� ox V_ �� #�� ��"��":0           � � � l��
:F!+W�� Z�� ]�� 7A 0�� V` ��"��":0           � � � )�$(3 ��"��":0            fFa�� ��"��":0            xF&G�� �� rz ��"��":0           � ���� ��"��":0            �08�� K�� ��"��":0            `4.�� ]e �� �� ��"��":0            W X ?%�� ��"��":0            �&�� ��"��":0            �%DP ��"��":0             2=�� ��"��":0            �  	 ��"��":0           <�hs ��"��":0            .�� 5�� ��"��":0           7 ��� ��"��":0             &NX ��"��":0            8 4$+T�� *�� gr ?�� ��"��":0            ' O]F�� e�� ��"��":0           �x
@J ��"��":0            k5�� ��"��":0            g23�� ��"��":0            �  	 �� ��"��":0            �  ��"��":0            � 0:�� [a ��"��":0           � 
AN ��"��":0             ��"��":0            !sz ��"��":0            ��� ��"��":0            � �� %�� ��"��":0           �]@",4 �� ��"��":0             f"x� ��"��":0             ��"��":0            � 4.F	x!_�� )�� )+ CE   
/1 .�� G�� eg -�� 6�� l�� '�� 8�� ��"��":0           W X � jx|�%�� ��"��":0             [e ��"��":0            #�� z} ��"��":0            9)�� ��"��":0            J ��"��":0            �
-.8 RY FM x  gn u|  '�� ��"��"":0           > ~ ������#2& 
6= &��  ��"��":0           B ���
!"�� dl (�� V^  ��"��":0           )+�u�1�� ��"��":0            �
5 	 -6 	4= &�� '0 ��"��":0           : z ^�(SW � N�� ��"��":0            �F �� ��"��":0            x2>! G�� B�� LR ��"��":0           m � �4= ��"��":0            O�� ��"��":0            ( gn ��"��":0            '�� ��"��":0            ;|� ��"��":0            :'@M #0 >K 
*7 jw ��"��":0           8;L"2	04 ��"��":0            � 
EN   ��"��":0           � � 
 
$. ��"��":0           I � 8Q�� ��"��":0            � $
! (-+.�KQ   tz �� " z� &�� 	+1   �� gm L��   $ �� " $�� J�� �� 	+1 ��"��"4:0            H � � � � ��������)(WZ $' �� ��   ��"��":0           !EJL	
  	5; 
FL ��"��":0            
T\ ��"��":0            '
27 ��"��":0            GO ��"��":0            .1
  cg ��"��":0            2 ��"��":0            7 {� # ��"��":0            
 ��"��":0            D   IT   ��"��":0           )/
7"$      >J   ��"��":0           $EIR ��"��":0            $  ��"��":0            >ns ��"��":0            7  ��"��":0            M"  ��"��":0            R�� ��"��":0            7	
" " ��"��":0           ��$,	 71)"!�8=  #( 	PU 6; V[ �� &�� 4�� */ &+ 
JO W\ �� &��  �� �� �� ns ��"��"4:0           ����$27>CJKOR%1$y� #�� ��"��":0           2 ��"��":0            B
)1$nq �� !�� ��  ��"��":0           '*127w{ ��"��":0            	Q\ ��"��":0            ,28 ��"��":0            � ��"��":0            �T^ ��"��":0            �	
   ��"��":0           ���"�� ��"��":0            R"
[f ��"��":0            R)�� ��"��":0            J)�� ��"��":0            1-#�� 3�� >�� ��"��":0           M � +
=C /�� ��"��":0            8< ��"��":0             	   ��"��":0            G-E�� ��"��":0            N1K�� a�� }�� !�� �� 
*4 lv ��"��":0           � �i	,0 ��"��":0            
(CF #& 0�� ux #��  ��"��":0           U c b�b
 ��"��":0            i# ��"��":0            9#��   ��"��":0           � �mt ��"��":0            �	5= ��"��":0            	  ��"��":0           ��+D�� ��"��":0            N ��"��":0            � /4 ��"��":0            @*1(	+
(	"2
�<�� @D 	$( 
-1 �� ;�� 
37  ]a  �� �� sw 
 8< %) KO 9= 
	(, hl QU !�� ;? sw { �� "��   JN '�� -1  ��  ��"��"P:0            E G O m } � � � � 	;EIQ]_bg�����o���:? ��"��":0            D7)
;!�� 
	5: Z_ 
# 
MR KP 
	 $ .3 @E ��"��":0           $4J$8,2 ��#��#:0            3:-�� ��  �� Ȁ#΀#:0           � � 1�� ��#��#:0            2"�� ��#��#:0            R)'0 Ё#ԁ#:0            17� ��#��#:0            $u� ��#��#:0            F$�� $�� ��#ł#:0            #
U\ �#�#:0            9�� ��#��#:0            (�� ��#��#:0            H7)9 �#�#:0            $$8C {� ��#��#:0           )9J ��#��#:0            J#3? �� ܄#��#:0            91�� (  /   ��#��#:0           2>?A *6 ͅ#х#:0            v� �#��#:0            /06 ��#��#:0            #"!�� ��#��#:0            R#' �#�#:0            9	@H ��#��#:0            &,(�� ��#��#:0            �/7 Շ#ه#:0              "i=A 	-1 04 |�   .�� ��     
 	-1       $�� %�� ��#��#0:0           
   � � � � � � � .Def�0$�� [b ho ��#Ɖ#:0           � � !F3Bm�� _d G�� [�� ��#��#:0           � ��7: ��#��#:0            �7x~ �#�#:0            $!UZ 	ej ��#��#:0           5
Xc IT ��#��#:0           8DU\ �#�#:0            :
:B ��#��#:0            	U] ��#��#:0            "#  	  	 Ԍ#܌#:0           8)��  	 ��#��#:0           1K#�� V] ��#č#:0           9N2= �#�#:0            >Ci�� ��#��#:0            A 	@E ��#��#:0            7dl ��#�#:0            )98(02F  [�� 3��    HK @�� �� �� ��#��#$:0       	      _ � � � �`jo"4< B�� ��#��#:0           
<@ RV �� ��#Ő#:0           � �	 ��#��#:0            G713 �� �� ��#��#:0           !$/GBk�� q�� ב#ݑ#:0           P eB+�� ��#��#:0            e ��#��#:0            E#�� ֒#ڒ#:0            9�� ��#��#:0             ', ��#��#:0            N!) ɓ#͓#:0            P%#
�-2;
*. @�� PT  ,�� Y�� 	+/   �#��# :0            e f � � p��', 8= �#�#:0           g�)�� ��#��#:0            11
 -2 UZ   ��#ŕ#:0           2CP81�� ��#��#:0            3)5@ ��#��#:0            1"�� u ʖ#Ж#:0           0R8�� ��#��#:0            31!0��   �� )1  qy �� ��#��#:0           (.2>AN
AI ��#��#:0            H
8#'�� Y` @G �� 07 -4 ��#��#:0           369?Q�� ��#��#:0            *?G ��#��#:0            F�� Й#ԙ#:0            . !

#-
+03x�(�� ei W[ ��  
15 "�� %�� =�� uy 
 qu �� EI  
 <@ 48 "��   
 X\ 8�� # ��  C��  cg ��#��#>:0            ! @ � � � � � )3Q\_e��
`{|� !'#>6:�� $��  V] GN 
29 C�� fm ��#��# :0           � v���	'
0M R[ {� cl J��  U^  # NW �� '�� ��#��#$:0       	    � � � (�`�!x!G# �� )��  ��  ��	�	 
', %* 2�� ��##$:0       	    < � � � ��|���!*�� �� IN ��#��#:0           �  �%* �#��#:0            �,OU �� )�� ��#��#:0            �  ˠ#Ϡ#:0            0'�� �#��#:0            ; 
	*0 OU ��#��#:0           HL
(0 AI ˡ#ϡ#:0            I7�� ��#��#:0            $
 ��#��#:0            L  ��#Ţ#:0            ?'=K �#�#:0            ;'�� ��#��#:0            ;#�� ��#��#:0            99A ٣#ݣ#:0            A�� ��#��#:0            1�� ��#��#:0            2R[ ̤#Ф#:0            (!�� �#��#:0             �� ��#��#:0             "   �� ��#ǥ#:0           RLS ��#��#:0            !

IT ��#��#:0            1) Ħ#Ȧ#:0            2[h �#��#:0            F	
 ��#��#:0             ]c ��#��#:0           ):)9 �#�#:0            K	  ��#��#:0            "	SZ ��#��#:0            R Ѩ#ը#:0            ?!=N ��#��#:0            gn ��#��#:0            O$& ��#ĩ#:0            wO') �#�#:0            wO  J�� ��#��#:0            w " ��#��#:0            �QY ۪#ߪ#:0            7  �� ��#��#:0           d	 ��#��#:0            z 9	+.u8��  iq O�� �� qy S[ @H $,  7? $�� +�� ��  
 "* 
-5 ֫#��#.:0           2B����������)9	
2!�� 
6? 	 $ 	8A \e hq NW ��#��# :0           2�	
xC�� ��#��#:0            |5%
83�� IN QV �� *�� (�� DI LQ ��#Ȯ# :0            ( 0 H e h � �-"Q�� � QW �� ��#��#:0           6 a p f

 OS 26 5��  	"& �#��#:0           }���*9H�� !�� ��#ư#:0            220	   -�� T�� �#��#:0           m � o�$-1$,U!�� 5�� F�� E�� `e �� /�� 8�� :�� )�� <�� ��#б#$:0       	     ' 6 } !'vfg�Y_ Ҳ#ֲ#:0            
-3 ��#��#:0            � �� ��#��#:0            ) HO ó#ǳ#:0            � OCH �� �� �#�#:0           �wem ��#��#:0            �! OS Ŵ#˴#:0           � HN ��#��#:0            � 	L%�� �� )�� H�� g�� ��#��#:0           Y�	 $�� �#�#:0           � �  ��#��#:0            �   ��#��#:0            \ (K	)	>�!	16 }� -�� f�� ��� 05 �� ~� :�� (-    "�� ot   ch ��  �� $�� 
	49 ^c 
 
5:  
/4 hm 
38 8�� @E ܶ#��#8:0           q r s �  B���������
-(>$�� �� bi -��   ��#��#:0           � 	1��K(		\q�� LT " nv  �� S�� T�� X��   CK +3  AI ܹ#��#(:0           q s � 1����4 3CS�� �� 	 DI X]   ��   '�� */ ��#��#":0           W � ��yz{�& 
 	 27 ��#��#:0           �AG ȼ#̼#:0            O/<�� EL  ��#��#:0            � �*		AE 
	26 Y] 
 
'+ ��#��#:0            j��
,/ LO �#��#:0            �(  <��  ��#��#:0           % 5"�� о#Ծ#:0            � z~ ��#��#:0            lt ��#��#:0            M  ��#ſ#:0            �  <2�dh  !�� ~� &�� '��  	.2 !�� hl >�� �� ,�� 
(, +�� '+  	-1 M�� ,�� �#��#0:0            - O T [ � � +IOb��m�	JQ Za ��#��#:0           r 1&-7:�� +�� z} kn 	 
,/ X�� }� ��#��# :0           8 m � LV^p�9/6   ��#��#:0           _ �$�� JO lq ��#��#:0           0 p@. �� Y_ ��#��#:0             X .-�� ��#��#:0            �2#!* 5�� ( ��#��#:0           � ��
)+?%{� 5�� /�� &�� t{ ��#��#:0           � ]�	 ��#��#:0            �04 ��#��#:0            1
JN <@   ��#��#:0           T�1
$) 	-2 ��#��#:0           ] } K'�� ��#��#:0            q >/K-!2	+00?,#B	�'��  CG '��   
37 v��   :�� 8�� 9�� _�� bf  26 im {  
.2 KO  P��  NR )�� N�� 8�� NR �� 26 J�� +/  ��#��#N:0             " / J b q � � � � B]^o����`v��������4L��  �� ��#��#:0            [G+0T�� HN ��  �� $ nt ��#��#:0           P w y � +g�,/�� ��#��#:0            �G6,+#�� D�� O�� HM ~� �� ��#��#:0           P �Z�
-+)6+�� ,�� 
3: cj "�� L�� ��#��#:0           * 6 � Z
0B!�� _c EI CG  4�� C�� I�� 9=  ��#��# :0            � � ����Ct�� ��#��#:0            � 
"  �� mr �� ��#��#:0           � � � � � x| 6�� ��#��#:0           ? ] ��#��#:0             ��#��#:0                ��#��#:0            OT ��#��#:0            96�� ��#��#:0            2
9F+�  � (�� E�� k�� ��#��#:0           2���x"6
6< fl  
>D MS V\  "�� v| ��#��#:0           ���QZ ��#��#:0            LU ��#��#:0            �1-G.D�� )�� D�� y $�� ci �� A�� R�� ��#��#":0            M } � � �r��$G  uy J�� ��#��#:0           mf�
5: ��#��#:0            H   8: 4�� ��#��#:0           yz"NB2$OF3!!#&�im $�� ^�� # 	6: F�� T�� B�� ,��  	*. E�� K�� |�� $�� T�� w��   /�� 	 �� '+ gk 1��  w{ >B �� ��#��#2:0           [ � aeopwxy{�����  Z` ��  ��#��#:0           yz ��#��#:0            �(0�� /�� %* ,�� <A MR 	/4 ��#��#:0             ����"�� ��#��#:0            f") ��#��#:0            �  $]e $ 5�� ��#��#:0           � � �1OF3* !�� " w�� IL O�� ��#��#:0           h } � wx{O3h�� G�� ��#��#:0           w{ CJ ��#��#:0           �:!�� lq �� ��#��#:0           � ��� ��#��#:0            �
x>'��   �� ��� [�� ��#��#:0           
 g � |��� ��#��#:0            m 4K!03GV_c 	04  y}   (�� @D   �� C�� ~�� ei ��#��#*:0            H q | � � )������
2  A�� ms  
 ��#��#:0           I � Im�
3: ��#��#:0            m -+2029��   >B 
-1 >�� �� .�� ��#��#:0           � /]��`0�� ��#��#:0            `<9c�� �� KR ��#��#:0           � � �	-2 	+0  % ��#��#:0           b ��1'��  &�� 8�� ��#��#:0           ���!( ��#��#:0            Y UY ��#��#:0            � �� ��#��#:0            � 	 ��#��#:0            *6 ! -�� *�� ��#��#:0           Z] #TX $�� ��#��#:0           ]�5B�� <�� 2�� ��#��#:0           � ^e)0&�� +�� �� \_ ;> #& !$ ��#��#:0           I�	" ��#��#:0            , =.#& | �� \_ �� 9< ps ��#��#:0           � �z����(.�� ��#��#:0            d 		(+ ��#��#:0            � #�� �� ��#��#:0           t��� "�� ��#��#:0            �V[ ��#��#:0            � ,3 ��#��#:0            < ��#��#:0            �	6	&x?G}3�� 3: �� *�� 6�� -4 �� &�� :�� fm T[ ;�� Y�� ~�� $�� '. #�� ��� ��#��# :0           @ Zrst|��26 2&x.]M�� �� ]�� $�� 	9A  4��  
5= �� %�� ?G �� ��#��#(:0           �Z]orstu|��@-.<
:T]a (�� 6�� 0�� GK 
9= g�� +/  ei �� !�� ��#��#(:0               6 L X � � � t�h>F ��#��#:0            [ !*  ��#��#:0           ��� ��#��#:0            L *nw ��#��#:0             w~ ��#��#:0            �
 $) ��#��#:0            !
&:*��  @D  �� im  48 	%) W[ ��#��#":0           ) E � ��}��	�� ��#��#:0            �KS /7 ��#��#:0           E G 
(%2$�� 
:B (�� '��  ��#��#:0           @ d e � n(#�� ��#��#:0            	}� ��#��#:0            �46�� ��#��#:0            W 0�� ��#��#:0            �	)&
/# Q\ �� 5�� .�� )�� P[ ��#��#:0           #s��(z ��#��#:0            ` Z/	5CG<
!(+
-/$2O9,B�A�� TX ?�� .�� im `d &�� !�� 04 J��     LP (�� �� TX �� *�� ;?  �� fj y} 4�� >B bf ��  ��    
 Y]    �� #�� ?C  4�� DH �� ,�� J�� =A 1�� 2��  �� &��   cg 9�� D��  ��#��#j:0       ,        # ) A C P ] � � � � � � � 	 &[]_e��������Sfmw�����px �� ��#��#:0            0 #�� � ��#��#:0           0 N
#B9&+ .�� =�� �� "�� 
DI NS  �� ��#��#:0           1 M � !T��54)"/"h E�� &�� rx 	7= "�� $�� �� \b jp   	 7= L�� 3�� ��#��#.:0             @ O t � fk���L	��� ��#��#:0            �$�� ��#��#:0            p-
BL ��#��#:0             �� 
 ��#��#:0           
 � s{ ��#��#:0            H |� �� ��#��#:0           B�#25�� '�� ! ��#��#:0           B m�8�� ��#��#:0            3@@F F�� " V\ ��#��#:0              � �)1 ��#��#:0            �P#G.((%#&""
/&x(
?>&�  �� " TX #�� 1�� HL �� 3�� y}   �� 7��   �� 	 �� �� ��   	*.  �� $( >B 
15 VZ  (�� *�� # #�� z~ K�� ! C�� EI �� �� !�� JN ~� 0�� `�� +�� ��#��#`:0       '    $ B P X ` d e f i � � � � � ALPWf��TXaisv|���������FE�� ��$��$:0            �  ɂ$͂$:0            ! �$�$:0            �97�� ��$��$:0            _ 
V\ MS ��$��$:0           � � -4 $ �$�$:0           ��(,1*+�� /�� D�� # ! 1�� ��$��$:0           ` ���
$ NS �$�$:0            $�� /�� ��$��$:0            ��� Ņ$Ʌ$:0            {  w� �$�$:0           { �
	!"  �� ]c 	 �� ��$��$:0           9����)F�� �$�$:0              ��$��$:0             N7�� ��$��$:0            � 
,�� 
5< ��$�$:0           Y �5$-#G�9+-2F(?,�JM 7�� M�� �� �� �� C�� �� +. 14 ,�� T��   ad '�� 3�� (+ 	:= ?B 0�� 
47 VY %�� 0�� �� *�� DG  ��$Ȉ$D:0            ' 6 7 B P � � � 2<]pt��mx������v{ lq �$�$:0           o2
( ,��  9�� ��$��$:0           L � ��(&�� hr mw ׋$ߋ$:0           	��%- ��$��$:0            �&5@-C)(6 3 �sx  �� c�� 6�� jo #�� J�� d�� ]b MR -2   A�� @��  y~ KP �� 	  ��$ߌ$6:0               6 H � � #����Z]t{���kp %�� ��$��$:0           � � L   .5 r�� �$�$:0           � � ��	(0  ( ��$��$:0           ��&  Yd '��  ܏$�$:0           ����� $�� 	/; 
(4 ��$��$:0           � ���# 
 nv :�� �$�$:0           � � �! ��$��$:0            s CBG=/ $   &�� 0�� J�� ȑ$֑$:0           A �e����	��� ��$��$:0            �  Ӓ$ג$:0            :> ��$��$:0            Y�� bi qx ��$��$:0             ,@E [` ؓ$ޓ$:0           ���� ��$��$:0            (&!!�� "�� 

=C u{ 
 ��$��$:0           
 8 @ (4�� 	/6 .�� ��$��$:0           % ,
'/ ��$��$:0            	@F 	'- 0�� ܕ$�$:0           `~r�� )�� ��$��$:0            	(1 Ŗ$ɖ$:0            � /�� �$�$:0            � !"�� ��$��$:0            Z   ,�� ��$��$:0            � �$�$:0            �+"& ��$��$:0            
4,8N�� 	&+ 
  Y^ '��  gl $�� ��$��$:0            E G ��IO �� ��$��$:0           H d&�� ƙ$ʙ$:0            �9C y� �$�$:0            "7�� ��$��$:0            $	#:D �� ��$Ś$:0           �9$ �$��$:0            *
J\ ��$��$:0            *�� ��$��$:0            7KO  �$�$:0           ��:� & K% 	-4 S�� x�� 	,3 �� +�� 0�� LS }� 	 ��$��$":0             � � � ]l�  ��$��$:0            � � #B��� QY �� &�� 1�� �� 
2: �� �� ��$ϝ$:0           � � � ����m�� ��	�	 ��
�
 ��$��$:0            � +/ �$�$:0            �
?(0  G�� I�� ��$��$:0           TU�$	'6r    & qw ag �� FL �� kq 
  (. !��  4:  Z` ՟$��$4:0           � � � � G�Z������  ��$��$:0            �<"JQ <�� W^ ϡ$ס$:0           � � f ��$��$:0            �	:@ (.  +�� ��$��$:0           ����>!\c  QX �� :�� ��$��$:0           / ��� �� ��$ģ$:0            {� �$�$:0            � nu ��$��$:0            %FMU ��$��$:0            � !	)5 �� :F _k 1�� פ$�$:0           � � � � <"+/W��   LY �� 2��   ��$��$:0           � � � � � � 552�N+2(9 
�1�� fk Y^ 
UZ w|  ��� \a V[ ]�� Z_  �� �� bg "' "�� -�� in �� 
	 ns   �� B�� �� SX gl 	 ��$��$D:0            g � � � � � � �  ,E]eh����m�����C ' ̨$Ш$:0            A #  �$��$:0           � � 8F�� X�� �� ��$��$:0           � �  ک$ީ$:0            �!�� ��$��$:0            �CO ��$��$:0            ��� ˪$Ϫ$:0            { 
9+�� �� '�� 8�� 
-1 
48 �$��$:0           � � 2[�%+2 ̫$Ы$:0             gn  !�� �$��$:0           � � �
# HO ��$��$:0           / �
 _e ۬$�$:0           V�&	,/
PW gn @�� \c (/ G�� �� ��$��$:0            8 9 N ��%�� �$�$:0            �  ��$��$:0            �� ��$��$:0            7 
 �� ߮$�$:0           uc2F�� ��$��$:0            �1�� ��$��$:0            �,{� �� ޯ$�$:0           ���� ��$��$:0            � GN  ��$��$:0           2 t �K(54�� �� % 
  W_ 	4< " 4�� �$��$:0           q s t � %�� �� ܱ$�$:0            � x� ��$��$:0            A�� ��$��$:0            �ou в$Բ$:0            0
  ��$��$:0            �O?�� ��$��$:0            w'  ��$ų$:0            ��� �$�$:0            :x�� M�� ��$��$:0           � |   ��$ƴ$:0           � �      �$��$:0           � � �)B9HL �� ��  �� �� :�� nr  ��$��$:0           " #�dei
0)!& (�� K�� '��  BG ��$��$:0           w � � � �"8? �$��$:0            � 95$�� K�� ��$��$:0           2^&�� ȷ$̷$:0            �+.�� �$�$:0            1: ��$��$:0            �sy % �� DJ ��$Ÿ$:0           +�+2 cj �� Za ��$��$:0           .xEM ��$��$:0            � 2>�� �$�$:0            � G)uz (�� ��$��$:0           P & ��$��$:0            � �>��� 	/6 1�� ݺ$�$:0           � ��&� ��$��$:0            s:>&&V�� P��  
  0: IS »$̻$:0           � ���#�� ��$��$:0            �TY 
(- 6�� ��$¼$:0           �pv 7�� ��$��$:0           tg-�� ��$��$:0            �
	 ͽ$ѽ$:0            8K�� �$��$:0            � 
BH ��$��$:0            
�� ��$¾$:0            �";�� �$�$:0            	�"HL ��� " cg ��$��$:0            � f�QV ӿ$׿$:0            � xD�� O��  ��$��$:0           |�.�� ��$��$:0            �0-
NC
'
%$>#� LP W[ X�� #' { vz ! A�� q�� !% 6��  TX AE CG gk  nr 6�� 5�� ��  �� ��$��$@:0            T w � � � � � � � � HTo���� p��!
jt PZ ��$��$:0           # ��$��$:0            :!�� ��$��$:0            �% ��$��$:0             @&.N9/B!G�� �� 2�� 	*2 $�� &�� T\ IQ {� KS ��$��$$:0       	      8 X a � 2e��1	+5 ��$��$:0            �"%�� ��$��$:0            "
(r  $ �� ei #  ��  gk # ��  �� pt   0�� 7�� mq ��$��$2:0            + < ] k v � � =ox�[�
 ��$��$:0            �� ��$��$:0            	AI U] �� ��$��$:0            	09  	 ��$��$:0            ��$��$:0               
 
^c ��$��$:0           !"�� ��$��$:0            M /2 ��$��$:0            � *F ��$��$:0            � 		<N ��$��$:0            � p{ ��$��$:0            :;> ��$��$:0            *C/ %�� H�� a�� 
 ab #�� ��$��$:0           Q � Q�-%�� ��$��$:0            p:> ��$��$:0            b 	4.1- ~ %�� B�� M�� $�� 8�� =�� "�� +�� 0�� 
(, ko CG !  
 ?C <@ �� ��$��$&:0       
    W X } � � � � ��� % ��$��$:0            � 	-(GN
 x}  -2 \a 	5:   	+0 �� �� '�� X�� ��$��$$:0       	    � � � � � � � � 	�-S�� rx 
 ��$��$:0           � � �"! ��$��$:0            8!+�� tz  ��$��$:0           37x"�� ��$��$:0            |&(�� �� ��$��$:0           8 c'F�� ��$��$:0            �� ��$��$:0             24�� ��$��$:0            �29C 7�� ��$��$:0           ��)18')	!]
') 	HJ    �� �� �� 24 &��   46 *,  ��  ��$��$*:0           &1234;JN(	*. =�� ��$��$:0           � �!$IP *�� ��$��$:0           ���� *�� ��$��$:0            < !(�� N�� �� ��$��$:0           �q

$#�� �� &�� %. nw ��$��$:0            u � c�@E pu ��$��$:0           */�� ��$��$:0            7j@C!(%#K-F!(
	2x �W�� (�� Q�� ��  "& &�� 1�� bf }� d��  
-1 Y] G�� FJ y�� UY �� (�� NR 9= IM MQ !�� �� ^b SW 
	.2 ^b �� !% 48  "��  
CG tx 	 " rv im   
>B EI  �� !��   # =��  �� �� �� FJ 	:> 	#' ��$��$z:0       4      A M Z d e f h q � � � � � � � � � � � 	
"$<=WZbel{������	m|����F?1�� !' �� :�� HN X�� nt ��$��$:0            �vx��mt ��$��$:0            Q"(!F+)&	!r�� $) ,�� .�� JO �� Y^  MR in �� sx bg gl 
=B 
7< -�� ��$��$2:0           d � � � � � ,cs�����1 �� ��$��$:0            } " �� ��$��$:0            R&ak ��$��$:0            i 
V] ��$��$:0            �"�  ��$��$:0           � � gn ��$��$:0            �  417! 2x($>�sz fm RY �� "�� W�� 
 	29 sz =D !�� 5�� 9@ <�� �� H�� i�� :��  4�� �� J�� "�� ��$��$0:0           W m n } � � �]_o|����  ��$��$:0            �x� ��$��$:0            �27�� ��$��$:0            o2FN @�� ��$��$:0            o-&+ di TY <�� ��$��$:0           H � Z&#�� ��$��$:0            �V/-8N()+2	B: 39,	G=.�8�� lo 0�� cf SV VY ! #& !=@ !�� &�� I�� `�� _b #?�� G�� `�� h�� n��  wz /��  &�� 0�� sv @��    UX <? fi ��  *�� 47 JM CF 
25 X�� _�� &OR ux �� )�� =�� G�� GJ ?�� WZ &) }� \_ E�� 	kn I�� J�� +. ,�� *�� #��  ��$��$f:0       *       > ? C � � � � 	#+O]�����Xdehz{����������	)�� ��$��$:0            )4�� ��$��$:0            �� ��$��$:0            �*�� ��$��$:0             (!(+
"30\Y]  hl +�� .�� ^b +��  >B   �� Y] 	)- ��$��$,:0            ` v 	]_�{��	  ��$��$:0            � @E ��$��$:0            �$* ��$��$:0            7?�� :>  ��$��$:0           � 
4; ��$��$:0            �472=�� +0 #�� %�� 1�� G�� \�� ��$��$:0           W n � )=�� ��$��$:0            af ��$��$:0            �~� ��$��$:0            �28U�� X[ %�� �� }� *�� LO AD ��$��$:0           � co����9(�� ��$��$:0            2�� ��$��$:0            ��� ��$��$:0            �:3�� ��$��$:0            hpv %�� ��$��$:0           + �
!L$ ( (�� ]e �� �� ��$��$:0           $I���(52�� ! Q�� �� ��$��$:0           d � ^oC ^f 5�� ��$��$:0            � F\�� ��$��$:0            x!3�� ��$��$:0            Z 	55

5< cj   
*1 QX 
 & ;B �� ��$��$:0           � 0j��^�� Z` ��$��$:0           d.D�� ��$��$:0            X .0�� ��$��$:0            �bh ��$��$:0            5 �� ��$��$:0            7 .�� #�� ��$��$:0           { �!9:    
58 qt !�� TW VY �� #�� ��$��$:0           Z _ | v��6�� ��$��$:0            h $-�� .�� ��$��$:0           �-CG!%2C
%6#qR�� �� X�� <B +�� 7�� #) (�� io '- 	9? 
:@ B�� (�� MS �� ��$��$.:0           6 A P Z e � � � -s� Z��2-�� 8��  ��$��$:0           ���9W�� ��$��$:0            _ C,8)r \] 4�� G�� `�� �� 23 .�� XY => �� ?@ 	KL 
() MN 
ST +,  ��$��$(:0           � �)34FIJLPQ 9(%#
!��� c��  "�� -�� �� %�� gm �� 
# <B fl HN BH 
 ��   :@ ,�� ��$��$0:0           _ ` e f p { � � � � MQ��� ��$��$:0             #.!V*�� /�� �� 	*1  ,�� RY 
 el   �� BI ;B ��$��$&:0       
    B X Y Z � � &QZ�7�� ��$��$:0            � 9/�� ��$��$:0            2	?I ��$��$:0            �=|� ��%��%:0            ��� '�� &�� ƀ%΀%:0           � Sen ��%��%:0            S�� ��%��%:0            ![` с%Ձ%:0            + AI ��%��%:0            j ", ��%��%:0            � �
?H }�� ��%ǂ%:0           g �   �%��%:0            d�� ��%��%:0            M�� ��%%:0            O&)�� �%�%:0            $O[` %�� <�� ��%��%:0           pw2$, Ą%Ȅ%:0            oBL�� �%�%:0            � ��%��%:0            &($#42"%5:x,.� C�� ��   .�� (-  IN JO  ~� �� L�� d�� '�� ��	�	    �� ��%݅%6:0            % ' = B W � � $Bf ^h|���ik MO /�� ��%��%:0           E G �1+�� �%�%:0            2v� ��%��%:0            E7�� ��%��%:0            $nv ܈%��%:0            (

 !+ ��%��%:0            !�� �� ��%��%:0           #P )�� �� fj މ%�%:0            1<F ��%��%:0            [c ��%Ċ%:0             	GM �� {� �%�%:0           7O7>E ��%��%:0            $!$[d �� �� Ƌ%̋%:0           
8N+�� 0�� MP W�� <? #�� ��%��%:0           � � � �� ،%܌%:0            EOW ��%��%:0            $
 19 ��%��%:0            8:C ̍%Ѝ%:0            3{� �%��%:0            P
QZ �� ��%��%:0            -)�� Ȏ%̎%:0            1
 �%�%:0            % ��%��%:0            M[` di ��%��%:0           "�� �%�%:0             
LU ��%��%:0            �� ��%��%:0            % ې%ߐ%:0             �� ��%��%:0            	>F ��%��%:0            Q8? ̑%Б%:0            7
U^ �%��%:0            %�� ) ��%��%:0           F"}� " ǒ%͒%:0            %7(�� ��%��%:0            $!$) �� ��%��%:0            % ϓ%ӓ%:0            N@F TZ ��%��%:0           .H)
FJ  ��%��%:0           1>70�� Ҕ%֔%:0            $�� ��%��%:0            ' ��%��%:0            N2< ŕ%ɕ%:0            F�� �%�%:0            HQW ��%��%:0            &8,�� ��%��%:0            35> ݖ%�%:0            0�� ��%��%:0            1OY ��%��%:0            2 Η%җ%:0            �
   �� �%��%:0           ��&+ >C ��%��%:0           5G�*4(	CG	4!+9K	�F&!"%6B$3x!L#G.&#�     �� 1�� G�� ��  &) GJ 
:= ru -�� ?��   ru wz   -0  # T�� z}   il ��� 	36 $�� �� ��  SV   �� R��   ~� {~  #     JM *��   WZ    IL   _b Z]   �� �� �� 8; mp 1�� '* >A RU 	03 ), ��  # JM RU 7: '�� ), 
%( <? 
), &�� 
69 

), PS /2 )��  �� ��   ru �� F�� u�� �� 
  
;> vy &�� 
  #& Y\ 03 	03  
 '��   X[ �� OR *�� &�� SV 
 Ә%��%�:0       [         % * 7 9 < A C F L M P V W Z ^ _ q { � � � � � � � � � � � � � � � � � ),0AINQbfnt������� SXZ[efv{|�����������������!& ��%��%:0            :!
NR pt QU fj á%͡%:0           Z � � K)$ %�� ��%��%:0           J �� 17 )/ ��%��%:0           #$�� �%��%:0            T[ ip ��%��%:0           /O'. NU 
$+ 	GN 	 ȣ%ң%:0            EO#$	OW (0 �� ��%��%:0           8D
 7= KQ Y_ ˤ%Ӥ%:0           [ �z`f ��%��%:0            *9K1#2@Y�� !�� �� LP VZ fj ��  8�� ��%��%":0           _ q } O����m���� 1�� ��%��%:0           � ' ݦ%�%:0            l
7 0(+Q�� 29  �� G�� #* .�� ��%��%:0           � ]`b�
.0&2�� ;�� Q�� "�� V_ (1  �� ܧ%�%:0           X `qrs:
3-[d   8�� py [d 2�� ��%˨%:0           1 k � �V�&!"�� # 
>I ;�� 2= ��%��%:0           � cs�
	
"%	2<   	;E ' gq /�� �%��%:0           j l s��:
 	 
:C �� E�� ��%ê%:0           � � kr ��%��%:0            � ,hu KX  �� ��%��%:0           s /�K	,r��  #. (�� ګ%�%:0           q r ��! ��%��%:0            �"1�� Ƭ%ʬ%:0            �
JP *�� ��%�%:0           ��(228 �� 4��  8�� ry !�� 8�� JQ ��%��%:0            d �o��29H�� "�� &�� FK ;@ KP  0�� ,�� �� ��%��%$:0       	    M � � � <Wao���� ��%��%:0            � +.<H !-  �� ��%Ư%:0           � � ��Gl�� ��%��%:0            P 
K  u�� !. :G & ��%��%:0           $ q � c��� ��%��%:0            � !��  ��%��%:0           � ,�� 	 ϱ%ձ%:0           � �  ��%��%:0            �F
3; 2�� ;�� ��%��%:0           Yx�3�� �%�%:0            g!!�� ��%��%:0            � �� ��%��%:0            8x} $�� ׳%ݳ%:0           3 ��%��%:0            +�� ��%��%:0            /
&
(* %�� Դ%ڴ%:0           ?sK2=C C�� gm +�� ��  &�� ��%��%:0            q Pv���!0,NW �� (�� +�� 
3< X�� �%��%:0            � � ���6�� $�� Ͷ%Ӷ%:0           � �#�� ��%��%:0            9) ��%��%:0            1 �� ̷%з%:0            t*�� %�� �%��%:0            �
:'SY LR ;�� 4: `f �� ��%��%:0            � � E:mq ��%��%:0            h
"#� �� EL 	*1 +�� ��%��%:0           � S	G2%�� X�� �%��%:0           P �  ��%��%:0            �G     ˺%Ӻ%:0            P � %4�� ��%��%:0            e &- ��%��%:0            ,9�� Z�� л%Ի%:0            �,>! +�� r| N�� ��%��%:0           ��G5�� ��%��%:0            P �� �%�%:0            �)�� ��%��%:0            �?.`�� �� ��%��%:0           ��
#' `d �%�%:0            ,   ��%��%:0            !$   48 ��%��%:0           pqu0.�� �%�%:0            �? <C ip  ��%��%:0           � �v�?}� տ%ٿ%:0            ��� ��%��%:0            �$N$9,&�SW HL dh   �� )�� \��  �� CG 
 .2 8< BF 
:> # 
37 �� *�� >�� 
*. " 
9= �� ��%��%4:0           $ Y [ ] � � ����}���y� ��%��%:0            �.9$8'�� 16 _d �� -�� N�� Z_ # ��%��% :0           X Y ] n ���{ ��%��%:0            �>B 
 �� $�� ��%��%:0             '�/+)&   2�� %�� (�� ,�� ��%��%:0             Ya ��%��%:0            �
 ��%��%:0            ~	ai ��%��%:0            HQ �� ��%��%:0             q{ ��%��%:0             8��   ( em ��%��%:0           : F � �%.�� ��%��%:0             	
7@ ��%��%:0            G-$ J�� ��%��%:0           � ��%��%:0            �
Y` fm ��%��%:0            YS[ ��%��%:0            { /@!0) 
`F�� )�� L�� dh AE  �� �� 5�� DH >�� ! gk 15  ��%��%(:0              + 4 Z � � #�]��3W�� ��%��%:0            {V_ ��%��%:0            � }� ��%��%:0            n'2 ��%��%:0            	$3xABL =G 
NX is '1 ?�� �� :�� HR _i ��%��%":0           ;M�f{|��
B JV  ��%��%:0           >Ke
	7 . 	 �� J�� .7  	 �� py ��%��%:0           l � []r
8C ��%��%:0            r�� ��%��%:0            [
4 :?  6; ��  ��%��%:0           W x�Y�
EJ ��%��%:0            ?$�� �� ��%��%:0           '
B 37 uy TX 
*. <�� ��%��%:0            x���F!&, #�� Z�� sy ��%��%:0            � x�/`f ��%��%:0             2�� 
18 ��%��%:0            �% ��%��%:0            qY] %�� ��%��%:0            � �� ��%��%:0            ?jo ��%��%:0            �&�� ��%��%:0            s�� ��%��%:0            t
vz z~ �� ��%��%:0           U � o6; ', ��%��%:0           2 3   ��%��%:0           dk ��%��%:0            M ' ��%��%:0            '^m ��%��%:0            '�82
Pkr � ��� 7�� �� /�� 3��  

,3 SZ SZ %, ��%��% :0           { � � � ����2( Q��  �� 	#+ (0  ��%��%:0           � � =��8 �� S�� ��%��%:0           � � '%#CF �� VY �� 4�� ��%��%:0           � � ko ��%��%:0            6!�� ��%��%:0              �� ��%��%:0            &8 ��%��%:0            6>)�� ��%��%:0            �
"& �� (, ��%��%:0           	V  ��%��%:0            Oip ��%��%:0            w82�� ��%��%:0            38(�� ��%��%:0            3#)2 ��%��%:0            9# ��%��%:0            96F))#/.�:@   	'- %+ ��   
7= @F jp  �� 4: 
 pv  ��  �� �� !' :�� BH ]c ��    �� ,�� ��%��%F:0           L � � � �  !#(AP������+5 �� ��%��%:0           ��!
G"�� '�� ��     [^ AD 
 IL ��%��%$:0       	     Z � � � � � � � TIQ ��%��%:0            # ��%��%:0            j 61�� ��%��%:0            ZX_  
 HO &- ��%��%:0           F{�	 
  
  
 &0 ��%��%:0           K � j�,�� }� ��%��%:0           � c+:
B$6jq jq G�� BI  �� MT u�� KR ��%��% :0            ^ � � bsef&.	-(%91	a1�� "�� Va (3 GR   NY ^�� +�� �� 3�� do y� T_ ��%��%,:0           8 X Y g o � Yp� ����r{ QZ ��%��%:0           1 y>$. ��%��%:0            �*&)+40�� W^ #�� '�� OV .��  �� ��%��%:0            h #]2L-�� C�� ��%��%:0           � �?a�� ��%��%:0            �G`�� ��%��%:0            �!%�� ��%��%:0            Z 0, G
:@  qw �� 7�� "�� �� 8> �� �� ��%��%":0            :A������

   ��%��%:0           ��-1�� ��%��%:0            6 5= ��%��%:0            'KV )�� \g ��%��%:0           * � �� ��%��%:0            {� .3 ?D �� ��%��%:0           w �� ��%��%:0            t 4,2�� �� "' ��%��%:0           W -�
 
36 ��%��%:0            � CJ ��%��%:0            � 1$$, %�� 9�� �� L�� ��%��%:0           ru��� ��%��%:0            � 

u|  ��%��%:0           ��
em ��%��%:0            �2
0E�� �� jo 	   %�� ��%��%:0           � �����DJ �� ��%��%:0           � �L	6? ��%��%:0            �
@-&%-�� x� �� �� $, ��%��%:0             , 1 6 8 �� ��%��%:0            j

G",1 !�� \a -2 i�� ��%��%:0           � � \n�y ��%��%:0            e�� ��%��%:0            � G	��� ��%��%:0            �
GL 49 ��%��%:0           ET,0 w{ ��%��%:0           Lh�� ��%��%:0            t8@ 	 ��%��%:0           � ��� ��%��%:0            
 -)!J�� :�� 
6> 
MU dl ��%��%:0            nq$( "& (, ��%��%:0           1BF *�� ��%��%:0            } ?F�� ^�� ��%��%:0            �  ��%��%:0            ��N(1
 0�� �� }� �� 	  ��%��%:0           � �  1I��-/�� ��%��%:0            �� ��%��%:0            ? -�� =C ��%��%:0           �K=�� ��%��%:0            q   ��%��%:0            !9
9= *�� B�� T�� ��%��%:0            ��&%
?C �� ��%��%:0            ( '*  E�� ��%��%:0           ���1B2�� '�� ��%��%:0           } �8\b ��%��%:0            � ! ��%��%:0            �W_ ��%��%:0            c
 SX ��%��%:0            � K ( ��%��%:0            q ,�� ��%��%:0             ��%��%:0            �� ��%��%:0            =H Xc ��%��%:0           : O.
/&

.�ai S�� V^ GO !�� -5 �� ai '/ 9�� 
	-5 W_   �� $�� 9A $�� PX " em lt 1�� U�� ��%��%>:0               7 < ] i ~ � � � &?AIK����[��#+ ��%��%:0             ~� ��%��%:0            (�� ��%��%:0            �# ��%��%:0            p 2<�� ��%��%:0            �-/.,S\ #�� -�� +�� >�� 	,5 ��%��%:0           - ��89L �� ,�� �� Z�� ��&ǀ&:0           y � ��610!��   &+ )�� >�� %* ��&��&:0           T � 6B�Z�	���  �� `�� �&��&:0           L g � � GP ��&��&:0            	5)
	(Z$ A��  8@ 
 )�� %  v~ 6�� P��  #+ �� ނ&�&$:0       	      ? u y K�g�K"_�� '0 ��&��&:0           q �(
" EO $ ��&��&:0           N �&4=   ��  	 " ��&�&:0           Nbv��6�� ��&��&:0            �<[�� ��&�&:0            � :1�� ��&��&:0            hL<C {�� ��&��&:0           ��)3 ߆&�&:0            �  ��&��&:0           ; �	
CM ��&��&:0            
	 ؇&܇&:0            �`i ��&��&:0            H  ��&��&:0            � ( ǈ&ˈ&:0            �:-4 �&��&:0            h ��&��&:0            �\d ��&��&:0            : �	��	�	 ۉ&��&:0            � #qy ��&��&:0            �=G ��&��&:0            �.5 Ί&Ҋ&:0            �&3ls :�� Y` Q�� �&��&:0           g ��L#- ��&��&:0            �L#�� �� ]�� ߋ&�&:0           y ��OF3GN/�� "��  �� (�� )�� �� D�� Q�� `h e�� ��&��&$:0       	       < Y �wx{�
T^ ��&��&:0            �+�� ԍ&؍&:0            � 9(#$@�� 3�� :A �� >�� ��&��&:0           _ ` � Ǝ&ʎ&:0            �  �&�&:0            5 	# $�� LU  ��&��&:0           ( [�"�� Տ&ُ&:0            � "'�� ��&��&:0            �%3 ��&��&:0            � (9A Ȑ&̐&:0            % 2�� ;�� ?�� 	4; �&��&:0           �o�-?G G�� 	,4 ��&��&:0           h pxF
9		2-	"53�
.5 "�� �� ,�� ls " bi �� PW CJ ,�� )0  	3: R��  [b 
+2 KR MT 	.5 (�� 6= �� �� :�� 	/6 	") _f !�� 6�� E�� #�� 
 ;B 9@ RY jq {� 	%, t{ 5< �&��&V:0       "       * O � � � � � � 289;>Ao���^{��������7-0�+2!
/ 
>.�:�� #�� S[ }� LT Ya T�� ��� �� !�� <��  RZ 	AI T\ OW 9�� '/ KS $�� 
 ,�� 2�� DL 

%- QY @H 2�� b�� O�� ��&ߕ&F:0           6 7 O | � � � � � � � � )����z������Yc ��&��&:0            
 �� ��&��&:0            xG/-4($-.�)6B$0	G .�GN O�� MT �� /�� �� NU �� %, I�� RY  �� ��� #* *1 ! C�� �� ry .�� 
/6 
+2 T[ 29 J�� @�� D��  
 
07 
29 T�� 1�� % 
29 u| qx @��  ʘ&��&V:0       "        % ' + . 6 < X � � � � � #/c����Zef��������L7@ S�� ��&��&:0           � �K&	>#3(�� aj {� +�� 
4= Z�� +�� ��&&:0           q �rs���
G:6(��  
*4 LV x� =�� ��&��&:0           P � � � Z5> 
JS �&��&:0           `i9+:�� qx %, ��&��&:0           2W
EM ;C ݞ&�&:0           1i�� ��&��&:0            �!;�� ��&��&:0            �:&:�� BK A�� ڟ&�&:0           � [�0+
=;
*1 `g & �� �� &- KR t{ �� ��&��& :0           T a � � � ?��"/-.�&�� jt 8B �� @J   &�� eo �� r|  �� �� .�� @��  
 
 gq EO ��&��&2:0             " $ & . / > u � � � � ���
dn "�� gq ��&��&:0           3��4G �� m�� ��&��&:0            P 2:�� ۣ&ߣ&:0            m
9H ��&��&:0            
" ��&��&:0              _f '��    29 ̤&֤&:0           IScz� ��&��&:0            q dn �� PZ ��&ƥ&:0           4���* ��&��&:0            =-)	
+U�� ��  �� 
 
9D #.       ]h 3�� ��&��&(:0           � #Nv���	
)9
+LBGR  ��  X�� ny 4?  ) |�� 	!, Ƨ&ܧ&$:0       	    { 2i��	+.
	 :B @�� y� ˨&Ө&:0           � ��� 2: ��&��&:0           
 �   ��&��&:0            �*@/�x .��  � ^�� ! �� QX �� ��   pw �� !�� 
$ gn  7�� 	&- �� mt u| IP \c 3: �&��&::0           
    1 H EVn�������� #0 ow   �� ��&��&:0           B � � �BQ ��&Ŭ&:0            �.P[ G�� �&�&:0           ��"0�� ��&��&:0            f% �� V] ��&ĭ&:0           ��  ��&��&:0            �& ��&��&:0            � 	 ��&®&:0            � &HM .�� �&�&:0           i ��� �� ��&��&:0           ��&.�� ^f ǯ&ͯ&:0           �(�� ,6 ;�� &�� ��&��&:0            d - ��&��&:0            D %0 �&�&:0            �1K�� ��&��&:0            } ) <F ��&��&:0           ��4O�� Ya �� (�� ܱ&�&:0           W �w  �� ��&��&:0            1'�� ̲&в&:0            ���   �� �&��&:0           * @j	W] ��&��&:0            V 2nt ճ&ٳ&:0            � 
52     H�� U\ ��&��&:0           g �^o$8@ & ' ɴ&Ѵ&:0           p��.�� ��&��&:0            X 2 ��&��&:0            o($2 �� 
 �� V^ ε&ص&:0           d �mq G'�� r�� ��&��&:0           ]�2�� ȶ&̶&:0            �NF�� qx R�� �&��&:0           � � x
�� $�� 
 .�� ��&��&:0           ���!) �&��&:0            �FU�� �� �� ��&��&:0           � �j�k�� �� Ը&۸&:0           � �  �� ��&��&:0            � !�� ��&��&:0            � 
8B [e  
 ֹ&ܹ&:0           � � 4�Y�� v�� ��&��&:0           W � N2( 3�� ��&ĺ&:0           � m�� *�� 
  �� �&��&:0           h �2�� ��&��&:0            h $
)2 ��  	   	 ڻ&�&:0           ����  ��&��&:0            �CK ɼ&ͼ&:0            p !2
:	 	(/ cj ?F "�� A�� >E 	4;  �&��&":0           E � )����
OW �� �&��&:0           � 	:&�� �� ?�� BF ��&��&:0           m � h�%#+-
"6V X[  �� 9�� .�� 
	14 kn CF "% 8�� ;> 9�� 	%( �&��&&:0       
    C e f � � � Sp�Z2	5<   #�� @G ��&��&:0           ����Kw�� TV ��&��&:0           q u    cf ��&��&:0           T�Cp�� ��&��&:0            � @/
$�� O�� `�� &�� T[ ��&��&:0             	 1LQ   %��  # 
GN ip 
07 �� �� +�� 0�� ��&��&&:0       
    x � � TUXgz���9!0Li0�� >�� 
 ot -2  <A z )�� 1�� ��  �� +�� 
	). ^c $�� ��&��&":0           _ � � XYg���KX ��&��&:0            2	(8@ 
&. jr 6��  ��&��&:0           � � 	�
,NW Yb {� �� #, py ~� ��&��&:0           ! �  ���� ��&��&:0            � : T�� (�� /�� 4�� ��&��&:0           � � � QV FK ��&��&:0           � � .>E ��&��&:0            X 
-G60HV] el �� �� $�� Q�� ^�� �� \��  ��&��& :0              6 7 P Z��&�� ��&��&:0            b6@E �� ��&��&:0           dZ

CD uv ��&��&:0            � "�� ��&��&:0            � UZ ��&��&:0            ��� ��&��&:0            � �� �� ��&��&:0           � �fl ��&��&:0            � x	��� ��&��&:0            |&�� >�� ��&��&:0            i 2
 ��&��&:0            �KQ ��&��&:0            �  ,(DH 48  �� ^b �� ! ��&��&:0           � � z���K,
b7�� NT }� [a `f |�     
BH ?�� 39 #) (. &�� gm ��&��&.:0           q � � � � � � cv�����
+N%$=�� ;�� )�� :? IN ��&��&:0           ^ �  ��#% "�� ��&��&:0           f  :,/ ��&��&:0            � (�� =�� ��&��&:0            d -�� ��&��&:0            � 6ry ��&��&:0            Z!�� ��&��&:0            � 
y~ ! ��&��&:0           �� ��&��&:0             &+9(%#+0$1�4�� :�� H�� %�� ?�� CG   �� ��  15 15   TX 
PT cg '�� 26 cg "�� dh � &* %�� *�� ��&��&6:0           ^ _ ` e f � &���`fgi�� �� ��&��&:0           � �
(B$��  px �� G�� ��&��&:0           	���.�� #) 	+1 ��&��&:0            � �2M�� ��&��&:0            �
'#$9��  <�� AH %�� ��&��&:0             ��+%6�� �� E�� ��&��&:0           ^ e ZPU ��&��&:0            �/
+#S�� 7�� GK 7;   CG w{ 
`d rv &�� 	 =A ��&��&(:0            @ | � � � -Uy����� ��&��&:0            =;H ��&��&:0            � RY 
 ��&��&:0           , �CJ �� ��&��&:0           �"%)	+	#"~	&, 0�� �� $* '�� GM E�� 
 rx   x~  DJ �� 8�� FL &�� IO ��&��&2:0           O e m � � � 19]d����)	*�� y &�� 4�� "( SY ��&��&:0            5 Y #��LB�� ��&��&:0            �&F�� P��   ��&��&:0           i � k��� ��&��&:0            -0"�� ��&��&:0            �    ��&��&:0           ��3"�� S�� ��&��&:0            �3A�� ��&��&:0            �
0. " EL &- & -�� ��&��&:0           � � Z��BL.*@H c�� 
7? ?�� !�� ai ��&��&:0           Te����$�� ��&��&:0            �#&. $, CK ��&��&:0           Yy� �� )�� ��&��&:0            z2 ��&��&:0            � }� ��&��&:0            �2& ��&��&:0            � '-3 ��&��&:0            �� ��&��&:0            �9
2.# 09 M�� % }�  2�� ��&��&:0            . _ ~ Tm'}� ��&��&:0            P_ ��&��&:0            oz ��&��&:0            p *D�� ��&��&:0               ��&��&:0            ( >I ��&��&:0            *ah "�� /�� ��&��&:0           | � ,=�� ��&��&:0            � �� ��&��&:0            0 B+�� .�� 8�� ��&��&:0            �&�� 7�� ��&��&:0            i & 	 ��&��&:0            i 	<"
P
39 !�� ��  %�� 5�� ��  �� CI �� ��&��&&:0       
     [ ] o � � � � W�� �� ��&��&:0           +�% '�� ��&��&:0             �� ��&��&:0             x}  �� ��&��&:0            	NX ��&��&:0            *B:% _g NV BJ ,4 
 -�� 0�� @�� ��&��&:0           � � � e���
)3 )�� ��&��&:0            e
5"0  �� �� r} ��   �� ��&��&:0            /f��5M�� ��&��&:0            ^�� ��&��&:0            � �� ��&��&:0            x#�� ��	�	 ��&��&:0           l|-�� H��   ��&��&:0           � XPX ��&��&:0            �"�� ��&��&:0            � 9H�� ��&��&:0            _ # ��&��&:0             ( ��&��&:0            �oy ��&��&:0            �" ��&��&:0            Z��  
 z� ��&��&:0            # �OZ ��&��&:0            �9!\�� JQ ��&��&:0           ��" ��&��&:0            t�� ��&��&:0            �	  ��&��&:0            	CJ ��&��&:0            �? +�� gn �� ��&��&:0           	 
 � �((52#��   �� �� ��&��&:0           ` d ^o(%CP -�� &3 ��&��&:0           d e � & ��&��&:0            3 8�� ��&��&:0            �/<+2G�)0 �� "�� �� 	 
 v} KR )�� 9�� C�� 	 ,�� V�� =D F�� 29 �� 

.5 sz ��&��&*:0            
 . < > � � ]�����  ��&��&:0            �)�� BJ ��&��&:0           v #;J ��&��&:0            �<:  �� ��&��&:0           u � h/N 	  
' 	;D g�� ��&��&:0             $ � �� ��&��&:0            �-�� #�� ��&��&:0           � KS ��&��&:0            � 
?E ��&��&:0            �-*�� ��&��&:0            pK+s�� #�� z~ Y] ��&��&:0           q -.]!!�� 	'- u{ /�� ��&��&:0           � � ��L5�� f�� ��&��&:0            �*�� ��&��&:0             )<

08 LT   ,4 $, 
:B    {�   ��&��&":0           � � � � ���*(:�� 	&, ��&��&:0            �$?v| 	)/  �� ,�� ��&��&:0           � $f�-$^e X_ N�� %�� ��&��&:0           � �fy� ��&��&:0            MB	*2  �� ��&��&:0           � �e-P�� ��&��&:0            �� ��&��&:0            ��� ��&��&:0            � DL ��'��':0            \f ��'��':0            /�� ̀'Ѐ':0            �KK�� �'��':0            q $K2$ ,�� $�� ��'��':0           ' q � 8.�� NU ׁ'݁':0           � �NN�� ��'��':0            � B	$M #�� (�� =�� \�� s�� mt #�� 0�� @�� �� ��'��':0           Wefi+B$91@L�� 
>F Zb !�� _g $�� D�� F�� (�� ��'��':0           ^ aefg��S\ ��'��':0            �([f Ä'Ǆ':0            ` (�� &�� �'�':0            ` L�� 9�� ��'��':0           X�x@E #�� ��� Ʌ'υ':0           |�� ��'��':0            
8> ��'��':0            \	'/ Ά'҆':0            </#�� �'��':0            q} ��'��':0             JT +5 ��'Ň':0            D  qz �'�':0           # � 
KY ��'��':0            �
 'ƈ':0            T 
 �'�':0           � Mlv ��'��':0            D �F3x0LX��� ��� 
4; 	 X�� nu |� ���  �� O�� �� X�� ��'Ή' :0           � � Wx{|��	&/ ϊ'ӊ':0            F3�� <�� �'��':0           x�$8�� ��'��':0            �$.	7	B2F3x90$	L�=�� & C�� jr 9A 
6> PX 1/�� A�� J�� Q�� Y�� `�� j�� &. 	 qy 3�� 	)1 �� #�� 9�� *2 $�� V�� "�� X` /�� =�� P�� ΋'�'4:0           X o � � Udemxy{|������-,O�� cj % (�� ��'��':0            ���
C'$(�� x�� �� 0�� ,�� ǎ'ӎ':0           > A �p��) o" W�� �� 	 '�� Zf +   #/ am #/ $�� {� 
$0 gs �� �� ��'��'*:0           
 � � � #Ykl��c��.�0%6�� ��� *2 EM !�� ݐ'�':0           X � � `�,A�� ��'��':0            �K  ّ'ݑ':0            q +�� ��'��':0            ^ 3 M�� ��'��':0           ��3*�� 8�� ֒'ڒ':0            �QZ ��'��':0            �8B �� ��'��':0            [.+$%�� 9�� <�� ��  
 Փ'ݓ':0           X ]���  �� ?F ��'��':0           u ��7? �'�':0            � &(�� BJ 
 W_ 	4< ��'��':0           i LM�G&$&G^�� 	9B /�� v x� FO ��  <�� +�� 6�� �� B�� ѕ'�'(:0           P i y � � N`prs��%,  ��'��':0           + !&6�� ��'��':0            �,mu З'ԗ':0            ��%,8%�� 	=E �� ��� 7? ck 6> 5�� ��'��':0           ] k � ! W�w� �'�':0            � 
3C JZ ��'��':0           � ,";%�� '5    �� '5  n| �� ��'̙' :0            � � � ����". �� �� 6�� <�� ��'��':0           �c��
!F%|� &��  �� /3 {�� ��'��':0           � )+x	%/ ϛ'ӛ':0            q�� ��'��':0            { $1 ��'��':0            �$K"O!0, !�5�� MS G�� *0 ! MS �� /�� :�� 5�� 0�� 
06 `f EK Q��   "�� ms >�� �� ��'�'4:0            ] q %AQfXw��������+5�� ��'��':0            ^ 9/5=8�� &- <�� ?F GN 3: ,�� R�� מ'�' :0           O s 2�X^�
29 ʟ'Ο':0            c9D�� �'�':0            _ �� ��'��':0            �$
'- HN  �� ��'Š':0           � � �$B*�� "�� ��'��':0           �e!	&- sz -�� ��'��':0           � �9> :? #�� �'�':0           (�>D TZ ��'��':0           .P
�� #�� 	 Т'֢':0           ��#,�� �� �� 

  ��'��':0              �#�� 5�� ֣'ܣ':0           ��'�� ow ��'��':0            �PV ��'��':0            c
  ߤ'�':0           � �cl ��'��':0            �2  ��'��':0            � 
/5 إ'ܥ':0            �"& ��'��':0            � O>�� ��'��':0            w$�� ɦ'ͦ':0            -+Y
 " .3 E�� (�� z 	 
:? NS �� "�� bg " FK �'��'&:0       
    c � � � � � ����F!s�� ;�� ��'��':0           � )$<+*�� (�� # 	 DH =�� è'Ѩ':0           
 ' � � (]	���� 6�� #( af ��'��':0           � � +�F�� ]b �'�':0           x�CI ��'��':0            � Lt�� ��'ê':0            �C<:?;�� K�� 	-1 K�� #�� hl   *�� �'��' :0           A u � � h���G&�� a�� �'�':0           y �DH ��'��':0            �4	L��  !% ��'��':0           W ;Y22�� �'��':0            � C S�� ��'��':0           S � �� ˭'ϭ':0            �
 	/5 �'��':0           NX ��'��':0            )=�� >E Ʈ'̮':0           #	 $��  ��'��':0           � vy ��'��':0            � 2C�� *�� ͯ'ӯ':0           � � 
!    5�� 
{ ��'��':0            4 Y Z �  %�� ϰ'Ӱ':0            � 04$&$/$&
!��� lo  &�� RU � 
7: 
 kn  %( )�� ^a &�� 
+. ! WZ "��  GJ   �� (�� _b *�� 
 # TW 8��  ��'��'@:0             " ' / 8 a tw�����prsv����>Y�� ��'��':0            �@&x3.
	h&�� |� mt �� 5�� #�� '�� w��  ' &�� H�� U\  	(/ T[ ճ'�'(:0             ) : rs|�����
@	!.D�� !�� PT JN 
 
'+ TX ��'��':0             0 9 �n�8? ��'�':0            �#�� ��'��':0            (�� ��'��':0            =�� �'�':0             3  ^_ ��'��':0           F {	NT ��'��':0            %�� ۷'߷':0            %
 ��'��':0            �� ��'��':0            H	39 bh  θ'ָ':0           �OPBo�� ��'��':0            eGM ��'��':0            �<G�� ӹ'׹':0            � 	 ��'��':0            � u| ��'��':0            #��  ĺ'ʺ':0           M4 # 
59 os ��'��':0            �� ��'��':0            � 7�� �� ջ'ۻ':0           $-�� ��'��':0            H1
:C ��'��':0            21�� Լ'ؼ':0            h (, ��'��':0            $�� ��'��':0            el ǽ'˽':0            *�� os �� 37 ��  �'��':0           
  � � '�
_d mr ɾ'Ͼ':0           �,2�� ��'��':0            ��� ��'��':0            �
	)1
 ;�� A�� 
 
7: 
  >A  ƿ'ҿ':0           � ���) /�� ��'��':0           H 86�� ��'��':0            3BO ��'��':0            7�� ��'��':0            $)LS ��'��':0            1'lu 
aj " ��'��':0           .;it ��'��':0            F� ��'��':0            8�� ��'��':0            5�� ��'��':0            F  �� ��'��':0              ��'��':0            H($�� ��'��':0            % G	�)&�� 
7B  ��� bm ?J ��'��':0           P o ~ � � Y	^f [c CK ��'��':0           V �G(
�"@	.3 !�� )�� C��  " <�� ��  �� ��'��':0           P d m  � � fG+0�� E�� ��'��':0           P ^ 1�� ��'��':0            �+$1P PW �� |� �� (��      �� :�� ��'��'":0           ^ a g p p����
 QU "& 
/3 ��'��':0           � ���q��  >F ��'��':0           � ���� ��'��':0            �� ��'��':0            e&�� ��'��':0            e tz ��'��':0           � �  x#) ��	�	 ��'��':0           z|-W�� ��'��':0            p2< ��'��':0            �
-<1-W\ '�� �� @�� �� !�� ��'��':0           6 T � M�-�� ��'��':0             +2+�� �� L�� ��'��':0           ) ]�$+ ��'��':0            � C?E CI =�� M�� ��'��':0           ) 1 A C*MT ls ��  �� 9�� ,�� ��'��':0           
  @ A oy ��'��':0            �+&29D2�� sy <�� :@ �� 
8> jp N�� ��   ��'��' :0           ^ i � � � �Y�+&�� ��'��':0            ^ B*]c �� MS $�� W] `�� ��'��':0           [ �T��� ��'��':0            T#z� *�� ��'��':0            �.�� *�� ��'��':0            [ x10��� ��� ��� ��� ��� ��	�	 ��'��':0            |B +
HO t{ 8�� 
#* JQ !( % ��'��':0           $ ez���!�� &�� OW qy ��'��':0           � +!�� ��'��':0            jm ��'��':0            BF87C#.j), "%  #�� :�� 2�� D�� ]�� 
?B '�� '�� 1�� PS nq 8�� ��'��'*:0           $ � � � � � � =���-
rx ci ��'��':0           p�0). �� ��'��':0           `�
2
 8��  ;@  @E ��'��':0           � _o�+Ox!DH 0�� ae (�� 04 ��'��':0           w|�BM�� ��'��':0            e ��'��':0            �  ��'��':0            g�� ��'��':0            %  ��'��':0            ' 5; ��'��':0           x y =9�� ��'��':0            �	$-FN �� #�� 1��       ��'��':0           ����
S[ ]e ��'��':0            �!�� &* '+ ��'��':0           � ):2

3; X` ��'��':0            � "% ��'��':0           <#�O30LB��� fj V�� ��� 2�� 	-1 <@ �� "�� ��'��':0           � �w{���BL#W�� b�� �� ��'��':0           e��� x!2��� '�� ��� ��� �� %�� ��'��':0           � � |��'�� ��'��':0            ;/	,1 *�� ��'��':0           1 9"- ��'��':0            _ :�� 1�� ��'��':0           � � 	x9L+]a BF 
 ��� >�� 2�� ��'��':0           ZUW|��
6> ��'��':0            � 
$9.$�� MU V�� "��   ��'��':0           ' r���')�� ��'��':0            �
 <F ��'��':0            � 7*�� ��'��':0            $ �� ��'��':0            �o{ ��'��':0            �1-�� ��'��':0            �F2�� ��'��':0            � 52�� ��'��':0            ^5! $ ��'��':0            �1 ��'��':0            } 4� �� ��'��':0            �"+/ ��'��':0            � 7KP 	6; A�� ��'��':0           # � � .0�� ��'��':0            X &4!	!G>&�W�� (�� 7�� X^ �� ! LR u{ �� )�� 1�� 
	&, lr �� ;�� SY RX �� 
	 9? `f ��'��'6:0           W Z h p � � Uagi�������9;J ��'��':0            � 47NO
!$1L�C�� N�� 
3: pw 9@ # RY cj  �� �� CJ �� ]�� ��� 
%, nu .5 ,�� �� @�� #�� *�� 6�� I�� h�� ��'��'0:0           W a h n � � � � Yw������JS ��'��':0            H9.�F B$&9$L"	.>��� ") AZa �� B�� K�� t�� ��� ��� ��� ��	�	 *�� !�� )�� C�� Y�� k�� 
4;  JQ   )�� "�� 1��  %�� =D '�� 	 *�� 1�� ?F 3�� �� �� 
7> �� ��� 
:A ��  �� !( & +�� �� gn ov ��'��'H:0           X � � � � � � �]cdefns�������������0$[�� &�� ��'��':0           ���F"522$!l	:B ��� ��	�	 _�� w�� %- "��  [�� #�� D�� RZ )�� �� IQ ��'��'&:0       
    � � � � �^mop��1x+\c ,�� �� DK )�� ��	�	 ��'��':0           } ~ �|/7 ��'��':0            ~ !	COq$�� +. 
 9�� fi .�� A�� R�� i�� 
14 �� %�� T�� [�� n�� sv ��'��'&:0       
     j � � � � bXw!# [_ ��'��':0           { �C:V��  ]�� ��'��':0           A h�� ��'��':0            7�� ��'��':0            [ cj w~ 18 ��'��':0           $ ��� ��'��':0            %"ht ��'��':0            R"1< ��'��':0            R)�� ��'��':0            v  ��'��':0            �6W��   ��'��':0           Z�#KF"(rw X�� jo   �� ��'��':0           B q � � t�
F2.$:��   4�� U[ (�� ��'��':0           � � ���gm ��'��':0            � {� ��'��':0           � u! ��'��':0            � =C ��'��':0           6B! ��'��':0            �	OT ��'��':0            �0;�� ��'��':0            �"(�� *��  
 :?  ��'��':0           
 � � f��=F ��'��':0            
nu ��'��':0            U 8;�� ��'��':0            � /L ��'��':0            � 
r} 7B (  ��'��':0            � ��(&-=*fj ?�� im =�� �� TX ��'��':0           	�@Q�� ��'��':0              	%, ��'��':0            � ��  ��'��':0            N fk ��'��':0            �� ��'��':0            � �� ��'��':0            �!�� ��'��':0            �2"�� ��'��':0            m # 
 
9< ��'��':0           .P}� 15 ��'��':0           +�'"5
<>B ko �� �� GK �� ^b 
 
?C ��(��(":0           � ^i�1X�� ��(��(:0            } UZ ��(��(:0            =*�� �� �� +/ ˁ(Ӂ(:0           ���-.+A�� p} �� r ��(��(:0           6 T X ^ #, ւ(ڂ(:0            �#- ��(��(:0            �+4 ��(��(:0            �
 Ń(Ƀ(:0            �G!�2"-& 
O9�� �� �� Za 

5< JQ OV bi G�� T[ 	-4 >E �(��(&:0       
    P � � � � f�sz�O  ��(��(:0            w$C+20#,G�	;A �� �� %�� �� JP io  
 =C |� 8�� OU 28 ms  9�� (�� o�� �� ��(̅(4:0            ) m � � � $>DLSo�����-B�� KR \c ��(��(:0           6 O � 	  � ·(ԇ(:0           V ]AK ��(��(:0            �
LZ ��(��(:0            U is Ȉ(̈(:0            �#%�� �(�(:0            B 
��  ��(��(:0           T V-CG�)BO�� bh gm u��  CI V\ JP 
 &, |� *�� ŉ(��((:0            A P � !>����e8@ ��(�(:0            !6-�� $�� D�� ��(��(:0           Y Z Z!7�� jx Yg *�� ċ(΋(:0           $ Z � [(9#@E 0�� di <�� ��(��(:0           ���4�� Ҍ(֌(:0            �"+!9

0?x 39 <B �� )�� 
 	/5 NT %�� +1 	+1 (. EK  �� (. 

,2 bh 
 ��(��(2:0           	  1 Y ^ � � )2=������aj Ў(Ԏ(:0            {  ��(��(:0            { UZ ��(��(:0            �� ��(Ï(:0            � :in M�� �(�(:0           � � <?   ��(��(:0           � 2:!,&..�� 0�� VZ -�� �� /�� Ɛ(Ԑ(:0           �h����13�� ��(��(:0            } &$ Α(ґ(:0            �##�� �(��(:0            9&�� �� F��  ��(��(:0           � � 'L	 `j #�� eo �(�(:0            � �� ��(��(:0            Pnz ͓(ѓ(:0            PG<	C7	$TG�� '�� �� 0�� N�� l��  #�� �� 	   �(��( :0           P � � $P%)"�� 9= �� ��(��(:0           16R"�� ��((:0            	 % GL �(�(:0           � 8? |� ��(��(:0           4JP @F Ė(ʖ(:0           � (,�� <�� �(��(:0            ` )�� ��(��(:0            + �� ȗ(̗(:0            !  |� �(��(:0           z�+7�� ��(��(:0            ] ;A $�� Ƙ(̘(:0           ^z  ��(��(:0            �4]��  ��(��(:0            �"54-+
"
(B�%* L�� 
+0 ty ��      QV �� +�� >C �� '�� <A $ '��  _�� ͙(�(2:0             6 O � � � � � � bf�����!<?-BI FM    >�� W^ D�� ��(��(:0           O Z \ � ��#9�� �� ��(��(:0           ��(IP !�� Ŝ(˜(:0           	�
19 ��(��(:0            L RW ��(��(:0            ) 

   ��(Ɲ(:0           �3; �(�(:0            �:)�� ��(��(:0            � 5Y�� ��(��(:0            ^`
/@	08-
B:2	3"?.�
 AI 
   
6>  	/7 5= @�� .�� ��    '�� N��    D�� U] ��   ?G      �� Q�� 
' U] s{ �� %�� \d %- �� y� N��  
 ?G {� *�� 	8@ [c �� #+ %�� 5�� F�� " JR GO 
 .�� X`  B�� @H % �� !) %- �(ğ(p:0       /         	      @ � � � � � � � � � 5Fhp{��Sehklmv������������)�� գ(٣(:0            J-L�� ��(��(:0            pG�293u08 �� ^f  BJ =E ��
�
 em "�� 6�� mu 4�� ?�� Y�� IQ X�� �� ��(��(*:0             * C P � � � 2{�G292�� =F 1�� �(�(:0           P � 20+".Z ty P�� �� (�� ;@ HM @E �� \a 4�� N�� @E ��(��(*:0           m � � � � ����jp Χ(ҧ(:0            O 3!�� �(��(:0            {+8�� U\ ��(��(:0           � �/?G ˨(Ϩ(:0             `g �� �(��(:0           [g &1	22 v FM $�� nu �� ��  �� :A nu <��  �� z� 
   ?�� ,��  ' ��(é(0:0            8 } � 9>�����m�	%. �(��(:0            A(<�� ��(��(:0            �D	<(
-
#("x � .��  $- 
 2; @I CL W` ( 
.7   #�� /�� '  	  KT J�� M�� (1 <E dm  ir >G  %. %. nw 	,5 W` ��� ! 	09 V_ �� ��(��(T:0       !     < s | � � � � 	 +I[_ep�������j|���2"xI,5 &��  	  	 ,�� {� e�� AJ v  	  ̮(�(&:0       
    > � %od|����t} 
4= ܯ(�(:0           ES	
$       ��(��(:0           ������,!�� �� �� �(�(:0           �-.
NV ��(��(:0            ��� Ʊ(ʱ(:0            #BH ��(�(:0            #�� ��(��(:0            7�� ��(��(:0            $-&32$�� fj # "�� JN "�� <�� �(�(:0           � 5I���1!�� ɳ(ͳ(:0            2(#)�� (�� �� �(��(:0           ` f b%@�� ��(��(:0             +�� :�� ִ(ڴ(:0            � )  ��(��(:0            11 �� ��(��(:0            2  е(ֵ(:0           )(�� ��(��(:0            1)ov ��(��(:0            1 ˶(϶(:0            4GL �(��(:0            ��� ��(��(:0            ^9:#2x!B�qw Z�� �� "��  kq �� �� % 9�� ^d &�� 7�� >D �� �� `f R�� ]�� ��(ܷ(.:0           4 _ � � 7����m|����:.5 CJ �� ��(��(:0           � � >##�� V��  �� й(ع(:0           � ���� ��(��(:0            Z-2 ��(��(:0            �2�� 	 ۺ(�(:0           � � 
 ��(��(:0            O!p�� 
 (/  ��(��(:0           w���� �(��(:0            U2'
$.>D�� " !�� HP HP '/ ;�� #��  ��(��(":0           � � np��*	,8 ��(��(:0             # ��(��(:0            �� �� 
<J ߽(�(:0           ��	*3 ��(��(:0            S/8 ��(ž(:0            �v �(�(:0            
,3 �� ��(��(:0            �CZ�� NX ��(¿(:0           A y 2LQ �� ��(�(:0           : o2]�� �� ��(��(:0           � �in 
 ]b ��(��(:0           '�	 /*CK |� )�� 2�� /�� (�� ��(��(:0           ��4
(��   ��(��(:0            �V	(- 6; �� !�� ��(��(:0           p ���� *�� ��(��(:0            �1=�� ��(��(:0            � ��(��(:0            ~
26 7; ��(��(:0           � � ��(��(:0            v�� ��(��(:0            +52  �� ��(��(:0           ^o,A�� ��(��(:0            �>&�� +�� 2�� 9�� ��(��(:0           ���+. ��(��(:0            F"T�� X�� \�� $�� ��(��(:0           � � @2$O.A�� Z_ A�� $�� #�� �� ��(��(:0             � ��pw"�� rw 0�� ��(��(:0           n�-&M2�� ). kp 
.3 v{ �� !& $�� ?��   8= ��(��(":0             , / 5 6 7 8 �$-6�� K�� �� ��(��(:0           ' 6 �	 IP ��(��(:0           & u /0�� J��   ��(��(:0           � �0"�� ��(��(:0            �$) ��(��(:0            	&#+9�� :�� �� ��(��(:0           8 B -G�� ��(��(:0             ) ��(��(:0            v5
 fl  ��(��(:0           [^04&9('2

 B�Y^ �� �� >�� 
  E�� 	7< #( y~  #�� 1�� �� ;�� �� &�� 
6;  �� 
   jo  k�� ��(��(@:0              / 1 8 _ � � � � 	L�����z���9@ ��(��(:0            -F ��   I�� ��(��(:0           � � �x ��  ��(��(:0           z�+2 F��   �� ��(��(:0           � � m+"�� ��(��(:0            � "  
  
  ��(��(:0           ���� 	 ��(��(:0            �" " ��(��(:0           ��	65(.!	�HM ns 
 hm Z_ 
  %�� 4�� R�� %�� Z�� *�� �� 4�� �� %�� $)  ��(��(*:0            | � � |Z^���	
7��  ��(��(:0           m �    ��(��(:0           | � 
$- kt ��(��(:0            � 3< ��(��(:0            �U_ ��(��(:0            � V\ ��(��(:0            [N93#�� �� gm k�� �� �� 
 ��(��(:0           m � � 2c�*G��    ��(��(:0            O
 ��(��(:0            � 9("#"8R�� 	 
 ,�� "�� 	 >�� 37 ��(��( :0           _ ` h f��"%"�� !��  &�� "�� ��(��(:0           1 � f�U\ ��(��(:0              ��(��(:0            M +5�� ��(��(:0            3	9C ��(��(:0            {3  ��(��(:0            {(8)	--HX] 3�� [�� #�� PU T�� NS "�� uz  �� ��(��($:0       	     % � 9p�u�%t| !�� ��(��(:0             ch z ��(��(:0           ^83*#�� V�� AE 
<@ #' :�� ��(��(:0           , � � �d�BV�� �� ��(��(:0           e�(2	26�� 3�� qx jq  �� $�� '��  ��(��(:0           d � o�
-46@ &�� %�� @��  �� Q�� �� $�� ��(��(:0           
   Z		 HN ��(��(:0           �
9((]�� G�� 
'-    ��(��(:0           _ d � � � � 	. 
! /6 )0 	4;  
" Za ��(��(:0           � � � � � � 6�� !�� T�� ��(��(:0           ~ �ZK�� ��� 
 PU ��(��(:0            q ��� "1 ��(��(:0           b.�� ��(��(:0            h 
@
#%k��  	  
 -5 ��(��(:0             ����	 ��(��(:0            � QX HO $�� ��(��(:0           F � $�� ��(��(:0             ��(��(:0             mt ��(��(:0            �� ��(��(:0            dX^ ��(��(:0            KP�� SY 
(. ��(��(:0           q   ��(��(:0            	8> ��(��(:0            =�1�� ��(��(:0            � t| ��(��(:0            � 
?G   ��(��(:0           . � 
%%& �� y� ;�� �� {� ��(��(:0           e / ��.cm gq ��(��(:0           �#.cm C�� ��(��(:0           B �2)�� ��(��(:0            �  [` ��(��(:0           � � �� ��(��(:0              ��(��(:0            N z  ��(��(:0           ��$ ��(��(:0            �  ��(��(:0            d ��(��(:0            9	 C�� 
 	(- ��(��(:0            2� 7: ��(��(:0            �
8F ��(��(:0            vG,�� ��(��(:0            �&�� ��(��(:0            0 �� ��(��(:0            [ [b ��(��(:0            ��� ��(��(:0            l�l��  py ��(��(:0           � �&�� ��(��(:0            �.E�� ��(��(:0            �.0�� ��(��(:0            �&2�� ��(��(:0            * ��(��(:0            � 3�� ��(��(:0            �),�� ��(��(:0            kq ��(��(:0            $  ��(��(:0             	+8dk 
)0 EL C�� M��     \c ��(��(:0           � � � � ���K\e !�� $�� ��(��(:0           q s � 
K23#b�� {� eo 4> 1�� ��(��(:0           q � � 
� TZ ��(��(:0            �,%�� 
9A ��(��(:0           �%9�� 4�� ��(��(:0            �"�� OY ��(��(:0            �LX ��(��(:0            � 19%G�� %�� -�� V�� ry ��(��(:0           } � 2L
  ��(��(:0           KP:ks ?�� #�� ��(��(:0           � �(	4+�� <A �� NS ��(��(:0           % 9 W �Yb  	 �� ;D ��(��(:0           � �  W^ 
 ��(��(:0            �8UX ��(��(:0            � ,  &+ CH ch ;�� ��(��(:0            �"fp ��(��(:0            f
2G'�� # 6�� L�� ��� ��(��(:0           ncm�K ��(��(:0            q 8?�� ��(��(:0            � =�� ��(��(:0            �
'$$�� 	19 	 &�� #�� ��(��(:0           * I���!
BLei '�� '�� �� CG gk �� !�� 	 
 !�� ��(��(":0           ) @ � _e���.;�� ��(��(:0            � ��(��(:0            �2�� ��(��(:0            2-�� ��(��(:0            ��� ��(��(:0            I	&1 ��(��(:0            �!�� 
;> ��(��(:0           �� ' FM ��(��(:0           ��G]�� ��(��(:0            �  ��(��(:0            z X^ ��(��(:0            i]f ��(��(:0            < ow ��(��(:0            ? �� "�� ��(��(:0            �� ��)��):0            +
�Yd $ d�� ��)��):0            � 	%+ �)�):0            ��� ��)��):0            � "�� ��)��):0            �m(G4.+%#	2�87!

 0$&3L,"G, >&#�(.  &�� )/ [a =�� ~� )�� -�� |��  ;�� �� A�� PV X^ $�� [a  y ��  n�� ��
�
 (AG �� '�� 1�� J�� a�� (�� +1 �� GM �� O�� ?�� #�� ci NT �� &, $ sy �� � <�� �� 7�� #�� `f 28 !�� ?�� (. hn �� #��  $�� )�� >�� U�� (. 	39 ,�� TZ _�� `f 1�� JP O��   ?�� .�� !�� \b W] ׁ)Ƃ)|:0       5       " % 7 P W X ^ e f o | � � � � � � � � � )+�V[\]`fqrs�������������������&�� �)�):0            =+(G(%#K
:�021L,� OV ;�� H�� d�� �� t{  9�� 4�� <�� z�� 
 el D�� M�� % '�� .�� I�� R�� ]��  5��   +�� ?F ��  ��)��)::0           % ( P ` a e f q  � � *[`bmv���) Ŋ)Ɋ):0            � 1�� �)�):0            2
GR ��)��):0            %	*3 ��)��):0            )#�� ۋ)ߋ):0            1
 ��)��):0            >B ��)��):0            >'
We ̌)Ќ):0            ;1sx �)��):0            2�� ��)��):0            H oy ��)��):0             >F �� �)�):0           F�� ��)��):0            .
X^  ��)��):0           -/7$( �)�):0            $�� ��)��):0            =I ��)��):0            %,
	9A 	W_ ڏ)��):0           �� ��)��):0            M�� ��)��):0              Ր)ِ):0            �C?rw  P�� ��)��):0           A � �	4: ��)��):0            v  �� ڑ)ޑ):0            � ei ��)��):0            �  	V\ ��)��):0           BE"-4+	&"	"0&Gt�� X\ *. ��   sw   6�� 59 )��   ae  (�� ! 4�� h�� Ւ)��)2:0             ^ m r � � bfj�`s�@E ��)��):0            �C&	#
K/4 /�� A�� ,�� # &�� !& CH  +��  ͔)�)$:0       	    ( A i � � � '���8�� \�� ە)�):0           s � �� ��)��):0            -�� ��)��):0            -=I ܖ)��):0            M
 ��)��):0            37'��  �� ��)��):0           �  � �)�):0            [ �� ��)��):0            �
QV EJ ��)��):0           � �,/ ޘ)�):0            5 ��)��):0            0 8&��  	 ��)��):0           348�� ٙ)ݙ):0            3  ��)��):0            8�� ��)��):0            3)@P   ̚)Қ):0           4J*0 ��)��):0            *8 ��)��):0            P)�� ś)ɛ):0            188�� �)�):0            3	\e �� ��)��):0           /0	=I Ĝ)Ȝ):0            :t� �)�):0            . ��)��):0            Ggy  $ ��)��):0           -.C �)�):0            %?:�� ��)��):0            ��� ��)��):0            '$�� ��)�):0            '  �� ��)��):0            1 $' ��)��):0            -(Hgk ^b TX /�� UY #�� 
26 �� FJ ]a #�� ӟ)�)":0             � p�����2&*�� .�� /�� ڠ)�):0           �ms)�� ��)��):0            J4:#> �� (�� 4�� �� ��)ʡ):0           W � ��-B!  (�� ��)��):0           � �		:? 6; 	$) ��)ɢ):0           r �<*54@(&	/&�$�� ��  *�� #�� <�� ?C 7��  " [_ !�� mq &�� KO ��  
	37 [_ ;? 
 @D 7; %�� 3�� @D ]a }� �� dh ?C 	;? RV -�� A�� 	 -�� A�� ]a ��)��)L:0           
       % + , 5 8 @ L M m � � � � � ,Ahkr�s�
. @E RW 	-2 
 �� ��)��):0           0 L � ,�IM ߦ)�):0            
'+	[CL   >G  	 �� AJ  3�� '0 	*3 �� &�� +�� ��)��)&:0       
    � � � � ������BN ��)��):0            � ) ˨)Ϩ):0            �+%3L
;}�  #,  &/ 2��  k��  ) �)��)":0           [ ^ � > ���$eo .8 .�� \f �)��):0           i��&�� ��)��):0            �	K# 	&0 	*4 �� y�  
(2 ]g jt #�� 	)3 &0 ֪)�)$:0       	    �����u1'�� �)�):0            2!$ 69 ��)��):0           �N'�� ��)��):0            ;" �)�):0            �" ��)��):0            #�� ��)��):0            %_h ҭ)֭):0            -&�� NR  ��)��):0           M  �Clq gl %* ��)��):0           � � �� �)�):0            � 
71'"FK ��  ��  ��)��):0           !$25;" �)�):0            -#$�� ��)��):0            ��	��� ��)��):0            � -*�� ذ)ܰ):0            � 
 ��)��):0            �	!
LO cf X[ ,�� ��)��):0            9 	/7 �)�):0            
2)
 	37 
  #'   ��)��):0            � qv��&)�� +�� �)�):0           8 �
 ��)��):0            �8MR ��)��):0            38X_ �)�):0            3$=C ��)��):0            	5	] JN +�� # @D   +/  PT �� $�� jn   $ ��)ƴ)(:0           z � � � �UX^c���$- �� Ե)ڵ):0           k I'/�� ��)��):0            2C'6T�� #( af QV $�� QV (�� 	49 ��)��) :0           � � � � n��@H ��)��):0            � �54($	#		-
!!"=.	.	!B
�
HL  �� �� .��  #�� *�� ko X\ 6: 
GK UY 
7; 9= �� 
 sw  (, *. W[ !�� (�� U��  VZ  �� �� tx �� �� pt �� )�� OS }� �� +/ 
PT qu   
 gk X\ )- �� [�� e�� n�� ��  '+ 
    qu 
  im      !��  	%) 9=   )�� I�� M��   AE #' ^b uy ��   	  	"& 7�� 
	  
 %) 6:    FJ �� 7�� ;��  
IM im qu 	)- ·)Ÿ)�:0       ?    
    % ' ) * + 4 9 B � � � � � � � � � � � =[fghv{|�������������������������������z� �� ¾)ƾ):0            
B$&�� % �� v| Y�� �)��):0           [h��

 DJ ¿)ƿ):0            }.5 �)�):0            
 0@$--


�!  G�� S�� V�� j�� " �� O�� &- ?�� GN  )�� �  

 	18 �� �� 
 $+ 	3:  '  �� 
 	*1 �� 

 >E �� 	 #* ��)��)@:0             & ' 6 ; � � � =hvy���������^/4@$#!!2..�y~ \a 8= 	#( .�� RW Z�� ��   
 
?D C�� 	+0 7< �� mr �� 
&+ y~ -��     
9> mr �� GL |� $��   2�� TY "�� !&   $ �� z  ,1 
9> NS 0�� 
  PU �� @E #��   �� '�� 

 \a   IN -�� 3�� S�� %�� 	 |� lq  27  ��)��)n:0       .           ! " # ' * , / : B � � � � � � � � =twx{����������������6> ��)��):0            �
7ei w{ 
MQ X\ :>   ! �� ��)��) :0           � BET����.BC�� X�� ��)��):0           X �7 �� ��)��):0            �  ��)��):0            GF9\�� GP l�� 8�� ��)��):0           P �x�'. ) <E ��  	 ��)��):0           ��#py v ��)��):0           � �+%�� !�� ��)��):0           � �$	
-"	 	*/ �� 	-2  # $�� $) 
', 	<A )�� @E +�� B�� Z_  �� 38 
 /�� ��)��)4:0            7 L m � � � � � � � � � Ucp�(F-	&�RX 

   �� �� ��    �� (�� 06 ek  gm %+ bh �� ci `f ,�� ��)��)8:0           : J � � � � � � � -^dep����$!-2()9.B�%��  [` I��  *��  !&  �� !�� �� %* HM K�� 	(- 	(-    e�� ��)��)4:0            Z � � � � � � � � 	#2W����9
0 FN �� >F D�� ]e �� ��)��):0           � � 2s�
$* ��)��):0            �
�� 
16 ch ?D ��)��):0           / � � ?;C ��)��):0            ��� ��)��):0            h>D ��)��):0            �
w~ V] Y`  ��)��):0           ?o����  ��)��):0           � �.%L-�� $�� �� ��)��):0           X  �0 ��)��):0            �26`e S�� jo )�� 
>C <A ��  ��)��) :0           N � t[����@\�� ��)��):0              
 
 ak ��)��):0            � @E ��)��):0            g{� ��)��):0            � ��)��):0            4 5&�031(�� �� ��	�	 V�� R�� �� ��)��):0            8 � `{�0�� ��)��):0            M 9(�� 
=A SW �� ��)��):0           _ ` a GL ��)��):0            a �2�� ��)��):0            �  ��)��):0            w�/*4@$&CG.9%K2F8!7N(&
-
2/"
B:xL, >�:> VZ 
 ae $�� dh '�� 2�� pt  �� 59 AE *�� �� s�� ei � B�� nr %�� &�� ! 48 �� M�� <��  �� 7; im 	04 /�� 26 (�� W[ HL 9�� 2�� =A /�� �� os CG �� pt  /3 ,�� B�� 7; fj  BF AE w{ �� lp �� 0��    
	15 :>  $ �� C�� a�� >�� @�� 	 x| E�� D�� # �� ,�� &�� !�� &�� 
59  $  $ ��)��)�:0       F            ' ( 8 @ A F P X [ ] _ c e q � � � � � � � � � � � � � � 	'WY_`bp}�����	V_eh|����������3GL ��)��):0            �&#8�� CH �� JO �� "�� OT �� ��)��):0           8 T f ���!5�� ��)��):0            � ?c��  
 ��)��):0           ���*�� ��)��):0            � >�� ��)��):0            �<i�� �� ��)��):0           � � �� �� )�� ��)��):0           L�.&�� ��)��):0            X -	"7V�� �� +�� KS �� EM V^ MU ��)��):0           6 h � � x�:! ��)��):0            h ��)��):0            d	7- (
 �� K�� 3< 
 �� ��)��):0           l � ]+,�� ��)��):0            � #!�� ��)��):0            9,�� ��)��):0            �
IO ��)��):0            
	E ,0  �� $�� �� x| 
 /3 
# 
=A ��)��) :0             c ����(
2
/]�� 
  +0 TY 
" EJ I��   TY $) 
#( SX ��  ��)��)(:0           d 3Bz�����- ��)��):0            � 4&*�� E�� Z] C�� NQ /2 ��)��):0           0 W � =�:.�� z ��)��):0           � � $�� ��)��):0            ] 52��  ��)��):0            |� ��)��):0            
 ��)��):0            ech   ��)��):0           �� ��)��):0            � 	O !!#GGov   W�� ��� "�� .�� :A '�� PW K�� ��)��) :0           � Uwz���� ��)��):0            ,,4 ��)��):0            �5>�� ,�� ��)��):0           ^�9((% A�� 4�� "�� 3�� ��)��):0           _ ` d e 51|� (�� �� ��)��):0           ^�57�� ��)��):0            ^ �� ��)��):0            ] �� ��)��):0            � . ��)��):0            X 4x"�� !�� ��)��):0           W |�� ��)��):0            �-�� ��)��):0            +�� ��)��):0            �	 ��)��):0            �#�� *��  ��)��):0           ��Kl�� ��)��):0            q !	09 ��)��):0            �|� ��)��):0            a ��)��):0            �5W_ ��)��):0            ^({� ��)��):0            	4�� ��)��):0            !./�� H�� ��)��):0           � �@
0�� R[ ��)��):0             �,6 �� ��)��):0           
8= ��)��):0            U --�� ��)��):0             26 PT ��)��):0           ��Kw| w|   ��)��):0           q � 

  ��)��):0            � 
Fx%��   # p�� ��� ��)��):0           M � Nx|ov ��)��):0            L "�� ��)��):0            �	7< [` ��)��):0           ��$(	2-,	{  :=  ! dg ,/ �� 
 "% �� 
 H��   
 ?B  �� !$ $�� X[ ��)��)4:0             � � � � 	;�������0-(>
5; I�� !�� 	17 4: [a `f �� '�� ��)��)":0           � � � p��	`f ��)��):0            �45�� Y]  ��)��):0             �x[�� ^�� ��)��):0            |BG Z_ ��)��):0           ��
   . ��)��):0            ,_e ��)��):0            -- ��)��):0            /	2; ��)��):0            %>�� ��*��*:0             OT <A ��**:0           t � 18�� % �*�*:0           } �,CN"$xLG>�+�� @C ! \_ "%  JM DG ad KN  SV  
 "��   x�� (�� 
 *�� ��� 9�� $'  ��*ʁ*<:0           A F I � � � � Pdf���S[_|�����+(1221H?�� �� Q�� DH 26  `d �� E�� �� ��*Ã*$:0       	    ^ ` } � � � M���
 (- 	05 ��*��*:0           � y21�� �*��*:0            � #
?6�� U^  �� ��*��*:0           f 
a�09nt �� ߅*�*:0           � 2  ��*��*:0            �bo ��*��*:0             چ*ކ*:0            �1&�� ��*��*:0            2hl ��*��*:0            �
:< �� ˇ*ч*:0           ; ��� ��*��*:0            (�� ��*��*:0            (  ʈ*Έ*:0            (GF��  �*��*:0           P ~ JT ��*��*:0            Xd <H ŉ*ˉ*:0           t � �*��*:0            �
	0; ��*��*:0            �	R] 	-8 bm ��*Ɗ*:0           l � � *5 ��*��*:0            t #
&3�� @�� ,3 ho ��*��*:0           � ����� �*�*:0            � 
7A $ % ��*��*:0           ��u Ì*ǌ*:0            �"G0!(2	"ybl <�� j�� +5 3��  ?I ;��  pz &�� V�� �� MW lv !+ MW PZ �*��*2:0             P � � � 	�������� ��*Ď*:0            #	0)/0@:G Q^ <�� >K "�� |� !�� 1�� 6�� �*��* :0           f � � � #`
# �*�*:0            i ��*��*:0            �+%�� ��*��*:0            ]
jt [e Ӑ*ِ*:0           - K	V` ��*��*:0            6Wd ��*��*:0            Z2/�� ̑*Б*:0            mz� �*��*:0            �do ��*��*:0            �N
4: ��**:0            � (@!
�!�� &* hl �� �� x| �� KO ��    04   
" pt    
15 -1  �*��*8:0             * / � � gx�����������
 CH ֔*ڔ*:0            �@J ��*��*:0            0?4 	,0   uy M�� O�� 9��  ��*��*:0           ? B`��8�� ��*��*:0            � 

 ]c   
 ��*��*:0           � "i1��  ��*��*:0           � �
+* ,7 NY 2�� (�� �� ��*��*:0           T U .]?Z�� ��*��*:0            ��� ��*��*:0            t�	��� Ҙ*ט*:0            � &JT ��*��*:0            !�� ��*��*:0            2 Ǚ*˙*:0            m#�� �*�*:0            �`r ��*��*:0              
 �� y� ��*��*:0           #-I���� 4< ��*��*:0           � �(�� ��*��*:0            	Cq�� Λ*қ*:0            A Bw�� ��*��*:0            e&.�� @H 5�� ��*��*:0           s�B�� Ԝ*؜*:0            eB.�� >��  	 ��*��*:0           e��.H�� ��*��*:0            �/	�� )�� AE ߝ*�*:0             
5: ��*��*:0            �=�� �� ��*��*:0            �"8�� �*�*:0            �MS ��*��*:0            �NQ�� (�� {~ ��*��*:0           � �NO;? o�� ,�� �*��*:0           � w!K28M,�� +�� V�� rt �� N�� oq 35 ac �� )+ ��*��*$:0       	    Z q � � � � L���@R��  	 ��*��*:0             y1�� J�� �*�*:0           =�l9(	0"	2(
#-+50x&� 
),  ,/ wz   ��   hk  ^a 
 be 0�� /�� ��  	-0  *�� C�� jm %�� $'  QT   
 !   ), !�� $��     	-0 dg �� �� 	(+  *�� #& >�� 	HK +�� 
9< VY �� SV �� 
Y\ wz $�� "�� ^a +. 
	 9< ��*��*|:0       5    $ 2 3 H _ d h o u x � � � � � � � � � � � 	&367BEJ`n�����^`cgl|�����;$#91
�!'0$($G=>�?�� Y] sw #�� a��  �� 	$( ��� 7�� ~� 	$( %�� "�� 	/3 uy fj ,�� *�� rv 6: jn  0�� 9= 1�� 2�� U�� `�� =��   ��*֧*J:0           ' B [ _ z } � � � � � n`fj��������	
G0-R	17 `f &�� &�� �� nt % '�� w}   ��  ��*��*(:0             P � � � >���  &!	3x!$�# 9�� 2�� dh �� " �� QU 
	# BF (�� BF VZ 6�� E�� J�� ,DH v�� ��� ��� ��� ��	�	 �� nr ,��   ��*ȫ*0:0           i m � <=l���{|����4
/G&1N	 :O9,=�MR ��  �� (�� gl $�� JO K�� Z�� $�� M�� s��   �� Z_ #�� �� ej Y^ .�� ^c <A ]b (�� -�� $�� j�� 7�� ]�� 
RW fk 2�� af 6�� X�� ��*�*D:0              ! * < C P i } � � ehnyz���hw������ ��*��*:0            ~ 
"5�� .2 dh �� 
15 ۰*�*:0           @ ��j+-�2
BFx1L	���    /4 i�� ��	�	 W\ jo FK  �� '�� Z_ EJ in ,�� .3 38 y�� *�� j�� $�� �� i��   FK ��*ٱ*::0            c h y � -x�����[eqx|���2F!�� �� ȳ*γ*:0           �x!.>fm (��  "��  #* T�� '�� el ��*��*":0            � � � u���� ��*��*:0            %" ��*��*:0            �>E�� µ*Ƶ*:0            �4�� �*��*:0            W # �� */ ��*��*:0           9A�� ��*Ŷ*:0            O839 �*�*:0            3 ��*��*:0            �
1= ��*��*:0            L �� ׷*۷*:0            '	   ��*��*:0           ; ��*��*:0            $2b�� Ҹ*ָ*:0            � 
 ��*��*:0            "5&$�� C�� $) ��*��*:0           ^�  ۹*߹*:0            � >4�� ��*��*:0            �&922$3#
��� \�� A�� Z�� 	 CH */     <A " "' �� �� uz �� ��  1�� =B ��*Ϻ*6:0            _ � � � 1������op����	17 ��*��*:0            � #<�� 
.4 OU !�� ¼*ʼ*:0           B � � ,8
BE SV %( ��*��*:0           �3:pv ��*��*:0            
$>E sz bi ^e 
\c �*�*:0           +47G!2�� 	)1 D�� ��*��*:0           Z ��(?H -�� �*�*:0           � 	# & 2�� ��*��*:0            �2_f ɿ*Ϳ*:0            oFN�� �*�*:0            � ). QV $) ', ��*��*:0           )4Q%( ��*��*:0            K4, 7)1#)"$�FH bd �� \^ ��  �� ��  ]_ ,. vx TV �� "�� #% "�� ! 	AC 
FH eg �� �� �� "�� %' `b _a �� �� ��  �� �� ��*��*D:0           �$'(*.01259BCDEFJLMOR%
]e ��*��*:0            � �� ��*��*:0            2$ )�� 
17 ��*��*:0           mp2pz BL ��*��*:0           mq�� ��*��*:0            1)�� ��*��*:0            2 ��*��*:0            %)$�� ��*��*:0            J"�� ��*��*:0            R.  #+ KS ��*��*:0           ���
DJ tz 
 
<B ��*��*:0           �� %. ��*��*:0           � � 07 ��*��*:0            5X] [` ��*��*:0           >L#$�� ��*��*:0            9).8 ��*��*:0            J$�� ��*��*:0             DJ ��*��*:0           pw ��*��*:0            69!�� G�� ��*��*:0           2$CN2�OV gn 0�� 5< :A 0�� 2�� !�� $�� .�� <�� )�� 4; �� 6KR �� 4�� 7�� D�� H�� \�� n�� mt H�� X�� 7�� t{ ��*��*,:0           	 
     ' < ? A v � ��N.+|� ks %�� i�� x�� K�� ��*��*:0           $ � � �9��  �� ��*��*:0            21�� ��*��*:0            �'.4 �� ��*��*:0           0;]a 	KO ��*��*:0           ":LO {~ Y�� ��*��*:0           n � h% tz ��*��*:0           � IF93��  �� F�� ��*��*:0           � 2FY^ ��*��*:0            � $in ��*��*:0            ��  QU .2  $ ��*��*:0           O � ���QW ��*��*:0            �
 ��*��*:0            �%* ��*��*:0            � ��*��*:0            ( ��  �� ��*��*:0           � <\�� ��*��*:0            � 2&G6 :��   �� 3��  	-4 5�� ��*��*:0           �orst�-  :�� ��*��*:0             % ��*��*:0            �  ��*��*:0            �]j ��*��*:0            �'�� [e Zd ��*��*:0           n�# ��*��*:0            !9!�� ��*��*:0            � ��*��*:0            �2=�� ��*��*:0            o��  ��*��*:0           7�
	  
    +. ��*��*:0           
	
,0 os ��   $ ��*��*:0           	!�� $�� ��*��*:0           M �pw ��*��*:0            ���   ��*��*:0           | �	4�,)�� \c ��� I�� ��*��*:0            O � ��{�  ��*��*:0           � �"
-1 *�� ��*��*:0           � &F	! 	v	CG *�� d�� 	  %) 
/3  �� 
 <@ lp �� 8�� BF  HL �� ��*��*0:0           > i � � 
)Zz����g�� ��*��*:0            ! 0*�� ��*��*:0            �F�� ��*��*:0            � �� ��*��*:0            �-mt PW ��*��*:0           -
 HP ��*��*:0            -*�� ��*��*:0            $ ��*��*:0            � G�� */ CH ��*��*:0           P � �ag ��*��*:0            s Gnt ��*��*:0            P nu ��*��*:0            y  16 6; '�� ��*��*:0           ��3>F ��*��*:0            �K i�� T\ ,�� ��*��*:0           q �B9%1+C 
6$F
G�,/ JM mp dg I�� 
/2 1�� 6�� be  `c ,�� [^ lo  
 
/2 $��  	  !�� 	47 
 -0 !�� := ��   ��  
 <? p�� GJ  ��*��*R:0             , _ e } � � � � � � � � OVor�����SZfx���� *9&<<6�� LP 4�� #��  ei HL vz  ��*��*":0            _ i � � P�S8< z~ ��*��*:0           v5I�� ��*��*:0            ^ ��*��*:0            j &�� ��*��*:0            ��*��*:0             x!9$,"G&���  >A FI 
8; #�� ), 7y�� ��� ��� ��� ��� ��� ��� 
 ;> RU �� ;�� &) VY 9�� ,�� =�� �� cf :�� OR  ��*��*0:0           n � ��T|����������y� }� 19 ��*��*:0           � ��:5�� ��*��*:0            hW[ -�� ��*��*:0           N �
$ rz ��*��*:0            �"' ��*��*:0            I �� ��*��*:0            ] 	P] ��*��*:0            )	0�F!
03L�
.2 X\ ae >�� }�� &* VZ ae #�� rv @D uy 8< � uy (�� T�� �� �� �� ��*��*8:0           � � � � � )Ubhxz��
`t{�<3mq vz ��*��*:0           � {xG2�� y�� ��*��*:0           |�<8Q�� 9�� ��*��*:0           � � 	8? '�� ��*��*:0            �9"�� 	 ��*��*:0           Y _ 
)#+  �� 2��   8�� �� ��*��*:0            #���#(�� ��*��*:0            �	 ��*��*:0            x2:   ��� ��*��*:0           [�|
$Za *�� GN �� �� ��*��*:0           � � �	$ ��*��*:0            �	%O>&<   
18 *�� O�� 	$+ FM -�� fm ��*��*":0           9�� w����=M�� ��*��*:0            �  ��*��*:0            �@6?6
9>  UZ  �� ^c �� Z�� L�� ��*��*:0             , A�Z�GL ��*��*:0              ��*��*:0            � 1x�� G�� Q�� ��*��*:0           } |�4($-&C#G!	0F!
!('9"-$'%-50B2390	3,.�3�� =�� ,�� 	 jn lp �� D�� O��  $�� `�� hl bf *�� !% D�� p�� 	59 { )�� "& �� %�� '�� uy 
.2  &�� 0�� 7�� =A 4�� E�� &* DH ae 9�� #�� �� (��  .��  $�� ,0  F�� ^b 3�� os #�� ?C QU  �� Y] %�� 
 
59 
26 ^b 37 5�� uy � �� 3�� ;�� 15 	.2 9��  0�� �� A�� I�� 1�� A�� K�� ^�� 
OS pt !�� �� 9�� ?�� K�� #�� G�� :> ��*��*�:0       F     % ' 1 6 8 A B P T Y Z l � � � � � � � � � � � 	&2[bcfhkopv������������� ^`egm{������	�� ��*��*:0            | Ze ��*��*:0            ' ��*��*:0             ou ��*��*:0           �AY ��*��*:0            &   ��*��*:0           =j�� ��*��*:0            �
W[ nr ��*��*:0            � - �� ��*��*:0            p ��*��*:0            ] 20	
	 6+�� IO �� Z` V\ Z` LR !�� ��+��+ :0            g � � G���(5 !
$$�	6= W^ 8�� jq 
 DK FM 

 DK 9�� pw  ��   U\ fm 4��  ' -�� � )0 ^e $+ � ��+��+8:0             F s y � � � )Us�cfp���!;B �� .�� !�� ��+��+:0           � �!	EI A�� Ã+Ƀ+:0           i�'�� Y^ "�� 	 �+��+:0           � � �K*CG%	�"C


/+Ox�A�� ei d�� 

8< LP "�� =�� L�� QU B�� FJ ��� *�� �� +�� PT �� &* ��   $ 	26 
 ;? ,��  &�� %�� ]a  �� *�� M�� F�� IM ��  s�� 
HL  $ 
TX os ��+��+Z:0       $      A F O P T e � � � � � � � � � "_qx������iw|���(-
'9�� ci 
 HN �  ��+��+:0           % � \p�B#�� "�� #+ �+��+:0           W��*
*@0<)+/�
9@ @G AH �� N�� W^ e�� FM RY ,3 \c �� u|  !( OV �� 
 �� 
 ho  �� ��+щ+::0                   0 � � � ]o�����0em nv ��+��+:0           `�1D�� Ջ+ً+:0            �4"#/.A  RW rw �� Z_ >C HM �� ;@ <�� ��+��+":0            � � � � P��K	$#/! ;�� HM |� ', !�� BG ��+��+:0           ? q -U���!#�� �+�+:0            )59�� ��+��+:0             "  ��+��+:0           J uF)�� �� #( kp ߎ+�+:0            � � x �� ��+��+:0           H � \e ׏+ۏ+:0            �0�� ��+��+:0            �xq�� ��+��+:0            |2�� ʐ+ΐ+:0            m8ks �+��+:0            � >+%#	(	+2	B�/�� <�� 
7< 	 
 49 �� af 
:?    $ 
 	"' .��  
 BG  CH in �� #( 
 EJ   �� (��   �� �� <�� CH   $
6; V[ x} �� 4�� Q�� ��+֑+N:0           ^ e f � 	$&.CEFObh{��������m���+%61,y �� ��  G�� .�� ��++:0           M ^ e CZ�@B5��     }� l�� $ ��+��+ :0             � � P���(#	#..8�� u| $ ") 	,3 3�� '. ��+��+:0           ` f � � 5��<&)-2r0�� 	/4 #�� 9> UZ rw V[ +0 �� 
/4 "�� �� >�� �� */ 	/4 LQ �+��+.:0           < � � � � #Adop����&�� ��+��+:0            -2 EJ NS ؘ+��+:0            � �4&�� ��+��+:0            W 
     ��+ę+:0           }~��
	C
F175�� 8�� E�� I��   ?��  ��+��+:0           A ��x�BE �+�+:0            E1�� ��+��+:0            �7$>�� �� �� � tv ac eg ��  ��+ɛ+ :0           $%(*H!ot ��+��+:0            �  ՜+ٜ+:0            *FS ��+��+:0            "72�� ��+��+:0            $8�� Ɲ+ʝ+:0            3�� �+�+:0            7l{ ��+��+:0            M1*�� ��+��+:0            2( ��+�+:0            
! ��+��+:0            '$�� ��+��+:0            ;,,�� џ+՟+:0            �
CJ ��+��+:0             ��+��+:0            #		7C  +Ơ+:0            ))�� �+�+:0            J7Yb ��+��+:0            $CL ��+��+:0             ء+ܡ+:0            N_ ��+��+:0            
CM ��+��+:0            �! Ǣ+ˢ+:0            D)"�� �+�+:0            1|� ��+��+:0            8F ��+��+:0            55= ޣ+�+:0            Q�� ��+��+:0            H/? ��+��+:0            . 6
 -4 

NU _f (/ �� 3: &- @G Ϥ+ߤ+:0           '0CHP�� ��+��+:0            '1 �� �+�+:0           FPz� �� ��+��+:0           N%
DP Ʀ+ʦ+:0            C[d �+�+:0            P7/�� ��+��+:0            $ t| �� ��+��+:0             r� �� �+�+:0            'Xd ��+��+:0            $&* OS ��+��+:0           �
05 9�� �+�+:0           �g%* ��+��+:0            *�� ��+é+:0            *
"       AE �� �+�+:0           �(.6R=@ 47 ��+��+:0           /8*1 �+�+:0            �#�� # ��+��+:0           9$#�� ��+��+:0            9)B�� �+�+:0            &�� ��+��+:0            1 0; ��+��+:0            &2 Ԭ+ج+:0            M�� ��+��+:0            aj ��+��+:0            6

be ŭ+ɭ+:0            x~ �+�+:0            !$	X[ ��+��+:0            ek ��+��+:0            
GR ٮ+ݮ+:0            QPT "& ��+��+:0           5D�� ��+��+:0            E
+##=�� .�� {� :B   ԯ+�+:0           � ���
#%Z`h px �� DL T\ mu  �� -5 �� �� FN }�  ��  ��+��+":0           E G � � ����  ,��    ��+ɱ+:0           � �	�� ��+��+:0            O'fn ��+��+:0            ;))�� в+Բ+:0            1 ��+��+:0            &
GQ ��+��+:0            (* ��+ų+:0            �7B 8C �+�+:0           ���� ��+��+:0            %)�� ��+��+:0            J
*. �+�+:0            1	)* 6�� ��+��+:0           ��1#�� ��+��+:0            21,�� �+�+:0            2
fo ��+��+:0            /
 
%QV $) ��   ). ��+��+:0           &  ��+��+:0            *
	Va ��+��+:0            ) �� ʷ+η+:0            J �+��+:0            -3G .2 .�� s�� ��+��+:0           < ��8�� ݸ+�+:0            3?8�� ��+��+:0            �*%�� :? ��+��+:0            �!�� �� 47 ܹ+�+:0           7*/ ��+��+:0            "�� ��+º+:0            R �+�+:0            �>I ��+��+:0            7.�� ��+��+:0            $7"�� ֻ+ڻ+:0            $"AL �� ��+��+:0           ER!/ ��+��+:0            ($. Ӽ+׼+:0            &EK ��+��+:0            , 	 ��+��+:0            "" ½+ƽ+:0            "
	>H �+�+:0            *1 ��+��+:0              ��+��+:0            - ־+ھ+:0            !�� ��+��+:0            *	 ��+��+:0            5[f ǿ+˿+:0            5y� �+�+:0            5% ��+��+:0            6�� ��+��+:0            z� ��+��+:0            H')	
Dbf 

;? cg �� ��   
$( SW +/ QU  ��+��+":0           (47;<J
JP "( ��+��+:0            83�� ��+��+:0            318/�� -�� ��+��+:0           23""�� ��+��+:0            R
/7 ��+��+:0             }� ��+��+:0            
 ��+��+:0            3? ��+��+:0            $$ ��+��+:0            L' ��+��+:0            ; 
 ��+��+:0           ,�� ��+��+:0            �	JP ��+��+:0             19 ��+��+:0            D U\  ' ��+��+:0           (DI ��+��+:0            P71�� ��+��+:0            $!�� ��+��+:0            �� ��+��+:0             
*/ 
KP �� 
', gl ��+��+:0           '8& ��+��+:0            %@J ��+��+:0            76�� ��+��+:0            $#jy ��+��+:0            9! 2 ��+��+:0            	DQ ��+��+:0            G
"0 ��+��+:0             ��+��+:0            O)]e ��+��+:0            11< ��+��+:0            G)%�� 3< ��+��+:0           1M|� ��+��+:0            M
4= ��+��+:0            " �� ��+��+:0            R+: ��+��+:0            *7�� ��+��+:0            $73�� ��+��+:0            $'�� ��+��+:0            ;)&08 !) ��  	NV >F ��+��+:0           AGJLMO,$- ��+��+:0            �#)	3$( �� �� !%  
)- X\ %) ��+��+:0           )79<DJch ��+��+:0            !]b ��+��+:0            %)V] (�� ��+��+:0           GJ7'�� ��+��+:0            $p~ ��+��+:0            *)�� ��+��+:0            1'!�� ��+��+:0            ; ��+��+:0            $!�� ��+��+:0             
 ��+��+:0           �� ��+��+:0            O��                ��� �� �L'  543 % xA '0A ������������  nG� e 5  -820.,E%  $x1%   32 �w- 	640C N)  x5B .l0A �� ,0A )0A � �� �iA� � 9lA���� 1 sA�� 1iA����j to�W  %(sli �������<�?�� nb ��  ) iaB�'   sdm��' gli� � Ӈ:oieCƩ2   &Espl ����G������ '�lA���� % sA��u' 	urm#�������- rm���  8>uoie O dA� �ie��� ��������� �� , sA�h d ie!] vo J"l!A��  +; 
uiB�H�  /4<?Ptrkihc � %aA�� � JaA�u \ vo!�)  tn! R�e!A���  Q�� i  �srieD� �.  ]oi!�������� %�tA� L'  sdB�� � +oA��ŏ tc�� ����"�    � oia" ���������˱�n%��  GNd��vomda �jA  �sie!C� ����� ��J%  rmb´ dc�K ���������X ��\%  rof% %  ie!�� /rl!A����L sg��Ǣ   > oig! ' sA  '�y-  nmd ���p �� '�A�����˱��� ��j �� �ş���u' %��tla� �������/  �ld!�Q*   ��sie!�� S sA������O �- �L'   kge! �K  �si!BK  �wc!� � )tA�5 X  ykd!� �� oaf ��� �� ����� (nA� ���� ����� )�n!A�� �ș'
�oheD� ��y ����˱����Ǳ�s�l-�o� X   KNTx�����wtsrmligea % zA����˱��� �������ϧ� �s' � �zc!C����� � 9 sA���% ���Q ���v� �   upoeba� ������V �T%   � yoi!�+ xxti!1 tie!R zs� yo N'8lhB' �iia!� �� �˱�% �aJ  tmw ����ݱ�q �a( ����  �� L tn! 3 sA��� 7 sA������ 'pA� �ȉ oi� �� ���b7 m   tomb!-.��q��  {;DRY���ytsonlca	� � R-  � sia!C��o ����  �  �sB��Ȓ   )tb"�9   sd�  	ecG   yi 3�e!A�� C�l!A������ ��� vpa�  ��� O  'fsrleD{  �pi!� �% ���d!�����L ĀT �����������%  �a� ������˱�����ϧ����% */>�ysnm1 �����V �� iuA���� %iA� A sA� ������r 
na� ��Ӹ Ā����� &nA������ +lA�����v �sd�{ �� �2  yn� �Y ia� � ��\ ���L ia- fc +iA�=V�aQ*  &>Blr���trokgecba	� � �ݱ�% �l���� j=�ie!B) y  �a!< ���y �� 2iA�~ � tr!I ���� 5 dA���\  � pie!'   ie!� rm�   +2uoe� �������3��J�   `fp{ysplki8 ��� ( sA����p v nm!� ���� �� J% snB������ O   'riea' Ato���л ��W ����1  si�� � dA ��Ŏ) �� onc!  ie��7 ���  nm� 6ohV' OTtsg� N�li!����� �� s=qie!B��X�   oea� � 1nA  yr; ��  kfa� � �����Ƽ���� ��ϱ���� � ��������% maǱ�N' %�ra� ����� ��������� ������wJ%    �	  spnlk!��%  	�m!���>�=�=�<�:K7�5>1a+�$vS��!5��	�)    ? {  � � 2�+I��AC}����*	�yxwvutsrpnmlkigfdcba"� � K sA�� �ǖ ������ �� ��  ��vO(� E   
 \	   wupigeb"G�U ��Ʋ ���������ȯ	 ��% rb� ���xL 
  �ma! ~S�  �s!BǮ �	 ie!���-	 ��'  ig ������� ��J%  roe �qQ  ld!B 1>a!A�� 	ie=�9 z,
�e!* ������ N'� �l!B��� � %Kt!A����������+  �sl!��d'   ��ia!�5 	  �a! �'� yn!B������h ����� �7	slB�5 ����&  lk�/ �r%   Jtmd!�S �����   (  ) V �vlka"��O�zU*�KqkD   � � � � � �  N  T��ztsrnlkhdc"� �'  yi�0  �ut! � sA���;   �
sn!�� O sA���  �ie!9  �vl!�  � ia"� ��������# �X1 #	#	 lki! f-  �si!B?  *tc!��  N ) n zed"Cm �� ��L'   tlb!E
 ��  ti� � ��	 �� 'iA���	p	�~�;
7��   "9cu�����ytsrnlkhgca	 �" � sJtgB% ��sl!� '�n!A�%  	sl!s � tr!q'  igeP+   �gda!� ����� 7 nA3  ie %�n!A�  9� \ ' � 	 �ysnd"D %��!A�����X
 ����,  mi!������� ��Q ie ���  3�s� � � w   , 8 0>f  �lkiedba"Hp � (iA�O���   [  � � � ztrnlg" � %bA�R � mc!%   rd �'  K sie!C� / sA� gc% �  re!�� y     �	1 uoia" ,�e!A� f9  �si!B� + sA�����P 0 ol!�/   1yi!� �) ea!B�� �w
 ��0��{D� T -       	 ! �7 C +yzyxutroida"
 e3rie!B��B  ,ni!� � �n9  " sia!C��( �Kle!� �o  rnB� �� I sA�r T ie!��"U   "wuka) �Its!�7*    {I ^ uoiea"� �������������������������������������������������������������² �� ��� �� 濂�	   ��s!C �c  ��sie!C&   td�� ����ұ���ʱ�����/  L�b!� � L' ua!B� ��� �ӟ��s �yn}X  'uka �� �� %�l!A�oJ% 	 ulda � 'sA��,  <da!_ �  �  yiB� � ����� ��ӧ�  �uN'�m�x)� V 1 	 %;Z�����zytsrnligfdL� �� ����˼��� À� ����+  mk����x? ytr' 0���
 �% � �a!��Ǳ�  �1�0�0�'�'�"7�1�
�   oO a�1�
#��yutroliea"K �N  sdB� { ie!ξ ���� ������� '��!A`  rd  �?  � sie"C�' #-lic� ��% ~ ga!�O ��  �O(�
 �
�da"CW   iyi!��%  cb! / dA��� �)
taB� �� 'iA �lA  ��sfe!C� �d=`        trged" ] sA� ���Ō se9 �/ e  ie!ƈ=����	�-  %^����utsrpnmlc	 7n!A` ��% ��li!����� �����;  
ia!�� ��Ň �[6� '   ,vsrnl8 �Nie!����O �  �y   sdB   ie"W ����  ngc� �������' � ta!��u    ^ D rpnl" � � �ȗd   R�soie!D�� caF � %iA��+ z  ie!ƑA � �soi! ���� ��mD�$  &2Vuroiea7 �����1  ml!&  ul!�<	 ��� ���� ҭ-vtrC qYe!A��'  �`sri! �V/��uie!C %kl!A� rn� � va!� � wL&  �s!B��g ec% E�ie! N'�sl!B�q'   �snc!���  %>foiea� �  Q+u   �sb"C�  � ie"� ��% ��vo!��¾ ���'  ec!�& |�oi!�����N ��7 ��on!��-   � <soie!�*O   ?  gca"a 4ea Y%  �sa!B���)    uldX/ &�;iea!�� � sA ���% ������� N) spB�� n,  Wsi!B��' d�ie! ștO   )�tsmi!D� K�l!A�� �n  �on!/  ie��  � tc"�0  � tn"�M��   2:Xeuoiea +��!A@  Vyi!� ��    ~ trn" %n!A� ��L ie� �9  rdB7  *ea!� '�t!A�� f3�  ld!B� 4 ie! {�i!A� xt/ \[ca!0�   /iea �-  �s'!B���5 �  ie!��<�   �  usn"� ��¬ �' sh� ���N oe 3�a!A����' ��c �  iea!��<��(  ?j���uroliea#��_�    ����pmifeb"� ���� �� N sA��? Y  rpn!-   �tc!����'   )uea ; sA����� * sA�����%   �tc!�¡ ��ȋ  tb! + dA� ea��J !gd N'  �si!B���\ �L ��ie!ƈ[�Q   Rurlie� �� �� f sA�� �^'   4sie!C��= ea3 ��� ]7�Sie!B��C   [tc!ˁ  se�� sd� ���� ��V ��' G0on!L  oi!��% uap $ra �+  �sr!Bݶ u` pie!�5�l   KQzutoieV � = sAC  rd  #� )   � sie"C�7 #ig > sA�� � xn! <l!A���    �oie"�˝ � ���6 �  oia!���  4Eriea� ����' N%ea!V � ts!N rn�  ~�
�,���%  % � >di��vtsngfdc"H < sA��R ��e rk-   �yi! wP)F�xnli!C�� ��ɩ sc '�i!A��� 
uew;  ;  rpe!! � �� �% db· �� 'pA� ��I  . sre!C�Y �Cie!�' ��sa!�CP   2rpnc f7j�ea!B��  %0�-�-�+F+�*(�	�@���  b f � � � �Zkx}vusrponmlihed"M N'  Iui!B )�e!A� S.r-ie!Bρ3   ;wsf! ǀ  sdBd; ���von!�)  ~  oie"�� ��' �  oa!��a �h ie% tp� ��ȗ �] nc: ��������^7q�    H B l yuoiea" 5bu!A� �� 5|l!A���T ri� ���� �� �\5 shfC� meA�� %tA 't!A�`   .Etsrl3 ���� �ȟ��������І
 ��' ��  �Z�Z�W�W�RR[!���g��   # � .9����	�yusrpoliheda"M  �5   8rl! �������� %��!A����� 'nA�� ��`5 dd  �gda!D� ��� � sA���U �� ���  ��y�o	   sfcb"D�: �% � yk!K � �a!% �  �n!��w �m��)  9re! rI|  �s!B  �	fr	��}!� E   D p v � � �� yvtnmlkihe"J �%   'yi! )lA� �� f= �li!B$�    nldS ��ie! )gA�1  ut M sA���R  �	sd! 9 dAj + ie!���� ��7      �roie"� ��-  h�c!�( �?le!%  �pm! -�e!A���  ����� V)  sdB � ie!5 nc~R  �$ iea!� �%  ea!� V'  se!B� % dA��' �  ie!���� ��}N'    �A�ysiea!E��L vb�} 08iea % rA� 'tA�2    [oea!� �����M(   � yie!b   �yi!�  tc�  t5q   U sie"C��z �- �Uli! 'bA G sA���   �� � 1    ��
 smiea"E��! ���  =Arlie ������' ! vn! '�i!AL si j9  sdB� � ie!��� ��q  �Qsie!C�+   sd�9  
rgO �/ �� ����% riiD�  ;tpic T sA�� �\5  H�sie!C�C �G ��' mi� rc ����ȼ�   	2rea  L� }  �s"B>  rd  3 X� mie"C���; �" �  �9 	oieCv �z �������a ���- �k���| ���ȍ ti��)  �l!9 7ie��  m>[���
?
u	+�[�ym�A  E � � 2T�� N]�����vtsrpnmlgfedcba"P% ��te!��� �O rn ��t lg - sA� �f�li!B�  tc���d ��ʫ  ie�D �	 �+  �'  0me!'  mk �� )�l!A���. ym�� 弁R-  H  Msolie!E���� ����'    db!v �� '}e!A���� X1  �se!B�N  % vun!~ �1 b K on! Z3 �ie!B��d/+   Buroi�
 �z ���'  Ngd!�F ��l �L ol�  �5  >nl! t dA/ � � on!� ie����o ri�_�zd   3D UY�tpokeca� �� X'  $si!Bc �Ğy���~�sE <�   �    � (?CG;!wzyvusrnlkgfea":  � /aA�������������  c4� R -   X!� m! �!siea.'"F���ГJ%  }  Outsk!� ��P  ��U ��  aA`  �  �e"o! ��c ��������e �!e	ie!� � tl!� L'  5!se!B��� ) sA���{ �� tsl�: � )d!A�ǟ��	i	Jh+������\     7   L W �!\ h u   z � �zwutsronmlgedc"" �' " wi! ] nA� o" ie!�:T     8  yoia"z ���� 'dA�1 �"  mb!X �"�"on!%  ie����Ϧ" ��: ��~ ��% >  ul!V  pmJ% umaM ���! ��ӟ�% 	�k�^! Ā����q'  
 �"gda!i�� � j   /[r |yrpmec P+  psa!B�u  oi�ŋ ���ۚ sn! �Џ �����% md�s ������������T �m' +nk% �#�yd!���# �����Ƽ����! �u �) yl��! �R% � �mec!˼������J +8�zrn� R��J �������C�AA>�=�<�2k2s%�
u
P
   
 � � �"b�\$��N#'+��yusroniedba"+ �#  sr!�{  yi� �# nl!K $  sr!� �$ le!��     yie� #sr ������ � &sA�
 �ȟ�K �k°! ����� -�"i!A�V  ie! L' ?"si!B뼗'  &@rnmcb� ��b7  �#=ytnl!5 %�$on!���ʲ�%     D%%   uigea" `1�j%nl!B�� [iA�� .%l!A+  �%tc!����Q �ǅ�   oieۃ �� %nAS ) ro!� �Ƣ � ���B  �mg!' �%  ie!���� '8#z!A%  ieN nm lE� &�'!B¯\� J %     2 �%B G siedba"�$ �0% ��� ''&y!A��V ;& ta!�V' c   upba! g8  sdB��ڇ$ ����� ���V  rn!-  �$ud!' oa�% �� �{V1�! �%uple!D%   �$yi!' ��&jg!J rmt& �� j%  m&si!B� �' seB���" �% D&�%ma!�� V sA� �& ie!���! �j &
X!tr!' ��1s    '  rlie" �F  �%sa!B��������  ��{�����7� m   = �#O [ _ w | � � � vtsojhgfedca"L& ��)  ='ia!�3' � | sA��W 	rl[' �ň ��{# �+ oe +�'l!A���G  �'tc!�� ���P y'�ie!���5 ia� 8   2Ctspc oJ%  K%�'nld!CȻ# � -tA��R  e%  ysnk!� ����� ie% nz�k!��� '   7 tmkcc( ��c ��� Ƈ/�!   usd!C �TtiB  d� o �'w#j#tob"C  �yA�  rnL @(�%ie!���  oe�  �v" � ` sA��� 	pi; mc'   �'se!�<( � i)  ~'sa!B�� 9iA�~W ple�" �����V  �$<(  uihe"G �Q �(�(on!�X  �( iea!�� ' dA����4  rc" ��� �3  �($sie!C�� %f(e!A��g	 �� )rA� u: `%ea!B�, �"�)ie!� ; dA���� V/  �si!Bs tiT�   )rnc1 K)u)ea!� +k)i!A˗# ���R ni>) ��J% �)   iea!'  Q)ri!�w oia7 �)�)vo! j3 *ie!B��¶yC�f    �% W b � roliea" )�)i!A' #�)ob!�P sd �� rn '*i!A� %cA�@  reD$ ��  �D��^��9   E .4f�utpiheca"H� ���)  2*ie!��  ,1�0�"����f�B	�O|>A  �* l�1Ae�2'�R��yxvtsrqnmligfda"P� � P) dbB+ ��X  ya��� /�)o!Au   tie�' �  sA��  �� � � C    	 �*R*usoie"E�'   se1   +si!_ r+ sl!- �+
+ea!��y# ��R oi( � 'cA 7 kA)$ � '.A���- "+  sr! UeA� th- :+�lc! %�i!A��S��vJ�N�+��  �$ 
 *% 9 ? I b v ~ � zvutsrnmlkic" O*  �#sl!B � sA��Ӽ 
tr* ��+  sbt c' ld!����  �(�+  wtlea"1
 ��7 l'�+uh! � sA�   )�+ tle" ?�,l!A% �%  ie!�h nl К?  \,sia!C %(,s!A <�+e!A�g �, ts!�g$   U)  ) igeda"] ���%  tsf!ML   l,   sme"  � T r#�,�'tie"C��d��BN     -1 5 � � � xvtrnlge"i( �5 N-�,li!���+ �*�pg! %-i!A�'   |,rd!�J  woaH� _   �,  ( 5 uoiea" d;P-�,ie!B�� sH  ]-si!B��f'  �-  lkd! S%I*/-tl!B'   tdB- ��# ��uN 
oie V)V-  ts!B��# �� �1 usaC T/  -se!B���,V '     , �H,wmgec"O   B-rn!�* ��I���     " q | � wusrolc"�- �� ��� HwA�j,   k*mgc! R-�.  ld!B U�.l!Ao  � tc!��ӭ� C   .+    sqed" 5�*e!A��m �$ �zng!��  �  L uoea"T � A yAU lf� ������ �
/i!A�  i]  saB��� wtA' �.Yia!D%   (dc.2* ������zU�   �%=/ 	 G tsrnl"L% q-���tl!���Ǳ�&�!�!��g{z    �,� �#R�usroliea"	- ��θ �ףR%   �/q/utmi!w+ ���% �- rc!% �*  sk!�J me2   sdb Eoe�  Vtl!=  �% ia"�Y �� %lA�����b  (  tie"-0 ����X' � -lgd!% �  yr! %f&i!A����� ������s'  	  0tsie!�u+ ����������� \%�& tl!B�§�gB   J-   �mie"�+ �' �& me!�  � ] 0   tsi"C� �������+ ��J%    �.rnm!�& ��% n yr!q ie���o7I�� '    - 6 X � � �0�ztronlc" ��%  pl�V �����0 �� %lA������o% �  sie!i' �� =mA  �   snBI  1 ie"nq '     $ K �.vtrdb" J%  :0sa!Bo+ �v sb%  ob�) �� 1[,�!A�Ϡ  gd  ��k8� �    �1v1�1o0toniea"F %S)f!A�K x. pc!' g1  sr! CeA�) ���� %�Aլ  �1 gea!g/ �\ z$71pn! {V/�.  �1tsi!C� wu% �   "&Roiea p5  sdB������ .2i!A�� %}.r!A�e� �     	yrmea# �t0 ����) �����˼����������� )�0b!A� �����J% &   zkd!� �����% &�*sn!�П�' �n���{- !8?�med=& ��� '�0i!A���'  rn% 9)  nk!¤/ mig���%   1nc!�Ǽ���@ �+ ���L'   `)�ld!�r�'   *[�ztsrnF1 ����˼����+ ���м���� ������' ) ie!�� )�l!A���� 7lA���qJ%  )4�vnlc/  Q��oH�9��B	�    26l�8��zuronliea"
�3 ��- ����% �i L'#2!.lk!B"4 � %wA '1k!A��L �1 �a!z.  kfe�0 � k:  sdB� �3 ie!  g@e   yslC '4n!A �/ siB�  gd x;  �3se!Bˡ  yeɓ/ � �7 �we!B % iA���H. ���4 ��?�   mied�+ ���qL%  �4  F%�tea!% N0ea!� �������/ �����˱� oJ% � �tl!C��� ���B� Z 3    ' 1 �1I ~ � � � � �2Ayvtsrpnmlkfcb"E5 �' h0]4ie! �AleB ) yA�8  &5ti!}) � 0bA1  td%   �-yi!�k�   .vrld% �3  ie!���� M' �+li!B�� d?  y5si!B�  pd' j�5�c! %�%s!A )�5i!A���% �'  i&ia!�. ��������2 ����t&�~O�P      ( / *,9 !5L g ytsrpnmleda"' �3  tn!�}T 6   ied!> ���� �Ku6�5le!B� )�5e!A-  3td!- �3�1id!��D& ���» �����% 	tmT td � ts! `7'6  ts!B 9�2b!A��A��f��    
  o/K \ h o �tsrnged"^3 ��> ���4 �� �� ��������'7 ���% ul��yDxB� � � X /         �6$ )796�*)7* �wutsrponml" - 5A��  �~ tm= �P ;7 ba!�' ���%   <7si!��� m(   zrnm!�2 ��׎ ����y4 �/ �N' 	zsk���������    # T g � �t�yutoieba"	 �G  �/sl!Bp7 ���&   rd'  �7ec!�  yi�% -8 o1tfc!��  ,[ +1nmaC_8 �  b/ ieB( ���
# ������� 'hAN 8 ie!���� �� �����/ ym�'  �1tm!/   _8ie! %}i!A�ȟ���� -tA% }8�id!�T  ie' H ��i! ��+-6  ynl!C� %�n!A %iA�� �)L6 yl!B�����.7 ���(  �0un!�����       I61 ^ lkihge"3 >4M9ie!� GE9l!A����t S# rd!� *`8e!A��8 �O tc 3 sA����  � e !9~8 iea"C��� ]mA��    �7 yie" O�9l!A�  �9tc!���}$ �_  sr�# � �^9  /9  smd!C��3o   ?9  uoe"�hv   'I�rola$� Z    � �6� pmka"Y���O1 ���' ncp3 ��N �7 rd! F sA� �9 ie!��Y+ ��% �9 mg! U sA� �9 ie!�P2 ��+ :9ia!����   mda��P�   3BTroli -�:l!A�� KeA��� +�:e!A�'   �9xpe!�x G:l:)1oie!��R  �����  	vc�4 ���V  (uieb& �% �' xv% J4�:tc!���D ;�:vo!��i ': ea!��S   �9ea!�������Ə ����� eaQ�   ":rol�: � , ;i!A�' 	sn�(6 ��1  �:ie!�� I�;l!A����S# ��  � 8 nA�� ˙b9 �;Y8  �lda!D�� % nA��  �\ 	�lB�% �""2rc!�4 �+  �;gd!&   �;ea!�� j.�:�;ea!B�a ���' �; ia!.  .:tc!� nl; ��4 �~ ����  	riea� ����  \@��/ T`nxutpieaF{ <  ie!�� e< ia!ǳ5 ����� N)  ^4sa!B�� 1iAW*  �<�;tsd! f=  �8si!B�� g>O<�;ie!B�� \ sA��< �� ea�+ ��� Y+  �<sl!Bϙ ?< ea!'   �;sa!�e4 �L oe�r! �-  �;ia!�Ja�   '=CWdvpnmfea�   ���rnlg�5 ��� N)  sdB� �< ie!�����  rie' �0j<ui!�, /=  ie!Q ~< ts!�< � qL'  �< smi!C��'   P6srn! b1  sdB� W= ie!�ύN   Loea��[�
v
I
$
�	R	����L    e o +4B:  8<GXm��-�vtsponkjihgfedca" 3 cA ����� ��G �=�=on!~  K=ie!����7 �Ӷ1 �������3 ��sL  �9-< yrmd!� M ie!�*� N )    * �>/ 8�;F   tsponmie"�0 �����-  rmN�   K9   �ye" �h?<r:sld!C�!< �����&" ŀ��� ~5�<  �l!B 'rA�� �< �l!���'   �>id!�� %nA %iA��oJS %    : �ynlk� � R&?d!A�C�   G5 	 tie"���" Ā� Z%�<;nd!B %iAe7 �'  u5id!�%  ie�% )rmd�  �R - �5   tle"C��. �?  vm!�����4�2b1U/+/y.�,)�(�((�y�t�M %     ^ } � � � ��q5��p*GM�=���ðzytsrponmlkhgfdca"�5 �}? ���� )sdB�-  <@vr!! �� �N@ �- ?@ ea!��%� � T /      yuiheb�= � %dA�r(�   =  == usoea"1 �8@ea!�@ ��0 �& �:\@ma!% rk�����< ��Ƙ' M1  ��mdb!�= ��" ��ɏ= ���������' �  �k!��. �a� ���?  ��d! �%nlB������' @�t� ����m= ���' +A  nl!��% �l?= ���N? ���������'  	"nb!�< ������I��gA
�� � f    
   & @ G � � � � �8�yvtsrplfdb" �U  BAsi!Bɺ= � h5  ieB�� '�4n!A�  9� V /  	  snml"D� R% )0da!B% [�Ami!88 �=8 � �wA wsbC\���     dA Z yspne"� ��A �%= ����� %,:n!A� sN'	sliC�+ �; ��� T%=BV8ld!B�} +@ ie!�@ �T/ WB    lie!  �6-   r: ysnl"Dȟ�  %��� 5 DJNn�tnmlEbB �
< ��  ���      TBsnli"D�ġ4 ��63 �����&1 �3> �% �@  zn!����L �@ yn!�@ �����Әs �B 
 utm!�� Ϫ�^2 �43 7 C�ysld!E' Ruf�2 ���X 3     h .<�nmd"A< Ā����' �@o=�m!��% la) hC  yk!Ŵ> ��� %�An!A���������% ����ӟ����7      �:�utma!s Arl�: ���8 ���% 8 ma? �����˱�����������% �= md!�%  (zsl��V/�gNF"	�   ; @ � 'FJ�S��uonliea"	 { sA���Ӱ  ge�4 �� P rA��  � C �C  nCsrn"C�� �� �L rn� ��  �A�@�{ T %    �C+ 3 8 YD�yutsrpnmf"I 'De!A %De!A  
q KD�Cie"B�b ZD�6ie!���� � m    !D  D  ! vsrnkfd" 4 ��� �]4   Dsia!C�4 ��{A �% gc K�Ao!A� ;�?�!A� ��`�;O�x      & �D; vtsngfa"P   fCyi!��ǲD ���� )wA��aD ���]  yiV, � �mwlB� X}De!A�� ~5  Esa!B L'  Ese!BU.�   F�D  utke" 1UEi!A� ieAR  tps �E	le!� ) dA�
K:���?� 7      ) U ^ z �EE� �"vtsnmkgfeba" YEe!A�  nd 3�Ai!A7 �E)Eie!X tl�/ �E<Eie! +�Da!A�  � ;  	sigC _�Ee!A  � �@ �g"B+$ � �l3   FwEusie!D3 �^7   spkp3    tse 3%Fe!A�@���    �F  < Q s � wtsongca"d1 5�D  nca!�< ����U0���I�v Q %    GF    � �T      �yuoliea743" � sA����E' ����5 ��{V  �< nia!*   �Fsi!	 ��������& NG�Fli!�' wG  rd! |/eaB�� �� ea �d7 �B- tlf!C� Gnl 0 sA���  �  sfB�  YG ie"�/ �� T%�G%Grm!B{ uG ie!�6  �ɍ ����&P� �     '  ]D  yutnia" y%@�'tk!BQ �D@ts!� �.   �Fsa!������u: ���U thc/ mE�-ui!�� _>Hb!A&���e@�~q�z?    ^> 8 B   M � � �)� EH&yxvtsrpnlkjigdc")    @sf!��  �==   tsiC E sA��� �q3  smdC!  vH ie"���  $snr �������C �� h7  �Hsi!B�e9 � ? sA��7   �.yi!�h ob %Ii!A�+H �'  �Hon!H ��L oia� 7 dA` �H ie!#) �����_  hge /lE�!A�% }G  �a!�����˱���������@I ���ȟ�L 
�k�~F ��� �5 scB� RI ie!� }aA�V !Msla�9 � >dA�, ���95 ���� �~G usoC�� L sA����   	$rhaX7 �hA ���a<�	n]t�]��O   �F  F � � � &�yvtsrnmkedca" ^ sA��� FvA�����: "JJon!-  ie��W  �Irh!�1 ��%  hGso!�'  �Jle! -�Af!A1 �GBIua!� Z sA���d 	uid|J �����&J ����H ���� Y0|J�Iie!B d sA���&   �Jsi!��������M YJ sn!  b�Y� � { L % �J  & 1 8 A> yutsmlic"HO: �ȶjC�m��  bF�  w M:� � � yxtsnmlgc"	K �|F � ^-  qJse!B \lA' G/yi!� ��n�   uie�8 ���/   j8yt!�2 �� �u*  XK�Jsie!C���N �j� V   tige7K ��  �'  �Jea!�D �'  gHih! a+  sdB� �K ie!�N ����� /    �2 " 0 4 k q � � vutrpnmdcb"
MB �½. ��' �m���H ������7 �H  ie!x la %pA���   >Bti!�, ��X  �Iie!�2   �ua!�   �E  ula"��� [    , 6 Y +Itslhc"$L ����������������������3 �������������% tm�- ���Ƽ�  @11�0�0�,�%�r� K 
 e=: � ��c��yvuoiea"I�L � �9  sdB  �L ie"7 |JIM�t! )SMl!A�P  ea� 1uA&M � /iA
b � %     " , LA vtsmig" a1�M7Jle!B�O   �Eyi!�����) 2MoMie!  �� �   aM�Lsie"C�� ��, �; ra!�E �����bN ��&   20��M �M nd! �C siB���  ' !wfB�E ��� -tA�> �ǃ; �' pg �{ )se!B  �o
01���g� G �M  + �J\ d s � � � xwvtigfedca"K�N �ȁF ��%  4	�g!�N � ~) s.B� ��]- ������t? ������� �Z3 pfeC M�Nl!A���kM � )zMa!A�% q$�2yi!�P �N  ofc!�'  MN�%�Nihea!��/ X� � �      3 7 �NA ` �5Oe wtsronkied"
� � �3 eb!�  �Mml!  +��T/�-  �K � � � �utoigea"G �C  �Hsi!B��¢7 ��&   3Nea!��%  �Eec!D ���ȴ.  #vslj �% nO  nd!U lO ie! �% srB�% ua�84 ���' �F rn!����6 9+rn!� ��Oe!A� tf�' ��9E ��ş� Q+	�uB *�Mi!A����� �� N)� �l!B6 �@LNld!  jA� � %  hJ e  yrncb"EjP ��%  mL�l! )QBz!AU&  �P  uda!%  nmӟ�O !�k -uA�K ���������L �������� 'uy!A�����L �N �a!/ �N  �a! %nA����) 0N�P�a!�8� { -     ~J~J �M5 ysnmlkd"�' �PDNua!�B � %sMn!AL �- ua! �L'cN 3Jusl!C %BJl!A��WO ��%  Qma!���<X /    ;�yrnm�q]8�   U _ � � usmgda"�/ �  �   �Qs'"B = nA�� Ցd9 �Q�Q  �lda!D�K  �L ia"�J ��B�^ /     - �N;   uledca" C�Qi!A �P  �Psa!B�^  �Qon!�a   pP   oie"R  /tb!�j 3rn�Q �E   [Pyi!�����p �3 sr!� c sA��ȄU��   
$(tspieMN �� �t-M  Q�sa!C����� �Q ea!����R �Q�*tl! 9aA��'  �Jge!/   �0kd! '�Ri!A������V haT{x    <]tigd�a Mt  �ws!�©/ �%  �Dud!�� uh JBKi!A��1  f@9C�Dspca!�' �8�Qrl!m ������ � ;>Re!A�Œ.    �Cyoa!S �'  �Kui!e� � \   &*3tlhea���  ���,  seˈS �  ?!� 1 ���% i����    h �   � ��e{���ywvutsrpnlkfdcb"O�R �� �=�L ea!B� �H  �s.!B� {RkKXKlf!BA  nd8Q ��WS ����sS � -iA���� �V  se�, !mlgdM ��@ �% 8TMtn!�� EOTl!A��ϕ ui T-	TfSie!B���~K   -tca  �V=   ysiC> ����b    T X �tlea"' F>VTon! �I T6ie!B '�Ia!A� ts N'yT�Sie!B�% )R  �a!˱�������%  �(oi! _ sA����� �    
 fT�T' trihc"%  WL�a!����L  oa! �yR+   �T  slie!D�F�	�}Xw�+    5<, y � �HBUa\Uyutsrligca"
8R ����� ' iA% �R�Rsn!���� c7P�!A���L U0Rni!� yC�UmUli!B��  � � cU�TqPiea"C��� oe�6 ��Q �' �U ts!�� � �=�T�ea!B��M ��5v   poi  �~U� 7  $ �3 7 a smihfc"F�S ������ L %     � � � v� �ronked")& ����?< �����b)  �B  jQ R=yrpoia!�; ��-  �Utk!�? �ʘU ����%6 �]�   poecs � |T-  smdC�- jV�Uie! ) snBT ������ �       �V ytnic".   sg  	ua�O ��� Z3  �Vse!B��) 3FWtc!UT �������N yi3   rl 5�Gu!At%   PKVsie!��6 �L �< vo!��Q   ye�  �Vli!��sL'   �M~V  spea!�   'tsi� ������ POf!A��X��A�t� ]   
Wfmu��wtsrpolid	 �   yW}QrViea"���%2 �ЂQ  �S  igc"
 �Ț- �� qL'	W�D�rea!C�� J%  �Wsa!B%  Xtc!� E* rn!� ���  �N use!-T � f+  �Qsi!B�� 7YXl!A���� ie  �le@� V '    $ �#V g l vtspfdc"GG   xPyi!�p �P ia!? �8HWla!���% pX�Xze!J  yi��ǲ(�   �G  # vonm"  h sA��z   |la"W ��`   sd  c.s �X�X oie"Cƚ'    X sed"� �Z1   srdC5 3Y  ie!W  �Xvo!  ��  siB&�    �X! tie"��%   ?si!�������� �+  �Ys'!B�}?   -Y 1Xiea"  �,  smB� '�Ri!A��+  
ea�~O ���� +pA �gbT �s!B����X �� L'  Bs.!B��q Y oi!)   Xyi! s1 �Ytl!B��U �� oe -�Yi!A�ʺX �B �0 tco oe N)  snB �h=  �Y  srd!C  �Y ie".  �Y nd"� (ieD   �Xyi!������
���	?	q;    xYC d hZ� � � � � Lxvutpnmljgfdcb"����  �F �*�uoiea" 2 sA�'   srd �)�Z ie!B�6  sc��41 �EI ���� +.A�������A �� ��i pc S�Zt!A��_   �W  , 0 tsrplb"�<�!$�����   w |E�X����urolkihea"	_S �����G [ ld!= ��� 5sA�  �Yyi! Y sA���� B sA­%  usr�B � ќ' �[I[sle!C�   �[ tc"��   !VieaX/  \  upa! ����ڗX � (	\l!A�ľ3 � }'kdB3W ��    �X  ihe"�} L %      � X, 0 wtrnidb"k\ � L%\p\ie!By tC th!M g\\li!ڃN �  ��U� S     )\  ysiea"E %�Ta!A����Z �\�\ zts!  �= �\ li"B r1  p[sa!B˳Y �ȟ so����  <\  @ l tsldc"y< �0  �Coa! ��[  ]  srd!C� �\ ie!�& �I ]tc!  ni)] �V �� �z0�\B\ iea!C��M �� pm�S ���xBW   �Y  y8vnmg"�\ �ӛ ��wP��  JNuroie%   V]si!���� C sAt S] ie!�; �Ν  xnc �. uiBFZ ����� �8}]�\ie!B�����> � À'  �\ sre!C�/K �% �]  ie!�����     v"Q; $ urliea" ���Q ��& ����] ��ϵ]% uria;D ����] ��% vs�^ ��S? ��=  ]sa!�f j^ vo!N  �]ie!� �] yt!G ���j8 ���� ʓl=  sidcD  W^ ie"Ƥ �p?  �<  vna"% �^}]ea!e# ��{/�   Myuiea 4�^i!A��w[ �k  _md! sG  sdB� �^ ie!C  _vt![   ,oearJ ��5 ��N da`: ��� 9N_l!A� 'eA��) _  ie!�. )__on!%  ie �q tsB�&  �_ ec"��   R5 ) yia" L%  �^se!B��F ����q sr yL'  e_z_sia!C�����^ ��Ҡ oe���   "=�role1   rd  �� 3   �_ sie"C��  iU   Y	  smd"C�  �_ ie"�   !ie�|N �&\ ��V' �  tra!, �$�&sl!B �`vu! � sA��ǯ 
ul N)  `si!Bj   �^yi!��Ͻ �` li!�_  �ie!� #sd���7 ���# ���L ui -rA �I  l`si!B�����   '^y�utpoie�^ ��7 �'  %Uoi! k5  �`si!B�Ǌ' urhJ   ats!8  �_ra!.` �1 �` se!� ie_ �' RW  te!��- ro�)�(�(�'� ��R52���;�a�    DHC n !i"d��2���Sawvutsqponmljigfedcba"�^ ���{a � �M  ysB�t� N '     �  J^�_spgdca"R ��'  �Hue! ?�ai!A�7   tm�_ � '&l!A�1   ge�V 
ie�X  d tng!�[� �   !b , 4 < wuolb"�T �6. �  �a� U @  �a tsna"D '_h!A�9  $tnl�] ��  �6b3Z0=..�-}V'   ; � � �_� 59�uoihfeda"I% XSB_�a!` ���5 �b ea! qL%�b  �btrl!C�/   �Xpd!�) \b  nd! %�Py!A��L SS pi!	c �'  ia�^ �� `7  sdB� �b ie! `7�!�b�i!B�S �������Ч�� Ā˱����������� )ecl!A�S �����vO  �X	 nlk! 5aA�2 ����� %    �_ + yrmd"C  \H �a"ϟ���Cd�T+�i� s '    b o z � � � A]� � � � � �=��yvtnmkihfdba"/ ���? �c�cli!� f=  sdB��   �c 
 iea"1S    &nlf* �+ Id ea!�; ��2   eaT 	md�% �
Ldtc!�§R ��, �\a �ɢ; 
iea�n�m   D % ; J roihea"9 ��� 5�de!A��q 
rm�\ ��� �\/  �^ sa.!C�� H sA���bd ��3�     �R utro"  :� v E     �d�d�dsnmki"E� �%  pdrm!Q] ��6 ����% ri {)�d/doe!B�� GR nc!�  fe�? �� �G  �dsi!B�d ���X' �d   oie! /"`e!A  !sDp   R# tsid"D* Ke4eon!/  ie��ǀ e ea!% >�etc!� �L sn�� 0�el!A��T-  �e�]oea!q% ������  3I  sfB  u� + �`   trd"C  	g   sdB��  M7 ieB �'CviB*X ���� yA�e  ts!BnZ �5 |_  rn!�B �% `\ zd!¬�'  	a  mied!Q��T
�	:	�rb�e��    0 ; B � � � <O]  z�vtsrqpnmlkgedca"/   Zfsi! �U  sdB2�   mf 
 ied"%  �frm!- �&ld!�_ � {T/�fqf lec!C�W ������������������= �` nb!�� ��V1    �fISsnic!D�x '     5 WEgwurpe"�< ���g �� 'dA��x��~       v � yuroiea"�S �� 7jA�M, ���� EiA@  gnh!% �d�]sd!�%  �Cme!�o �g oi!s ��� �Y2g  sr!B% �f�gec! /�gi!AL yi%  �gfc!��    $yieϵ ������;  �Zta!�  Rupi E�`t!A� �lA�s-   �Z�g /hkigc" V1�b  �s!B�` �� �����  � Y 	uieCo[ ���%  rh�t!����G   ieq
�	BJky� m    	  D h � � jfzytnmlgdc"	 _0  �gse!B��-  iie!'   �hpc! �X)  ue�hfhsmle!D�|'   Nboia! v�he!A� 17e!A�� 	rli �.  oa�h �����' Waki!  �4w"A�Sg ��� Q sA���� d=  sdB� i ie!��     ohvui"{i �� C�i'!A��=i �ϴg ��  �hih!�8 ���N� /       {5! wtpodb"� )�gs!A� '�Zd!A� s%.e nc!B �EurB�I ���� Y+  �isi!B )LDu!A �T'�b �bynl!C�; "utaZc � P sA���'    )irpn!�\�
�
D	\�N      �iN r � � � � usronmlkfc"
+   [jmc!�\ �% �SZbtl! �5 saB%   sd� 	ec5  �$ yi"�+  �jDifea! <iAC1 � Ocji!A�  td(�V   Wneca Y2;j  ts!B��- 6c�ctr!>�DP   �   � rolea")   rl| �j{aie!�[ ������M � +iA�� �; saB�D] �  	� � S    �jGjusie"D��^ ���� X+ �:�d!Bθj ���  � � v G    �b�b  smlfd"Em  Ya ie"o]���� Y   ^A 0 C ` >jv ~ �htiTkytsrnlkgfcb" X sA�� �ku  vrp! J%  �[yi!B�2j ���    �j mlc" �5  sdBE �k(lne!�Vm       �eyiea"�U  �U*lrpn!�b �������L   sjyi!��) ti 4 sA�{l ��ק�] �Z�l  tsna!\% )l�jvnk! R%�llle!B�(  �lnk! f5  sdB������p�   %3Ruoiea- cB�jyi!] �� { V   �j  �j�Lpmdcb"p��
z	�  �l * � � yuroiea"F ����'   Ckyi!�����ǎ# �N oif � +Pmr!A���ǫl �'  tq�i �����O ���R ytec%   ye�  1� � L %  
 ; �1? [ tsmjdc"F �E�d�mfe!B�c  �]se!��9k ���m �����1  Bmie!� 3�le!A����C   �lea!�1   �Syi!����l �� %cA� T-  �lse!B� K dA�{ sr� �;peB X ���\7 �d |+�  rpgfe!�a ���%  �2tp! /�h�!A	����� �{  2cp{����tsrpmigfdcbA ��%  tm%  Gia!.   \dsi!��P6 �U pb*o �'  %gtc!% ��  ��� ]i  ?�sa"C��  �' taB؊ '5snm�l ��qJ% R<�U �>yrnd!�F ��� �eϻ  zy0J ��Ǽ���% �j�lie!f? �� �{' �N �kc!C% ed�� 2��]m �������� R%hm sd!By sm ra!N'    �irkc!��  �k�i$d�c2Z�G/G�F�FWA`393�1�/1/N$���'  1 � � ll�m"ntOW}�����
���ywutsrqponmlkiheca"TNo ������ 7�Ml!A�o � �E  snB�m ��ȧ� '�A)  �opn!� �����˱�.��     $ �k�ied" }P)  �oDosie!C9  �oke! % eA-   zn���� L% nmB������)  �k����0 Ā������ '�ny!A�Sm �5 �l  nm!������% �k����� ����M (�tm��k<� �    RR\j=   H �ytmkd"����U0 ����>j � �N'�g  zga!Cog ��j ��k���.Q� � � %     
 $ � � � �o"�srnmlkicba" � sA`   �mmc" ^9^q]qli!B���e ��� qc|   �oyi!���D  oi �nA� %vNl!A�� )rA '�ml!A��h �L pf� �m le!3W ��'   �iyi!���u) �q  toe! �vI �p�qpea!C'q � b; seB {) Ujda!B % ry!A�ǔn �r ���)  �doa!� �E siB��   �\  rmc"2 �q  rd!  I�t� � �l  �q �p�siea"E��M�lj5��  �q ) X a y � � Ap� xsronmlkfca"Bm ��%   �oye!�E Sm�m�f!�3 �r�rvr!�������h yro � sA �}  �rsi!B�  kg�  �q rn"�r ���j ���� = tA�/[ ���r sgL' urmc   3rea!* �`�`po!�� &�ri!AO wu� oe[   CZsm!R �.   8d��uroiea<Q ��J �Qd �yT �� `1taB  �  srBq �˝  ie���� � >     ts   . 2 �qpomlgec"1 ��1 �sUpge!s8 �M  ed�s �L'    �sged!�s �������������������������  �,ml! 9�ii!A���EY2� b   �svbtm  - �p? K U wutponmlgd"
yt �� )oA�% �s  nl! ��Go  s�sa!C������ ���S ���Sm ��' {[�Rol!�z � �    pmlifa�@S� � -   d2 J T �rvnifdc" N)Ht�tmi!B��t �s   nea!�t �� b1�t	tie!B���.~ M &   Sn%u tb vpgeca" T-  7tye!B�7� j ?   �q s>u  tsnle" �ui!A��4v  /b|yuiea _2  {tse!B��q ���������% �r�l�a!%  yk�% mk�7  ( utrn!0b �1 �i�utc!G-    oie A�ul!A��v �u nc!r  Xie!�!s ��[5 ������ϱ�;�:�9�7�6G.$*8$Z!	��     0 L � �*�_uhf���ywuroihedca"% Hv  yk!�'  �kma!�����u �����{ 	ta�a ����u �������J ���
j ��j ��) oa�L' �A   " wvmdc!� ��v �� � �G  `vdusia!C��Ÿ tc� ��)   #tsl��n ��  oe/Y ����o ����") ������% 
oa�n ������� ��\ ����J %      - �exvtqnf"'t ���k) �5  Gvie!�E ����5. ��'  Kla!�  ��wv �όa �% poL%   ;pspl!�8 #q�3ym!��%  �vts!�o ��!�9~A'��M     @ O V d j � � � � � wurpnlkigfedca"�N �� _6  sdB� �w ie!�����nGN   �U  �t�wK  tspokgd" : sA9  �wlg!3 :x+Ugb!  �j�r  �s"B  uia�   �o  srfd"D ouxl!A��  P	��A  &x
 0 uiea"D@ �' �xWxea!���L%  ica�s � %	vk!A� %tA�U �����v Ā������' �a����o �x  uma!�U ������*7O
s� { L '     A E a � � �  �ps[x�zytsrpnligfa"�Z �% Of uc! P)Fy'lia!B� �I  sdB�"  ui E rA�����? ���% wy  ts!�a �w  oea!  �� ) �y  sid"Cqw ��ȧ�����@^   Hhzrlcr �v �4  pyoi!�' �o�yme!��sL �w   rnb!; xyi!' ppie!%  Twsd!� � 5      �y ^wrnmfc"' yw  yk!� j sA�ĕ�   Lz   uia"C�/�   �#  % ^ tsmie"  �|
~ W hz�. � � ysrnl"E 19zb!Aw � wR-  ��yspe!C�1 \z�zie!��Z �z ul! [6�z}gli!B�����g �%  ryui!�W�� n      4 D �XH sroedca"�t �����' �%  �znm!�P)  �z lic! I xA�n ���~ le^�L5     �z 9 � nuspoiea" ~I  �zsi!B� �lE  {czsie!C�`z ��S  si-  znm!s -{=>ie!7  2utn!B{ � ]'E{ id!B�� � sA���U�� 7      , C �yS }.ytsrnlig"% ?{  sr!�w �� })neB� jx tk!!z � UsA�G ���� Q,  *cse!B�S{ �� %lA���<Z �].  | |�zvrl!����~K��X)�    �{�z % 1 8 B �rnliedba"	/ 
w(Q�e!�- w|�|ba!�� 8   �x jE#{trne"�E �% �| tc!/ �|�|sl!.�T   :oiea %8tn!A�� �iA��F ������������� T' s.B�� Ԫ-  L| snd!C%   �<ed!� ]j�|oi!��UZ\8      @ dz}tsnlfd"�B ��A �  �6�� �     �a?|slife"E�R �C   te�1 � N' �twl!B��k��     x| �tsrlkd"�[ �ω1     ;wurn"% Q},}ie!�� � sAd�   �sc} tie"�#x �x �} tn!��  'oia ���������� ������E 
ca��< �E�m   ! a � H�0wroihea" -�|m!A�n ����� %lA˱���% �w{�d!˱���� %Xu�!A�� %lA������L �a! ���N '       6{�lid"�t ����% �-  �k!�o% �z  rcb!J% Ax{�synl!o �u �a!�G ����˱�����% �{ tl!qJ �. �rk!����*�   +Ctma�. �% } �a!�% W.vtm!q%   ]vtrm!' 6}  �a!˱� �b3 A}  �ca!Cб�����   lt " �da"1 f}  lk!����. ���%  z,la!��  ����� X 3   ! z � 3!o�zrpnkg"G� ��'  �k�N= � V'}�z lie!C
D ��L  ie��z �q rn %eA��� � X      # 7}6 �Jtsrnma" %vk!A %|�!A�� )�pd!A w%ulB�� ���~vrl!������& ŀ���ӟ�A4J    9�ulk' Wx,~ti!)t �L tlp ��q te�- �}�vsd!����V �P sl!�x ��м����}  zrk� .��  �3	�k  Z � �oea"D� �����˱��������{ ���' �~.}nm!�� R- ��d!B��aq �����6� L   	"(ymha�} ��O ��'  pn P)}|$�us!B;  Rrn!  #��) #'oieaD' xXw�k!���N . ua!nw ���'  �{�m!��������|� ����������} %tlbIP ��o% �J �mie!Z� �J% ��  �wlid!�� %
n!A�  � L % �� 	 ^ysnl"D�ǹ� 37vtk�~ ����{ � )mAӟ��s  �kcPy �˼��r �������   	.���oeauy �����Hx ���ϼ���# ���% � mi!��Ǜy �Ǽ���Z � )lA�Z �� li!�N ecJ� � N'm��yk!B� )�vl!A�� ����Ҽ���uN �ge�z �ȟ���Ⱦ ��x ����oJ%   . mied!��ǟ�n��� � p K &    - L X \ z � �� � �ztrnmgfdc"
p������(    �ed!���ez ���M �e�yJ% �J  � � �zsrn!�R%    :   ����"� ����� '�2l!A�������' rmƱ�� ���*P �/  li! �V1 �    lie!C� yk� ���������v ���' �y ti!���������s% �rk -�un!Aw �������ζ��I"�O     NC H m �uoiea"����
q�
q�
��
��
J�
c�
`�
f�
<H
��	̤	Y�	N_	�=	�%	F�����]�N��lQ*����"Y�&d�7����*�������� � � �B����
�F!
(�(00�4�6�<�?~C�CLPbT�X|_�h>svz    ��#�,�H�  ���zyxwvutsrqponmlkjihgfedcba_7543210#%�      �      � J~�������	�
���	�
������������������! �$!�%"�%#�&$�'%�)&�*'�+(�,)�-*�.+�/,�/-�0.�1/�20�31�42�43�54�55�66�87�:8�<9�<:�=;�=<�?=�?>�@?�A@�BA�EB�GC�GD�HE�HF�IG�IH�JI�KJ�KK�KL�LM�MN�NO�OP�RQ�RR�RS�ST�TU�TV�UW�WX�ZY�[Z�][�^\�_]�`^�b_�e`�fa�gb�gc�gd�je�kf�mg�nh�oi�qj�qk�rl�sm�tn�uo�vp�wq�{r�{s�|t�}u�~v�w�x�y��zƁ{܂|��}��~��·���������ʌ�����������Α���������������ޔ�ҕ�֗�������И������������ʚ�ț����������������ޞ�ɟ����������Ρ������Ѥ������զ����������������ٲ�������ʷ�������׻���������ǿ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������΃�Å����ʆ��������������������̎�������Ǒ�ݑ������������ܕ����������������������������������ӟ������������ĥ�������������������ޫ����������ͬ���������������װ����������������ͳ����Ŵ��������������������������������̼���������ݾ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������т����ǃ�������Ѕ����������ފ�Ջ�ό����Í�Ӎ�������ڎ�������������ڐ���Ԓ����������������ۗ�ߘ�������Û�������������������������������ۧ�����������������¬�������î����گ����������������Ӵ�������и����۹���������������������������������������������������������������������������������������������������������������������������������������������������������������������Ԁ���������������݃�τ�݅������ω�Ȋ��������������������������������������������������������ף���������������©�̬�����������������׶�����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������҃�������Ј�������Ď����Џ�������������ǒ�������������������И������������������Ξ������������ޥ�٧��������������������������¯�ү�װ���������������Ӵ���������������������ι�������ú�޺�������������ƾ������ܿ������������������������������������������������������������������������������������������������������������������������������������������������������������������udeliver�goal�possible�professionals�quickly�software�useful�users�working�art�discipline�engineering�often�releasing�sI�automation�fast�feedback�key�ability�%ed��changes�comes�deployment�described�frequently�good�happenU,kind�perform�(cess�reduci�tory�strwor� rL lpainful	9 e9somethJwa� �can�much1a,y�aim�applic	��	 d5’t��check	s�creatgdefini%A,develop�docu!	Ydo%� d�environD�every�far�feature4s�instead�leava0like�make�new� p!�passes�E5%Nproduc�rea!%leaseN !0Lbody�tests�time�uponM[catch�aper�Hects�earlier�fix�br�forward�@�artifact�control--on�relaAMsingl=�verA��analy�chartAh	G1X	 sQ�file�keep�logs�managers�member�plans�procedur!1rogEaproject� r5)quire!�,s�risk�save�A�$pts�short�A�e�team%=v�Y^(’s�binarya6pilI1!do# t	�A0outpu�commend�I�[A�i�Omi!k!Vdebugg!�explainhou%ssagea~son�itu�s�addOdetail�N<plays�enough�figE� ie�ollow^gets�giE�(headline�ina�[�interes�E�! m�4multiparagraphA�spEo!	
 s�A�de	� shown�styAQumm!j!4k�a� s2�buila�che��0ends�downloada�lternet�jars�java�local�maven�`repositories�specify�tool%D$almost�alw!;appeIbetteruLcon%N a��e��� focus�fune� a��high�itETaIr�littl� a��opI s.lu�valuA5}e?imag!�manu:�pert�rea)lome!�htry�understand�without�avoi!^ n:� e�over.�simp!�ystem�qlso!9�� s��baseE@Hbenefits�box�buttonilick!=$consolidat�py�� e	!�� fficiency6����gn�hardw�}Lheterogeneous�improvA𩸉~�;Aˁ} ta	�l!� ���ir�M�]%�� andardize�Z�� trivial�u�-$�virtualiz)��?inu�>aggr	 s��st! ��wo)nya g.cq����od!5�y��e�data!~a4��else��	R��all�mus! eded��fm6y�run�N��� s��i��,0ils�found�ind� e�� d�$y�otherwis�ble%p��=-dem� i&-	 f�� i%� t5E�wpracticei��ci�ens�$essence�ob�@9yI�}5ztteneu	�%o�uco�%}aI�T�X<go�know�lunch�me	!out�	� yA�seco��should�ast�  start�sufI�t�task-|a� i�%R�	M�n s>� I  da m�j� f)�ixAfree�h�(%U ma3 n�$next�previA�pr)� r!��f	�cceeds	��u�!a�abs�� e�	lien�	brokeU�ircum�� c�0lear�colleagu�
ay�X�e�diff��$t�distribu��I1!��	�ral�
�(groups�home� ja��8�left�magnified�[perhap�'��Dremote�jic^sta�	~�	�l%5zon� a)�)�Ad/)���ihi�!��ix���held��ortant�B� q�rea0on	gH	dy1�!��	se%�ge�what!��are	�breaks:,�stablis�nish�minu��MGru�fA�q�%>en��QJ*�		�YA g�-S�
%T!. i�duced�m�� e{
eK se�!�re�
�responsinresul!illm�usu%�wrA� lN.� E�$areas�assuK bAQ(es�behavior�.K
�a�anA
 c����m��i�
dri	en�	s�exis�Ʌ � ��5cr�,al�;�larg�� k!()Bmigh�$AZ c�` o�se�	 m�w-�$st�thus�to����worr� b!���ha���%�a�_��le8�� x�Jflict�tri! a,courAёrror=A�}]�9 nu
�#lih8long�1me!y	� s��� v��Said%ousTlows�)spenAU a�T o�!f=1 es�Lturn�wai%� wA��Ts�accept%-!�wI�&�.�	egin%l�!k g��pon�6�
�	�c l' n�ros!n"w�	 n*Q� t*	%j�oraN&?]xvolves�l�`"H�
Mr�V�Srt�pipz
7 q�	 t��ruthowca�&
 tRstrateg�� eis�thraA�)�<riggered�unit�us�whole%�!Owr)�.� ganswm �m�e�AB.;get�Yqu�ons� u^an��cA��m!
.i�	�EJQ d�i�V!�rpuo�� t"G	nt�.2�221presA?serv�sts�263.��a� a!J��i���aF$many�organX��&e��0 r!rse	see�sAkal�ultaavubA�use�Ts�ar�
9avail�*e# �A9y%�h.�ea�=do6des-Pas�%I ��5L�how��legacy s�oApriorAӑcscaffole� sŒsui�)�	A1��W�/ e6�id!�A�=X�
!V:]ecapac��|�� pA�!� i�	�	ntex�� p�1�ce��l� eL�y a�T mO%1repe�ly� rA� e�!
Ss�t�����TsedQ)$ e8����princi�s r�pi%�5bakf�	vio�6�Y[��ing!��!�
%�eca�laH( mQid u��scree�A��smoke���&����h�funda�limiwEfer�a�!d�b"�	uppo!4k s���])$
ag�ruc)Q�{�immedia�0ormal�occur�p�� r��	 d�ha9�il�	Wow�4�sA�E� pQ s����	A
a��
.�xec�
� o=nex-�-~F"Q�}jESJ���rong+��=� b�basic���	demoFlo65�	cs�imu2�e9a0! ri)��ir��adopA&a�k!mm�|	!Xconv�L ra��direc��iJ��E��A�	Uursiv"�ub=tam�L a��op�e}ZontQ�	 s2
dummyM&)�a\���s�I��YQ6Td�sen!��tep�h s�Dyea�e5 e1�)0defaFmis�:�pathsŔE��	����"#͘
M�)wd�cycl1�iRour7�thumb")��-���E�ei��e� g notify�+�dIU�
Fadv( bb�|}E�%�	��0�<�ai	�"��qoly�ݥ���fi�X��fyI� r���aym
nu� e�J.� �@g scope�sig=calLer�qj�!�A�toge%b��")on� c25 s1�	�ix���G� y-�o��*�	��	�LI����Н��OQ�}�4�����	Ea.�dayR�U�%�ea�rci�faltagrow&�8 t?	�襤
 i�)�D e�05ХA���K	nd����m�.�mprehen���im�!���	�a�-f	 a� gpis[�[�lle�	w sT�spS��ngs"��	&prefer-ing�uiElC�b���e%��!�goes�RX t�	 n&����arly%]�&keS�"=switc	 w�4�zero�hu� o)
apal�[pan.E� i%c�raiM��6��*$!�#k&� i� 2��� d�!6znt�U�curr*
�	Elink	^ o�"symbolic�	 x9<orld�achieved�an��"z a�U�6� e�	 e?��
 r� mT n�X i�~�MA@ m�n	�5.��7��!�s�1Mi*�yIIw��_.?%�!?� a�	"��d& ��"V	�fasha]/kep � eyism�(�naZ�A8d�rol�� e��� ya��!'&e��two�up d9���x�s�clasA��
ll�p	]�� s�
&��r		.ustom�	fix� hel�h!8"��q����Anner��=u�B	� a`Zif&Z�uc��#7��^yo n�'�#�	e!��v	�""1	ar*� ����pr
1*
 ei�( a�A[���.� j���ink�pur2 �you’re&�I�ng�ʥNfac���� a�el�s!'�vwo.@�� 6� � bBAd&�in.N	��% d n� g5	�d�na[�]�M�s�
wort3 e sO���eeb e���� s9se�enemy���mѱ�5 d"�dynamici�!Y�s�ga�	gic�)zeo5power�$smarA���)�ŋtruC!�boo�$%�	xs�dys��	 v�e���4i’m�lencioni< A�s�mu呅{�ord! patrick�s�����vulne� �g%Rdaily	�" i.	�OA� s�!ud�8th*!��N#bi�.�plexima�=�OT s� &!4d�view&�ork�!beyond}
��8!�M��c�!)%o%��E?�� !� rJ�!_
a �i�% k��A�ly�=� y��money.!.��vea�Br! lC���� t��res� sla
scaH d!Milar p�u� "�	 s�s�}ef��ag m��*�6�(aste���%�20��e
 d�q�n�3� \�1.5� �q������%� u�'al�cu) a�2eBIkTe�1:f�if� i�unn"�#�r|� u�� e!���)� ng�joba� ha. r���	!(trip#c"�$�# y�$5��"�!�!�!@st�184.72.236.173aB'^%nalogiz�	uth�uat8�� ���onsis�
")	*Qdn�
�� hierarchy�u6O&frast���"�%ip6) sa*,
��netE5nod�����s�ph$rotocol�puX/oo�rv�$ s6�tcp�+trans�'utilizA�ww.akfdners.com!7!;�$rows 	�
 g�R u!�!. u>	 d)	Ohundr!IAclu��19ve*� y.�me�cem o�""�ng�p8��1+*Xvi��-�'<�ow	���� iA��� a��C&sa�"a4�to�!5cng3combu"coA�AZiscu7-.P:�'	sidn+��h!3d�look�!max�1!	z(=Gh�  ui0" ��^�e’vei� 4A �����irN��B� wn�Y q�)�fi��full��	ioE�; oa�1$E1�neA���er!�a�	�E�b.� ���;� k�us�variEI��12�5�� a����#t���indusH(�Z�#az� oA
%~ .r�$��$3�e# lx techniqueIE��)#R�eaQ�a�eve�+��a��_�b^
gzip�* v*��!}�l� K	j� s&}��!� �!M�I E�fe�
weS�&1�400��ge.�v e{ �pAXER)lcop��f�s���k<�	act�% l�, n/,A� �>A� da�M	A3�R���/ca�� e�� �	Yig.
��=�ype�Z
	:�M� y�ch�/ ch6_ve!�2� uing�%�excellaexp%��front�,en�ThigK�(�/<1le��marA�m�er�& oe�a� n��,qu0�2�fresh�rWA� i�	�	:!p r�a^IU���!K2ad�� �%1e����.["  oC	%Von"QX!JA@	 sG� p	major�g m�	 r�'-pr	���F�E]S r�. l�/�/ep&X
�2� U6��
4!�q�+7 r��]��
MB i��#ham���Ps�n2�	 re�)�+.Hg�acid!propr� I�e� h��%C	�z	� c+#U	=�dbmssNicult�guar�!5	 g� lzV�%��Br)nosql"R.�.+
 iP	 rlE�%�	sh�
a�A� o�� s|$�%ols��2��&�
�#"cho�,$x%!�Yv o ta��1��i4%�R� sM���0�M�0^ l�(2� "z
��	AA2�eaKb�����]up�0�O'��exaaN s.� =�/�	"��9�����!� art�	� sa3�! l.�/!p�eL*D�&insA�\�3c�2F
Ap��)�^MIE)l iV�aggregamount�a data�doze
�a����.���	MogM�th�j+,abF	� s!r	e��
a��t�%�W tPim�qF1� J* w���_m. yon�	2 a. lH2� e1o�
 g���-� g~� o�pr��ranE s�%re��Z�Y*��H r�}8�C"o��d!�o��Ccee�,2�)�� n�
�!:�'+�m.A!C"�)Q( 5vid^A�
�7tole�e�un��s5akamai�_7K a$chose�clos�Hen*.!CM� andle�iss���#��le@- n���pu����1X
 ����A��1ic%���� b!�nQ c64Y�.��#
:
up,e�edg^ a�l�L�
i$ s�via�web�� i��SA%�asJ
M"	;��Q��� ac a�8��veci�eas0i�ae� r�ostA$)chb"#� cX'	��spli[!le�� s`,# n"��
�ly�U,�'broa-&��3un�A�o(� e"	 eDggn�emuA12�) e�#��� s�fold�7fos��)�'hidd�40t�illuat�arn6 r� l��u�pE" s�<Adop
7 p��*>@)�.olitic�ix��es�qa�� hG l�lm'�	�#!I�)<��s��#�:&"2ssW	
�b sF& rA�IR���t�A"tru���� e�&K&��5i�j l-: s�H.�$a�ch*�E!�et98�$"I-�mea�/5w]�r)��<��.&�7 m	P�(ilosophy�twb	 u� p4�oid�q�'�'&�+&�-�(�"A,\ary5����.on%���nlve� t��Oada�add�+���um3"L e�
 d��?�m d(, cE��Li4w d&m6100�< o,4�kZ$���RikA�-�6\>�V�
�!�se>	��8%Cbe��1stco	�corrupt��A~ ni�abierh{"(��1U	)V�% s%XA��E���A. x	ou_=�A&%�ify�!�lane�swi�< r�� d0-. e��
6 i���mathe<,)( m�%�%on���fparl�, pJ �=amm�P< r�1 s�W	let!I t��a�E;!(Q1��	le"��yT�J y�:wait��acc�
 a�A~amazo&B7att�/ bp�
 l��ap\u= oWM: m}$ cBookADE��r9;face�uefoxsh?gooy hy"~&F3.<efar22�ݥ� plug�popu�ao3� s�%ndejaq;si�S!D!�suggA�twi����ty�wifi�E a�4!c&"��%�.#"�
��6K�	 s�[�yse�, asynchron�&
-x�)e�.* IT  n#��A�� eA-6 l!(*Hlc��U��� cy
tl&t)��8rvaI5�$e�iS=�2 ��2 t�0"8ll�	 iod�piece�� sA�!S�Ireceqrfm9 ��%��?�7�\ic	��ag!0e?ter!)�89�>�|w:�� �	����61app�	 n*!Q	 d%5�6� n�f��\e�s�mobL0� s�= c�A%l o��B m{"�er�=lyi�!�flow��@in��% tɢa8�:6Bf	M k�� k!w���6�07#=C
A1�����J0��d1H!�
-$A5!7
M���te+) t�4�-� i����K�
�8�buW; s	� o�-�)�� �~�
Maer�' loI��A�
�B�23-��a pE�O. r�taws��9&}exter�fe.
i�|orm�%mas0�	ludn� i�7E���
s�kafkmB "�Cmon0
!{I>	
.#k*.��8que!RrawU� iIGck�;6N�3�	���ic��exts	5 t�/%�abs#2/ as0fa�Cbor�wM)&1��' d�E9&{	M���Kre�1`B#�2-,Z=� !�f1��myOodZre9 s��b��X_u o�Bommand�a=- a�@�>� lea��my.mfaKAi@D^9com�a�.� �@ Ns���-�.� s� e.�@J��Cmina% eT@��%:tackV(9�@)�7 rEi��
t< lAt�5�	!;� n�`e�E#6M4en�:�exp�;�fine�foo�% ga��*��$ar�&�ok
J!j�� n�H�A_��so�?;!W$tdd�tempor�5x h9+3	+ d+ o� a d���exup��,:a�]& r,r�s� P!��%���10��� c5B�50�'o�5I�&2�argu�
'Ith��er"Z�)��H�m�dea>����ntd%Ta�	�RC%D"/ s9) m$�/ d��"I'G� k.�G�k t�=)�DlisthenNdo(8,�Ich�+ob�C�h��!Cbe:dog.e	�happi�%too�dots!.K .a�.wag�7��%4	��x��N����)�:ubstitB0&�Cly/4o�berZ d&: n�|&�'mey&��H�;�c2�<te�u# u�:-plac)R*e�@E�A���Q	��&ida�[MP��^�$.�D t�(mocks?a�ver�v s�	 c�ed7"et=~al.�S�plex�;6v72L<>e��s�ob�D self�stub��� d��.� ch�
��k r��i�Qe�M�+�0=duckgo�	��gle�	nt0�	�0/&�#ta ki��� t� w�)*�Ň�m5�nheri$@Q6 oU� s.�O> r]�A`IO<+� �a���)>+er�;	�IM�MFar���� g�D�un�!�ll��AzactagarrO���carr�N
��.�
�F{?eria�.��(Penneͯ�>�2"��2A s�)�� s��siw)A% s�1h u? a���Bom.�Z3A4ry�!!G&�.h'�B%tmis&�)2� o*5?p
�[s�raiA
�%<*B���t�sof�R. t�4�@	"! l�/!�sa.�6� �-boMneck*]
 �Qco�*qM.� �0=`$u�kOequipp~F�fulfE"�a�inv�$�!>6(!8i��-IcR9%i���tyJ�c�I+i��ga�$art�V7&|�- i>	CabLC!u c� rZAddd2#ilEG-(�	��L5.\9�)Q�� u�ele�$8��^	�afr�D/as�g��M!
1L n�E�"}QG���r9R��	*�  ��  a�lG:@utonomyI�!"_	 s�J��* r*%�6�d�	 l"�ӭ�'nas��j3�
[y 	de��#M%0���ɋesi��iff:#or��� n�E�'��ec�P�al�fur
 Uly�� a�@���,T�)
*#,al� mq;�ism�
c	!	��|�L�4@�E)pe5B�t �/7Yh9ervUM��j,j	E��5�,A�&U+�B s�"Vk' �!���')H+~<)�+I�@E�C l)�st��
�WJ�&�	rar!� tjI[�
 i�un���F" 	|q6i1 aeI��)#�N03e���7% )KchildL;M�[�&k v�W!I�
�-�%�E��e�1Z6K�R�er�arbit��e� a	�Ad�*M/ aIQ� c�,�0r"vH"jPE}G x�Cs�go	�`�M h�R� nq��teB� ia���Ip�micro��� s�KeopuX// c� ssrip G:6~��7�[�	�H, oP,6) n!��I'�ʡ�)&�_!�.]ploy&�w rW2�)i�in���%���|un�,�Z yq7 1j1,�ŏ�b!�E� oI"�kno�Y�-hp�%�	�,q���A�&n]�MA�cohesͥ���P�q�Y:"�talk�C �z i�=Y	���F!�F	�$&	�a� u�� f�1[Ag\ f�#ngaL@� o�= e!�
 c-A�%� l�  aT k��SI�IApr:�O�^5[��K"�safA�WA�U�.&	��$ w��;+:�
"%'"�H5a�B aJ3 a56�	�����#�-
KE��� g�
�O a)��� s�Aic�'�.�Q*�Y�.P�	\3 e�
� p'�#�qb�Q�1wB�
'$��"5>2ha�}]�>lyJ9 i!���migZ&�^<
9�sy� me.%�Qţcargo�+fa�
A0�0�7.m � tflixI6the.T r�
.S\$cu}+9TY� tM�CDun%���L^� i1	�7�6�G>� f:�P-�.pi*^�E sU!Eso��g uM.art3"�	�tM�=� ll"�ry�G�)M=�!�rr�`�A:�$�3 y)!�frui�0�C�9ow�mo!�um��b����}inu&Raa�E�B�k6��&K rB5%2paA��' q�T��!siPW cO	� w0@)%ve�bang�:fowl�a�-���re��s9 r�6|m�m��E� m� �"����spo��	"e)�Pы\ �!piaT�
*�x�[k%na��tP*�4�(]W�	��YVN3 l� hPjoinA!px?o�Z%� s�_3;�M$Ip�	 p�9�arc��%��+A-So	A��;Afe�evi�)m]�!!	���1��I��N�si)N
*3&�"�al"��\I� o]>E�%� e-?�n��"�Uar3
 ie gTI|<e�6� ���2�jon���}Dol r��I�! nq)|'.�$re� 
!��H4 p�s�~�'s1!�us�x r� g~	)4*q	�&�lua��L xŅae�.<
�%�bug)devDX�q�- e���,".Bfix�) u.�=qա
%A$E%>A$�5�>�C/! r?oiH�V d*<A�mTA��E�3� a	 i�X uany!�massocq2 du���flags��vng�l�<!��L*�c�W e�[Y���(�2.�;�2d���2j r$LHr�? s� s�� t'-��Afu�
	�!�sc�& ��Q!��r	4��']	!""\lib�:+
 y2� �c%�Yn"�KH dE{�#e�a_�016 %�5'-��*J
	A!e�di�0��%2OL 6.� ��dsp	a��%�!+ g���4���d���# i$J�h:�	r	�}�Sout�N&�%c"��'�P4 y��a�"��cA�ye�-]&%W a�7U2T'xed� sH��.�nT)UF��8f r��W!.�+.!b���  nA�ed&w a�fan�0�%�aWa�	A4random� ii� d�	' ;%��N\)	*:�� npV*$�iW���48er46�Cg$ mb%KD+�"	P�$w����shrink��A2Uwhe�!�Z0�. s����h,�geo@ o�i�r s�-a/T0MhhttPh?,d�n(`�.�.er� f�&�W	y!��+ eJI� c=2A�� '��A��4ma���	�o s�64�k	*IU�� l�V����kehol�1i�tradeoffA���N�un� n��G*�	qH:mv3"`P	&�=���*�%�l�f lM@1Qb!�q�+�b����h��!��Jna�9Q;� i;#�r	 t��kJ�Av6�in-�b@V!�1u���di�hms�draE[z y�A lEW l� �.�
 ��hq te� cmhoA�ord�H�6romo��D>4 l�4 aAp�Wfour��leng<D�W s�1�M�pe.��P#�� 6
oJm�AP ofV� n�mrd!� n"%Ʃ�2��[E�=�/ �bCa��T�j r/2"pT�) n�p�ioc%�>��# o"�li�*W,mo-2o�� r&@�$�/eI͍cl7	k�*oon�kqA�$6� e�h�~�2� el5	_�<�, iW"/+_��ap���a�.6�e%"^<�7.@*�EI,r7�(��*�Bly*u<"� s��8u.R6�DvC r�7�es=:�B d5�alk�or��&�7 an.�����*j f.Dkeys�7<��%�#	9} e�j5-bund�t�6�]�@n�cdn-���2mpat8 c�="�
	!�4-ACA]er"|"��,.6 r��w�95� �hit�html%��e,javascript�jI-ade<xim��ŵ&D i�L_DR�� xa93 se!h��ng 
�d���%����url��!Rq�5  cW=�%P� n�)' y��gQ�pr	�~-��%���
eW����	"�*G;�@ t�1�"B� &S a��frag�
 �Nr9�I% nA�:^ %*n� a�"�S1 u�ll��)6=&�is�!���gine!r-��amili�Lpjge�J�� d6(;�*
oA�(ainEUA+*]� r8� e�31��	�I�� t�!m k4!�_��vacc�8� hPYpre.b!��% v
� &H"�?F�$ nmv��"K v�&�+ d�
�k u�0fndi/ex�	�VndI�	 �"��
 dFVrsA/ uE5�to�-&�R�?E-�+7�  nJ� 3<2�	 s	��a&"����Lsh�E$bbitmq�rou� uk s��" orp�Lnnoun�>�	A��
�en�ed2�	w�Z�o�	�2qU"� o�_ r)'*�cin�&?"�u�	 fb@�k o�L]Z sa� s�:�(i7A�ded�+lg^Mhm�
 s!A&Q�AX mE�*�8 o�)�)!�est5	 s�Z�!ng
 o�,�  s�����90�	,&ar�	�
 n�,�/ u o2g d��8&�O��0�NPV2%n���!- c/qAQ c/p3	
�#�� a|"�����%fi�l
 o�B5ndex��U@A��S-��R la`iD�����
��`/NI nlE&+a� rA���O!�Z5�O�iE]���
 ta\hr���_,��ds"K% uzk�d�3������ n�Aanf:U$Yde&�L�& f�legiMo m?ma�C�1!�ro�,� t�"mu�: 
A)P�T o�	�ria�T o!�,�chI cldb4 o7g�mongodb&#--Pbigiycas�Nra'umnar	B	U. w�beauti�j�"�gh	A�T7���m�
"]x�T%�l!��	CT u����c&R@"%$(��e'�<5 eY.�Mv7 r�9 n1A�A a�& H�"6| syOU�g!� �f�ea�:��|�i�7E�>�/�sh�	&~
 dS��e�E pA�xacat{<&�2� �&p.%{&�"�!#�j,_ p=ib9-��
)t�"-6��G	�E�d�6%�� n�+�E� pHJe�E7�y';'�loz s/�e�an�v t
* e�I46r�WZ a[ e�D s�D#fac�+F�bngua%D l�#-�lo�S�& m)�9�V e� ng�_ oa4c$ l"Dw�9ce!\ g�3��"�.,mH�LA�r�k��� y	rame%�� p[&�olo�m�#!:NG i]��#a.-E@�<hz; x!�ce?|�q c�DU!�� A��*2Z8 ma a�%� n�{�Uc�
V�!a�l� x�7cu�K*��pip)�-^&W! t5E�&�"��&B
�| ��sZP)�,c�}h1~-�a�"�	 uGof t�kle`G�Aj! �S5�X��R� y	L�e!p@�AUp���"3(g-�<sky��hide1�Qmfee�*0%-�u�7�%� in�*�Dea��'�"ew�B�
�Vea�C�n�AX o!��[!? k>YA&:#�n a�Sv<� rWdbel�'care�raft ra�[&//!�.�!��ant1�&=ap%qm����]��!�S);-�A��69� u�A)
�,*� dR]��G�bfo*' fh��TQ����f�2 a5T}recip�&�end�
�"b-��JmB�� b�A_A!�=an�#far*�i* ���e�A7%�a����� r�HE>"=�!�j
�$��weak*� c1( l�BE�op�D	sPT2 on�bad�boe��q� o�da�J �0
*J���%�� s��kW#�O	*ins&5{le��offe�%)2\N/�EA�pe|]i�&�[:"8�m�opK-pai�wind�u�����q�i pOfrog�Lv*fE c8	-�pe�MAH}�eL	kuI<ozarız�daha�iyisi�içiA; r� �olanıda� i�<�+,zaman�çabalUoğu]"�pent�"^ g�Bb	 o%%���)���NDA� a{��I�st!�}� pSO�' r}McoldE)Z	]ic�h&q�	J i]O�] l��la�Aaybe� odPeC��owj��!qyP�4Fe�� tA>�q�b6e��" �gLM��l(��ge�6'� n6�	�	�le����hru)#D!zttuc*�� y��F�H	��u�s puN e"�Zor�(huA&�!*�<T.*�	tis�e%	��% w�O]&R-.� t3ur�JQ� oh}�i}e� t>�trRun�� sGm
 v��6��X n�, a� f�go*I�*� rticip�:mv�	�&'ed�A�Es0~�linux��L,9e� i�$ d�sa5/m�4�'262�P�����C��jou�/X�[W>��	"_Gś��~��122�!L([%usy�f�-�#�z-D)L� i�Pe�%|C	����d n�:ZU5 p',�N�� %e�G l��)�
E�Iy�`se�
Y6di�`&��"�g'�� saJ r��.���b��	�"�	��O��:)=��5�;��@
org�l
 o�&a_�-�"eev
F�W%� kdccasq#����a�Pslip�vo�8�	�.��&1	influ�	 a�;1vacuumeigepppDl;� "W! g�bu�"�^�	 lE^� g��T��� r�'en;ay� rd&�N'gW�� muenRl� dj p�0-7�JQJ= m���"`�N![�5��M��y�">5	�~!�{Nu d0�"filX1VtorkFnu!V�Z ��v
o�L$)�S]!�	2\ 8P��]�{ i- 1or�Q�atW1�>�1 u�[/"��	�*c a7'��r dj%�ip{2� �;�0� nC.�UC�riI��� x	�4king�
Z a�.�;a� l�!Mre�3y# �"/3.I�!c fUf�I=# 'L"�� ay;�"�P�
U��H�����facX�qa�nowj����Aa�t�"�5�@7O7��	w w>�N�Z-� l�S l��[ i�re�M67P�2��:��30A.healtf"E=ܭ�1modyc�rthog�^�E�� s%J8$�j l����&g�sp�symptoc�+an#����!� f��JloRE���)*a�� oW/�Hverlap!� pz ][:1>reb<��0A4|]AF�A7�*�#m�� s�4nt�vr��" g�]� sAy!D�9ele	)%0xa0U"M-�{"D4��-�W� al�sh�� ym�,!p�u��"�)��s
�F�	6/UY���qC�re1��#p�d!f�ae7+,�*�F�)&NV l!���,�ghty�!h l�*ue�|d�bj nn�zz�c�k)2�
��6 of!%!!�)�& d��"yry��"�6lu�%e��CNNat�spN�	&�*� l�#7=bsc�+���7�7�"�V���2Y	U�	�kR�IF-g! aX:�� ��] f�Y"��4)��ta�c�aA��F!�*d�� i d�&�2!�1
r�"3���=	��<shLO�N�Eqq��M b"�1L�!u's��U m�OeBQr��!�q1whzde�]�� s�" '^�z�F��	��_	�� ��	@ axoot��� g�� �"m2h) >"�2_?3s��6*
���Y�ComI9y��bru��� n
H�(��t��ex�ys�"q�er'�� a7�<uthń�&M� t/!��A��E�E� e�����)B!��T�z f� 9I.���	�}2�!i cQ� ry+�
�" o��t"b	M�a9 rk�!t�{}#	�Z!�usR�| m�� m.$F��	� oA s"ޘM�"Q
onAm����
 o�3 u�$_6 w)�a)6a���~Kmani�V�3�
m[ci_ �d uAiha�H4a��mR
at2d� ��%�&�%�"� sS'0e$�S%�i!�3	�a�	�xm�U��I	� dA: aV d��!���',�P��u m���	 i�(c����s+ac�MfO�/���쉯\
S mG�Mq s!L w��c mU�%!e_)&lot*�8O(]Oa�%:�� g�_ s@6%� uXGF�% e"�% sP[% �*�%u)�d� rv�+6��2lCɐ�3&��35"*�q'�	c+�(|`܇��.� f�"a,ep�L�* oVm	J&|Yip+7#�B3N�E e���,uH�$�� $=/j(�r?"act10� r�5aAL�{oel�d�*(*�p d�%�"��Y�	� s2c1�cE| f�Md	a_��� s-����aiX�+�\Zşa%��0�" o�*�
Y �*%�&�S 1mce
m� sI�� nŇ� o)�	�T	!�q�? e?
�"���  d.� l�uO-U�/�ta*�/!�	aI��if�Q.Gta�˅��"%��Pƥmadap�O a``�%Udit8ex%� mV	�!�}>�řsdod3Be�H!��-Q� i��*�;R s%3{-�� n cF�� df�!o-�aq�IxIIgany%�"��
�jA�Hm>�F�@���L�.� #!�ly�me�A*l56$�u	���� ta:�4QlGQreg���EB�pamu��%���8B'�+̐�p!]Ax d�! o$	#hen��b|9! r�V<!N+cc�&Am�	2�Q��;�%ary���Z�K ��s*)���urIR.S@/�!7(&T���,:!�) a?:���bLA� lX��� �g s�3�s�mundo�&�w*L��5boi�A.�2og0 g�wKeO�dI# o�=�a��%�C�5 e	�����-5��8E~� �*E#	&!�mem�� o����0	F:  eme+*��<Yhoo���* s�q�	in  ��o)��;��im*|BFCm%�'omtra!���*@-
�E��ua�I� d"���"!B-tu�L9����)
9orR�P7!X/	 r-	 kqB�&83z!�	��u:>7��;u)ime�ffi�$si�3"� o@�qu-"M�stri�stumbe�y s�2�q �	��jl�.}�YvY!����&EF		che7	o��I�!dv�&jI~�(��"7&}��A bq��a,A� ix��p)r��	3zW3e �7� o�H� o�Erro�2��?Ep�2M��nep1� l&8I�A��C�Z�;C �e I���!�"R4i�	E h�.j�W�)��
"��	2 eҀ�:|}��*:�tehalf���fooEMjo%(�o*=A�Z&f s��&�[���XK�a�;)0behin��sy��~3S ��A	��) m)(�
* %()�.� d���	�I�2�!>"l2��+�4X"�EtX( eu e
glos�;�E��>�~y	C
�Rff�يrmF6�s�*�$�$ee�g!c g���Wa&�b!w�@4a��E;�]!�%F��!��_"accu�%"�3
Y
���cry5��"�
!� �b1!B t`*w,�) a	��
5E0 h�UCxincts�R��X�+A�*�}�r1Rluct� s�+�ee�uv�r	���f?	l!)7isZ@!>�	��531�@L�Hp5-%] ri�V0!Oj|n�E_�	�)MI�ay�adv��	n�civil[- n 7�8��ee��c�)�)eago2B��ʉS��du��	lN l #\Ey��"� gu'�	un��s��f.�mis�$!�>P�woi�p���=b"e
"�4ndBe%O g�M7�� r�j�RSshj')J� b� c�Q��.�T�'�+in'�HJ� i9� s]} s�M�p�B g��E=A g�or�"�=z0� n"�DV epr�-V? e-, g���M+���� a?ɉŎ���)9h�#ulj�MV$k	��%� s%I&?er��� ��
�&' al?-E3H��(�%� d� e�� l�?�O"�?9nd�%.�" vw��X�� 'zW( t�(/e��L�7 d ��X�citiz�&��=��	@)h�	 iZ#	-�:5 pq\���- g�q�� l�*)�a�,or� bc� eA7�	 vو�"s`�e�4� mk�Be�n��
� s�: ��+	�EX^0�L��{����8M id�8��
!��o4! gm c��!1prou9
 j�#�#"@BC
irnjgn�tip	�!%�b�Jou0<t�ismi�açıp�bi[�%�Lgeçiyor�ona�yeni�gi�c s�6sh p�K tHdala�değişikliği� �geri�s�erek�J1’�(0yüklenmesi�0�� yY$�U meFnV 2�dropU�>� ��ydeki�baktif;(birleştirma7nuV7ec%O dK h\c!allı�e�ksenizv �jHlisi!b h���� i�hedef�i�r'�+iş"�`kaynak_dal_adı�komutu�ma@'��o!(ra�sırası�W�ve�y�/4iliriz�öncelihşekl�"t�il% d� nI,l�
ın	�� i�idi��uzak�t�y�*el��origin��{�r	/E�klam�nı�(it�düzeltmMB�,A��,}ni��tekrarBk�am�-!\-�%{!�^içerE� iin_mesaj��sa!�qBe  m:g akl�Gizi2l L.p )F�son)�5�$yaptıktan�
�B} �t�06lmak��<ği�dosyalardakii�)Ikodla!A�tüm�	<a.67Gedil�tri" iRğettlY�shdrtP
�� b=<�hromiu%: p�'��d��V�<ploi�=�1 �":�BE'pupCer�selen^��`T
 g"?���
 o.[E{8�? d`T��N@
����R�+�	�&?k����0s�NE.j	� o�ypa)j���P?j1P��$�}=6)\I1�&!�8 incognito��,"�%�:riv(�	ss"Jts0�� ��B�"tab"$�s7�exC mm1t�	$�,2�7.c��	��	|]M|E�Y) J? t}�ons� f�(	)� &-�1 �� s)0i ��Ius�?��H0	�?(s�#	!�l
aAl�A�!�LtaGal-A�a��p�8_m�E�Y�A��JUJ.laE�"��$QatWrr�p`y�bMs�ign�I	% i%id3�nav{1�V p�ssl��ls�"� m�d
 sNu�mo] eSP�k�Ab~9
�vi� 2�500mw$�C nx�	idle0 281�w�q�	� a30�B b�Q b,zow��a\ na��	
���6�	divs"�y e�y sV��;2F95�foo� g*V��erT2$H 5a����nav1��)� sh t.�*�m�b1*�@ s<^��A3�f����&�NEarray"� .;A y���Z �F- s�empt25!#"�[%�E�)�� m*~ n�Ce�"#	�YR�R	a� r3�,Zor&m'Y�b ���!�5�han�x&V- n���Ie��n �C�div�x%��	*U#B�e��#[c�M� .!A sU��&{�k2k��� u/��"�o\bt��B�e1�b�
loan��wise�-�X yAei�,M\7%�3 t�|�$�;O�$��0�w#	�;.�cal�ewB�* lqml!��nsI0 n��6 k5�6Es�oymty F$ila.MNd"� k� eFTe wA�� y�b�Fzl3�gue�=}�&��3> r.p/[�f�v� u$D!Q&�!�)-$�-E�� a�6�AB�ru�)�� a���.k�P?F" o[C4G* c�&un�\.C ��. l.&pro�" sv4P�:� ��FO�&�low�aul�A�DK  p�H$grace$ rmony�rhy�G�# i�B��%M��hs�@�/�	n" ��W�.!�]eri��$ p�p(studAud)j6I�M;![et��a g���t"�$�0 e�^�h!� oE�ugA# eC��7��0/�[���q. v%
mM�%"x&�"D�HT�a�n�ego+�� ih�	0���,:�r=�A� i.�;����3I�Y o$Bf t%�)QzJ)� u� h�8�
� i7^c-<!�%>0AUq�!��mcamp�e n���&жE<i# le�<�7"�`� r�-�a4I�	I�e��Ue��!U����:ea9� r�+$N# e?#r ���]	XJ�Q�(�����ŕ�� yi< y��"plit�`�@͊�A7Q
��\G%^%]��Y u.�]� a�6$*E�� b��PdJ e8��V i�.3��	�<G c �aDN	�&&$_*�gy�/�sF* f�O��`63�E�X�A s� e%�"!�Au p��Gs"oG�\!%!Zst*uA�f�&Qx ��U9��/�Wab��$ ij=��(�#}�@,"ܴK r`��+�%�V�&B���1"�
6 f.J5�layQ aa��O o�'�c_&x�3�Ml)� n�E d�1�E: x�8it/�Gy a�v8��' m�� o��K	9d�24U� f=��# u�
�\�07e�old(	�.�q%�E&��"�7G��ChHrd�d��D ��no�	"�	"�2-� d*>��&�	�� e��!`]/1�
�y)[< s:t�r)D�+8=H!p5H���'e�" i��
�x����
dee�J�@!)�jo��40�m"U=ma� g�� s�� p��suEPI}�O��W�! d�:�#A%��%YɈ	8 rj#>7 o���/an�	E��I��Vdu��
� d�Iguwqz�G/��Ien�Y���
"f��H~!n w"��[	 h)F��A��c	7���	i�x� l��ub8 b�N�- rk"Y���%�Ee��&] �O?���'�'��$*z	!��"�2�N��	v#4i'j���		��A��ll	 r g���3 gчG�./	D!!�+*F�	 ! r`I&�-�!��6�HebC n!����v cv�!� r(�4JA� eUcal��ot�d�n_R�>pea}�k��~	!!-�V�W�;	��3edet�la�"�\%'"��66 r}}5tàam� s�.�go�m�
�� u��G�@ u�6) 9�odca�
)�!>ez�+"%x7G" sj8 s���
N��x�Ň� y�C�<m2ъ�iw%�4D}�op�QV�+ t�6B��]d%�!
I���pi�api�!+M( d� f1=��|2a� hWA�Z�c	'+6%k$�w� a:?hskJIb�	.o���*� d2W s�!ff'�h{a5*�$*�	������a��!op"(��i�- pO�$�0�� ekwalk�⭯��S��*��veloDp6*��tal٘�i�p	�X$Ah�S g=��	PE !��?�\��� �,I	 n�!b
A 2� ���qU�go��Nmis�	5 ez ��
�6 s�ruQ�tech�� l��$wo"3	H�"�2�-gblurs��q"� s!| h�$larA�"h_E=.!$W	�}�_5�V&Aq�)%"g���PI� h$� d.@�d�O*�m�Bm�e6�siOcA�"~�1/)�	� za��) vN�'�� !�co���X! bA� ea�+�� fun.1��eF�T��7A\��	�#A��x�#&B'�5�P@�!�ai|ttitu!�oup�)���t c.��(&b#od4�*hygienev�"�	,!���
U�qq{<Froom�s�@�urg�P� a�r e�rw�aX��wh8m���L+�sli	$	dshoy3ravel��th=�H0sk�A�!� d��0G/`�t p�[c��F y2�	�i c&@����&Ag�C m� r&sn!<bl-^O�gU��+>s"�Օ�. df y����"+�&,VF3GcBb	�G�I�7 ��/O=*/��H s�t��E�la�KI�����t/N' u�Ysyntax� s.B be"�X!�ݿ%Rexpe;���fr��L�/dea����� a|��3�k	 sASsty�	�!�����2H�	��le���+:��eny��Cunambigua��)�S cɠ�b�] g�!�F�&,A�a9 rq�cc�*%BQ˝ e)�* tIK s�~�l�
 n�o�: r�V�YA� s�+@T�outa��>��0 s�2�er^���%Au�<	�x'truWm  l���6��ex�'�y!$Ep ����&�") s���l$th�volunteV)�\ap
"���]��E s*�curiLOm�<d�guru6�^0��z� f��Int%� sL.&�A"�	 t_&�x6�0�l��[ngA����liday��J4 v0� m|	%���? eٕre�� e�*[A� b�AbugO"�de�N��e�&� ooAi�mis-�t%�IE!J�ad^ m�S"-��%~u%�vfel���/ i�) ��ow��� tEh&gn"�O&z.�	ItJ c�"?�*�#E[f%.a� rM�ipc��OAE�i�.�3 aNeli	�U2_�S�	�
 d��U�%U�aulu��FkT ed�N! s�# t�-�28ٿ����y2�pdo� �o d!�Ea� e��*t-�m�javadXk�>�
*���licyF�a�pA��ma���E��na�+�,�,�"ѡD!� w�N�rn�rȻf14xiK�3�q}�! rr�!~ir� m� n�A��riZ���a� u"" eP3�[a�A�,��4�c�upJq_�A>��z�:��4*G8'�?�	�:��	M��!A-!�蒩NEA�
w-X��-[eU:!%aHdigAefo- yX͹��:gh!�key�W��/��7cu��
:R�%�.P4�
=p�9�$�"3��I o"�t yy�#o&�O�	E��:cI�VZ m��2� tongӮ y��7.�y6> a�P� Ac@�DN��JT��nk/�peBia"< �_+
�'# s:�:stupA�"�AG"�1:B la��4�/����*U�$)olymorph' r�_low?ACQ�ng�9	K"� n1-! c2�@�?�A� n��?�o%<enjoy	
. f"%�r"D�ma?j* p5�-	FEA"\� ek&�;[  rI$�L i�D�"�s��ka;2%+a� s�l r�1! l�! r;Q�	�*'�0`� d�͢��U�e�	#5�WO.h	4vat�Q-��
5K_��r�rpr���ea+\e�<&� s"�"�u(�a d6�ncaps��*,a�� a#��w�E !�<!�p}�-:n�,�9mo�=� 5�&7"�":yp�)�mA[)�) cL9� nE��o�Xrga]	�EW z�� h�lu�s!s��su*��5}
Z
 vk7c���brM!�favor���*!���eo�m���b a8@�U� !yX3�sk	��U*�E
A�H	ep���v��H�;���E"�d�9����5�A�u��$�m�x�er%D�	�Q&I	reP\ n��E��lifwhee�o d� fx83� r*�U7�� i�\ d2 e�
�����*Hle" l�"# o?.��{�_�$�� l�� a��Ho	bor6�_I/� et�
Nlve� h�L h@�-a�$int�������ve�jo	��>�2l' d�O���c���%��i!����RI n����\"_�Q�	�9EHZ�� �c-F��re@nho�
�I��	a�!�r�k"�8$)����]R dB���y a�5�D y�I ��7A��#iYidi$U&		��a�	=W).��başkalI` n�4�ea( sM�nl�( a*6ardım1.�4	=�`deme�2mekt~2(çek�ilişk�i�imka�	v�2ur�2olm	��sağ�3�4ol�q} i	<yduk	HEp n�eğitim�33ek�5 m�güvene\�ce�3�ilhamp a�	(dan�koşaca�^�nokt�Ka l%� y�5oluş�*:+�sahi��waığ!6tılsım�h#7vei#�n�veya�-e�7ten� yi�çevr�özel�aH4�ayırara)$dur�büyü�5ni�ded�3m�et!�her=-�8��"i�n%	rl1�aste4m�ku	s-�mevn!%�E? a�U a�4paA�]6paylaş&)�i� r!�z�sü|ep6$kli�uzmanl)Q�6�6�!K m�b�4!�,asla�cömert�8mi'cQ��g�-A�8/sap�hüks8 r�9 yypeşi�5�tutm!d!� r!#yap�5%��a�çe�W�ödülA�.5�7	�A� bürünü1�k�w5k�dökm��9emez/858Nise�kaA\da�kim�`�utlaka!�!�duğunuE�kt m�7 yA�Lı�rüya�taahhüt�un�+ s7z�yaz�e�$önemi�ötA�a�kaa�l�1� rAWL6niş}�%(henüz�hiç! iIvy� l�dkiIcya�oys�6mas�yok@9i!�8ir�su
ler��_yakınAırAx ee
	0 bae: nA=p�ec�_ nel�#örüşm)� s�# nAU s�!inanmazs� z�muhtemec7ol�f t��5�8sonucuisefok!� ya8�9 c%�Al��56� berbatMf ��W�:vr�	n� in2 m"�:duru��,ö�;�8 �	�ri�!�+ nuzu�gere%ngö�a"�J���LAe�8(adar�kaldı��karşı)� l�enarA��konu� a*aj!1�um�olu��!ՍL�w!#�fep�t�onH?a��"AH�D�yN n!_ m)�E�k�!gia�abukE���a�ıs�ı
��H�şikayetçi�akşam&ı!�yı�mda!; m�;!���buçukX���ikkat%�ime5�ih�s�c�ilkuBınşgule�a�!9 me�sa��saba��kizde! r!8��t!
 k.� �� f�1�;yaK= s�H aCD8yla��IU<una�girsem�hep�k.FA�vZ lAv�y�T�e��çat!ma�arA0ş�`e ayrılmaz	ia� l�0[ge�# g��=�C t�S l��şE<Nparç!(�$ r� a2 !Vton��eke��ta\m aI6� y��aU ���baeA��bir!bir��!�oğru�� e͊0ne�etkili�fakH z�let�?m�ᯕ�kartM�V�ş;�kulle� ��	upa;��Gta�uas�L	 y�[%�"@!�te��!� l!�ıra�çoanemli�a�sızl�<��aha��� mezliktird>	́S i.pkesmeyw�ötü�o5	sa��TbirkaçMgünldavet��@sunuz�=�k!yi�PlektaA�(�b2 ı�mı�nEQ�8 l5�l y-	ğeI� d�"�	 naU n� mA d�@�rk�`	A�a�da5;W.G��de>��A� v�`�� b��^n�cı�Z	,i7tutk�ım�?�)� l���htar� mI�araç?!A�as@�EcE�>��edin���n
g
�'?�la��� ��� s)\ s%?���h@Qkipçili�� nA� t&
�2!�* k��2! �1�ı%klat��A���(�� h�l@!�ı�h3�izp>miIE�m6lu�va>��
çA� ���	�	!ZɁrat.� eu�2ı�� r��cakFhay�! d2�katlan� z=	Q�)vs�-T%B m�
[yer�zahmA����benz�irAhuyo���@şüiB�y cek�fırs�eDgehBne*�
�d.� n)Y	konuns��misyb<z-H me�ves;#= �AB l
K��P�büt� b( k��ceva�ğ�9 dinleyici
�
lini���M�Dfark�%gi
6!�|ş�a�s�� dI�ki�E5��le��� a*� z�un�ot�i���s�sor$
 r��		�t s�	 ye*nıt�'�� p]Zı��el�A� ��Crinde���&^bakab-D�D b�vel��ilg�aE�buA2� c<��akik�<& r)��ne�%z�
�d��umAY z���Za鉓e�ir�GEin
 z�[n�i�kb
h
de!�!����!�i1S�	)�g� ğ��kurul�D%�kumA��D�	samimi��sor1!�k-�����tefex
ufaka���2] y�ş�zaafIıza6 (ı�çünküO
-	 n�/-�E2 n�a a��beş�)�ir�� n�%� u4� d%�üny� e���gezeg/#lDida	se!� rK9 l�	�&kiu|!�a��F a8)�an%���	 y�Z nM�A�� l%��$��
!�gk�pe i=2�r tad��
!��SIteori	 y�F�q!�i�z!;P �0smu�5��"��güc� zç�!�,�G�E	B� !�|��va	r	y�Dda!�%�ɱ~� ka'le�S	<�oQLջie t�(q}ml�E r� n�4n�yolu�Y���d n� sin� bua�ny�<��	 g�	 rxd hʍQpayI>/ �!���
ver&
�0(:M��"ç�%!hs�`	l	 l�s	 a3$el�!P���
&� ��� �s�
 �\H�
in�lm�q
=K%&mi� zY��ol sı�sevdi�ni] sA���	zo�okE	 �Q�	gözü� hb$ t�Ist�w-XE�T	�U0*�0���!q p�4mak	�%w�AH�gibi^R g�1" ÉAU�L,e�johari�kap�v. n�O�k��
�KA� s�� m��UADşt�,*�I�cdu�pencN3 i
siv- i� ta%�uygu�AoirdAo�yer��ğr|ğim�Cey���P�Xra� n� gԹ�9 p)�de���� y�ir)�w
e#�miyimGşem�mü�Je���ş�0�i6$un�ayaküsO�����0K���şupD- e�-�?%�etirel�ak~�
ilginç��x��.j����!�on yzUnk�_M n�ürdürm��Rkra�%�uz%�
n�� d��ne�U�;$ömürlü��;��4şelerimizden��Ranlat�bir�daha�harikasın�lütfen�sen�çok�şey�başkalarıyla�gerçekten�ilgileninN�Ccesaret�dinleyici�etmesi�i�y�için�karşınızdaki�kendisinden�kişiLtolun�söz�verin�büyük�bırak�BG <işiye�konuşman%ısm�l<�gülümseyin�al!rına��VN �	OHun�uygun�şekilde�d lCXızı�dürüstçe�göst�Tiçten�takdir�ve�almak%+bütün%!@k�fırsattır�ins�>!1��t�ştı�->Oyardım	�!�!wHk�geçer�hissettirm-� �bkabul�%� l�i�on	�	^ p�-M0yolu�önemini		li!y�amaç	8ı��maya�e	� nin�gurur"hayatt!�iyA�,ı�kim�okşauolduk8�=P�$dur�çalı!� k� c)
ar!6zda�bağA!!bir%� dU�leş%$sin!��çlü�k!� zaız�%�$yle�kurulme4ı�o�olursy,�sağlamakla rJsürekli)i%�cı�bena
�E�ondaAB n�-�m�v2<r�öğrenilecek�E��nA�!�I�şeylerS� e	aW oyu�bulun�Pda�de�ederseniz�etkid!I�%��ilei?aD luF)%sele>daa�mlursunu!,dakati�samim0ğlık�servet!�%�yaA�atm! E�çocQMitikA�$�gerektiğA�girF	�m� m�hak	�I^ dE�lgB�ona�4a�o�unutmayınU�altāEA}5�arkada�ApşkA|g!zT�edinmek�elinizi�enerj	ifad!�%RE,lara�isitiyoQ[��Riş�/�_dar�� l�.da�neA�J�sokm��T d$A�ta�e!ve�x!H1�yap8Q� y���n�zm�� ��9Y�Y�=	��~��kıl2b vaz��ilmez%;A��Wis>!�dayu!�zm���	� i!�gre%}��ajdurma��&i�i�şi�oda�nmak�e�./$sahip�sır�� třt�!vr y��d%n�yeteneE�n�üz�pde
 e�am�� z�xarama	Elbir%`bu!��{uyar�da ı!�hedef!S<�herkes�ihtiyaç)lsi�gsei��Alsuni�a�tekqjs.0bakarken�ey!?upa^rmediyzi!T�;A�hal�ahlen1.� t	IM#)�!L� oa k�la	0ı�sadece�uzaA��yoğ!"I�ün��5�şöhrete9�qelkiЁ}bug�2	 g�im�O�aVlacU"duw d���siya�} e
ç!�sizei� mQS1r� y��rrne:lg.	�ĩ��	wuz=�7 ye� l�Mvars�Nrlı�<����i�� yh	da���mO!� r�:!� t�ȡ���x	$heyecan�ik!�iş��la�"�ıilnizde-�� e
aldı�kai aI�ler�Z	�	�nef�
sevA�eu	zsk!��z_
,ci�yeni�zoru!�.Lçık!�r�A d�complicated�constructing�arlciencies�design�make�obviously�onAPmple�software�two�way�Is�api�calls�hits�many�per�qps�queries�received�second�second.usually�web�aG g�cic=quests� t�u4r�term�traffic�pevery�minute�operation�pays�s�ify�speITystem�time�produce�rep!0�r	s �response	{bac�� s!`�bined�fact�fan�final�frontend�individual�%new%Q1y�refers	}%-sul|ul� t	�$corpus�data�8�entire�forward(s�leaf�orig�parents t)�p c!�s�roo!Qarch-X\s�1.4�100�access�amount�acertain�puMGpicA] d�distribu,easiest�figu�rac!� s.limit	,ed�lose�mach��s�mean(thod�number%Aperc!�power!��pr!�(put�quickly t!�ach� eads�sharimultaneA�sta��tore�H,unfortunatelE�4�whole�writes�� eA�4availability�ae&build):ape�istency2*gu�teeds�must	�arti!;%�
�possiblA�incia�re`ance��ly� n��s�M�	s�threi� u%9 aValso6� fail!��E�ortI ��rbitraryA(mun��tinu�n p!�duea�n�exa�^b$oing�invol!YlinkIlos�_E"AI0ssage�networkm� e%-%2AvidX� i)#plA�)�toler%=(acid�atomic%�)�le�bas i��y�)�mmitA�concural!�%�$crash�dataC	�zcrib� r1@evA��7execeR give�isol��Tlost�models�nosql�noth�of�problem v�d�re	?alA/�_ria��-�+ d�� �WstY=��transi�.  s. ’liangle�use�valid�weaker�will�bbigg!���um�	del��disk5٥��x 3M�4dvantage�block��	 dHtorej kI��documen!� f s�� d!b!@��x�inne� o����<ternals�key�know4ledge�like�looA�okedU�͈ng��y�Zir!feekF��thus�un>!|;unix%Fuse!Ell)CA�ingsѓ lA� ra�po�on�diffeE� d��էload� r��lrver�t�ypM�+job� em@ p�;��!�ider-�ly�ess��al�exi�eatu!fun�	al��a�islea%nonrio#organizos�ratheA� q!\!� sA�ụ%M��sup��=A�withoutE� p��a�.	� ta�4ck�flight�lameet��ccu�"� r�ZomeA� s�D p�Yd�1.3.11��ba-�	e.bett!�heck%�leA�co�:�.d�dra
 g)MA!�= s�health%L%edortant�i�)Kly�ka�� a�(t�mechanism	��R i�h�Ś co l�	for�o�� i��remoeW rIZ!�-9retur��safe
��se!Csng9�A y&�
stops�upgrade s	>�ڍu h��add e!�ck%�up s�omma4at���ded��d�dynammfrozY� f%g�la!� l�� ma�ak9-�:+ a�mov� paM9-U��
�ayY�dd�b�Fne)Aco��t�dec�	��g�go�goo�
�{ed�ki/	�months"P
!��	ce�
a��
���?gregO	�Iaday��wA�%�(years�allow�Bearw�qinHalA��
hang!�con[
��coordi�	�deploy!�esir i#Qdis�eaA�en	 d� c������flagaSp�howa�  p�aH�ly�mad�no���ou|recby�pre��push�easI	oll�w� s	&j�tog�F0rs�via�wednes!O*�rows�@�
w
liLA�Ma')8)-s�docsAfgo��(graceful�in�Mjava��pt�3�ga� o��YE�er��4�switch�technia��� d ka� r�# s�anpifets�digit�?asily� gx�tid�[)��	 ty�infras��
ip�pki� ve�publicE� t:	eV u!��,st�analysis�m r'	colle�exc�5on� a5�1iz!�	3 o�:T{!�0detects�error[es�frame���g���!)� m
p��	a�subm���e around�s�cle!y���un!Hcrea� dU�develop�effoYelseaD�6�ex)	!��s�handle&ghly�l^� mal	ma��h nopen!�du!pr�
 s)� s%�re�g��w��utdown�ome��sour tartup"�Y$s�tasks�unQ�ly�un��vendoe&��wrap�.E):�plat!��run�� sid�
 cŝ+!jbeyo%� lld�2���ys�expan��high�ho�iaaA*clu�
Pinexpen� jn�
���
k n]>| n� o\
opa��4
privA?-�:	"��%ic!��� e�edor�valuE riety�virvpn�<�al�a*�
s�aspe^���elastic� s�U�m�AE��%Y:�inn la1: n�much)�p!�-���
	I� sA
�scad9pec���ck1E{���� �A��na� nIMP�ne��ar�B�(�r	�Q�programm���	C��i*T		�e�%c na݉8 d�xk�littlR� m�.� B�ed�phyx��	�e�)<run�Hsepa���Q*!	adst6�� g� r\5�aemo�xul�e*� a�	 ne�� y*	 i; d�� s����tch���2˅��similar�$��team�
ed�ffect�	� n�arQ��wn\ hHB� ]oua�A�pl�� d=e�un1e w��aipcusto�g	� em%O\as9��ist�+olog��derl�5#�YmL eAt�Ydoc��	 y�� i�es�� e!P�.packa�b�!�ard��is�7.y"�	���"�anH�
.okis�cl ri9Q�siA�:.� i��en�
�Ce��
\�fa2� o�� e<~�http26�[4l3�l4�l7�layer��log�	��ix�� epre[protoco��ric�se�#${� tQ���al!vckk��urls�rs�whe"	��"�ad�& dm
u
"�	�� a!��!��� 	�
 s&�e	�	com!�nfwM�� al�debuggE� e��fo�
warAxhe!~%xU�in���A�	inja�insec�
�J�xinzip�issu�st9�v	p	�� o7&9 sA�.� xA�l	w� r!risks req!�efRtrf)e�?!�st�x�alw����	1p�incom!2�	�Ft�l�|��Z�g��appropr%"t��0 m�! e� bdix"looXim-Y last�2� D w& laq�~%C!�"�scheme&���low�A��
A�l�ano!^�asp�M�5C�I�ho�2�discu%�ier��go"��nit�M��2� �<ne! x*�al2��-�s���oluP
�sUickia�	ky0�ŀwent�u��1.pp!�_W!8 e�F!<n�c�cell� ������i�:t�"�fu��	��
 su eq&1	)d d.��e�Ij� nxn�laptop�x".��biv	oves�nate��*��rt�$ar�randoml&fer=rep�=�"�U� r����%�^ s��*f�{ s�A�ns�*ed��%�>web�w�’t�� n���wifi�Pk�would	�	�p��www.�	any�s sB we]B fi�	>G emailB .`���^3���&nceqy��rpretJ"�Az� d	 x!��M%�6�&i uT v+'�seam��[�ntjfied�Y)s!muInso�c�������s�dn� a~s�geoloci|$glb�globalAڅImanea�Nnorm�͘a=p�A(Am5US H�
��cerl���c�ryL
2� S	">	`��gez*�2isps��5a� a���y�� (e�point�pop�p sE9_ iA s!e:pla� tW� s��nel�
 lo.�# s� s�	radio͙R	}9_%f sG�x	rebyA�<	*x�ens�larg��" rI�aA�!�s(F�!��:: l&ub�b�.st�bo[ n7fix5�WE c�,_�)6a� l�A� e`4eer�enough�far"�  a�^�5 r tq s	����zegy-	� basic�boi!�un�up՞�@!ormulaic.';s�horiz���up�mas� mE!O���	or�
 s��o�	 o' s9v�	s�split	"�L �o�$���"&� d�do�%�anc-firm� ve
�&rk�mill"�%�ooM���A�^�MaN�) t�!۝�GabAW�-w�D�wl	lcraw��� EWa(ry�exhausts8$ctor� n�$	"�P%hitE�htm)��d-w�ojover%�� sm�%potAT�Treg� r��	a�$��Re�fault�AI ��� uv*��s�volume�F w�-H�
]	��fi� $ooE�iss�A�����2X  e%�iv�F mi� d� eio�O�%�	ch!�ld�emptyq�:low2F�~aAE��%��
 �� l3$�	�axiTX�;�!&aex` h2"keya�si^�segE�)�nz�!&��%��Aa��	� >8)"S���"[(s�unadverti,$behi�ig�!a-�!A�bu##\car� r�dis��� �Zget�gum�_"�T!Clong�nO�wis�#ck!� s�'K%��%�%c��	Y� r<��f�op��ɔstall��ad��E�d5$%^behalf8Q�dn�c�ent�" i��de	 yA��)tly�.	�fy�ima�	Qi@���m�m��a��]	� dX�eDa� �&$ oi�orld�U g�&�acr�%]�capacitaclo�A�M�� dAageaphy�grY r6�6!{,ґasj
���peK��""(u�!���aH���cop!E�!-����~i��$"�$s�typ�	X�ecal���s�x�ye��!d
r u��!�fa�dl�su�area"��L o�p7impa���W�)a�	r���r�� exceeds�fE7E�d�rd�( i!��u!�kee�
ng&��
: �rebQ*	�6se�w"	"?&�!N
� �tA�.	r���tchdogi�zero�201& c�!�ach��5#&barroso5' a_ �'�anger/ dden��) t���% �:%?f�malicO-���V-�od�pioq
ed2�&]
%\{3�+��2�!�Q�aso� ���A=,eyE��4robust^~"�#
:Qitu��"
)� s.�housa�	�k���F( vU)g�2�"
A�is�Nail� ��%�$heartbea"�3*� s� s(
rima%))�.�����s�tcp"=
unXq� a��b rg/ eW!X% aQ�q�shed��Zurn�#na�mpts��bus�VEāG mA�1�does�g'!h� g!f"�*��$ke�RV
nut w"R
Aj��pe�n hi r(�8�8�(spo!�/
jruddenqi�IIs��s�wai�t�c9 j:on���0*�'�re�/!y� !Edev&}o�E�al�o*G(� i=!�
 ilha�(	ő�ztogs�, a&b�alig~C,)co�A���$�	devel�4�viron��!�!� Fj|aL c�rior�-��bU��1�staffa��u�up%���	�, eA�:p�nei�	 �0�see�-silo7
�L!%�(��.�� o�pro�LOashol��#�"afdid{# d�%��ph�re��ca-!
Bbenefi�!� d�ntro�%�%p:�� s�54գ�� sE�O:�!�Q e=�� v!2����9!agg�ivs�V(de&O
 y2�1�C����U':A'$[�
�c�s�cpio��	!�en-$�r ��.��miliarg- s�mat��!p-	�. i*�in�E<�%�EI$o�liby08&� n�' y  a��ow�9 p���&perviplu�1�H@&��aJ��&��tar��stam�*"D-�- nmL2 zip�autom���ci%�inu�ay�� h!�fa .! g��I�"�)a��2�&'claims�*��me!�Jt%ѭ�M�ua�6fy�� o�ng�pos�-~Nvi�A s�#rB� �6�  y:
yd ��tr807	 a&�#�',$�.�onW0�K*a�x'T�eL� o��L#!s(.��R�:��gr[!Y� l#��-$*�na��!�E�tsv!ce	!P&G	#�.�2���Y*!��!��ub	� o� s/sw� d��7�,"wo)�"�!|,��"��^%� &4�eflic; !���i*`&("er�S eTerM%0 r�a�*�)as�@havioro*box�bMZ:o�+theP-(waytotellif� pS)onedEBor�	isto��|�I��X?�9GAnH�!K�eA� r��"�!�,inIh"�, s��%�A�
ro�/A�low.l�	 bEADg)�:A h�:E& si�up�
 dA�	 h�!Abwi�%q|�X!ng�Biga�erla�0��#ntdr�	-fsm"�	s�< u�
mK� w	55'	Q�&e, pG$���
0'"�#	,g:A7�uc� dMnt��&�% u�0�[�P�
"�5���/�n��(���8A� p�5��t�re!�bu�J.щun"M��� c8C i� G:&l�. u	(�.v6i 1�aս�. uI�5�a��imE�E���0�=�F���co}:Av uA.<.2�'�?����dsl.%nipud m�@# c��"�purpA�9�� x���1,0;� c�co����- d�" f�Zw@U����	em��am�thomp�throwA-)wr- e	�
a% rv	left�p*:���4HHsk�as� dH1RonA���{$human�view&�9"�
=�����gi�I)��campa� m"�&
 y� c�(|A��dilemma�` p�* vEr	grow�h hz���	Y<�%LH d� o�5�.� y��ru��'sa?! s u�M	 s�&�5-�!V�5A�e��� i�6w	 e� n�m�! n�	aA*8�)�t�"i5�w�(�_!�do�ucet��$r�i0leaWj m
hut.E p@7[
�urgA:�!we’re��	 y� s2�	6�choaqI0�ix!ac� y� e%!� n�Ab	� m%9ly�N�<fal	eref�cycUdiu�9x�!tr� n] 5*�1<	44
�� y;LAG csxw���<	g�@ɸ�s�pi�-I� s(As n%qs�wee�:M!�a!�Jf �m�!6se��	��hrin%�tr:!�visual_9�ac�� l�:d�alera�q	"(@�g�a8�b�+�+	dead��drop����!�U&	�e�tB�"�1����m�%N� c  �	ay��h96Q1G	)�!�-� ��4&�-� i�&y�cp�� s��$���.�ai l�	 d&?*iagno'�0C�= o� c�	�p5��������	�4!qlla�fi�B tA e2�<ogE2�  o�.EZ*�@*m	 x�? o^�$]
F���<I��@A�`�L n�5K5byi�.6)B>fcpu�CL�)Zq&expi. f> ng�r�<o�*help�'�r+ �=+ s�	7learn	�)�'e�!�"lt3 m2 nL3�	'ed�D
1�+"�	M�f y"�!�� psslU��68 iKŞ n"�?�utiu� ,it�B�m�meta.� �� �� l��3$�Rq�$utc�zones�H  i�6"�blackbox��a�	de�]�do�?6��
�.��!5)!�6�7A��%Y
M�"�#.� @(the'I�UF�9��!xK�% t�� s2aoe#A� g&�A�%mE�� ��
iE���6;ar��a�de��A.�s�gauge	T	ECc6p!h!2E�or4	�8zDch�.jE�!�]��? r�.M�' m�&0un� v&�5�/at�5%dpi��.Evoa��'�	�U�% %� fA���eq_�e�
  d�%�a;�B m�C d�5�H�� v$0]6=(�/ tumlie� e�(bugQ" s��� s� "2 xH
yiB t�h� ili�9@�.� e5,0"�#!�*I��2\(Z-�su)O� sE�k�up� �8�%*qEm�	�	� r�E(aC��a� t95?� a�G�"��>	���vul,%a�%H)<2�.i maximum�+yV9	XE�m�	��!�re�!;4�� x��4�G  o�/dis�%	�Bh>!�py�c.�E�s" y�!�ore`J o%H��W��AP�9	�A�ou"Rgoal'
thYc&�sus�%R2e d)+E%knd;�
�*)LerF,�#�#�F�5�;ac�9��!d)J��m�%�dou!�faf+�ED"�L�� l�� n�X����� ��
clas�<a���"M y���G�+��al[�@collabA�������5hA�mocko�!�G|>�& ���& f)I��I\4e�outc�'llel��quen�1U7y(%�� w��a�p- e!)
de�}"ide"�ing�!&�i�]cogn<Psh&�/Y�!� s�OIE: yI]cohe�e,3 aoF#	� m�"2�y��a�X7!�og�r� �o(�M=  dIleg�� s/�3 t�/a��"�5"���a7 h!�;2 oJA\:. 4AG�@ u���M�li�ep� ���i5&u���
 1�/Şhave1$��4, a�L�@ ��e�2��)�*V lega�-��6  paC s�'F 3E�*U@��ai�h9�8�_����F l!�a l�#^E�q�!&� d"ceB7e�0nomI��{�)aL t�! ax
subse�O a��!qeree��)E��work�3 prn�aaa�. o�	�br~�! nA�rd�6 s6��� �*%arr�$*�
u s-T�� r�0!�{ o:!J cV""�	�avnon���"�5�5!*!�sui!� r^Ithus,$% anti�bran4< gt u�2��� ���s��*
ste�!ǩ�fix�
aBon�oK�	"R 1�rg[LE�."<H p���vLV�p�P�h�1�V$ o��a`+%
���-mai]�run s	��suA�stA�d�_��D"odiL�scenar�&��� f�namea�AN�GU%\"�?mscoKwo�Q�q�	�c� �HNes		*y
q+ v��;remem%R4ik )m mfoqHU.+ɇiMpi�	�u-�!X �� 1�j-bug$
 p��&��. u��x���!��le	[mod���2 "U�SFH"�2: %�)�����!�	%E�)cha� e�	�j��2�.)//I��Za�xtA�!� r�		��aJ�����?�non9. ���g
�c i���	�(tre�Kng��M&& "�F��uiliZ:B& t�O%�[Q�m�
"���^�8,W�u�	�" R&q e�q�*4) t.�%v.!�de#�K�PM1)K��&���3>� q sݴ�Q"����ЍK	� k�[�'���ngA�N!� y.5 e�
2� e�4 t�)�a#EM.)��ubn2 <L r�+E���%Q� m� c��Krgn3�>!4�	H'
orc6��!#x7� sAass�7n3 a�x��a o�<� )�i�A-td*��ha)��:rkflow��	�.�a��(�'j
S" lk#���$d�snapshot�u"!V
)��Z�b��
�/�journe�8n�	.%te�-?>� ,!� t��:lif��\& c�% n���sty`T=��Z sU:s�j� m�%module��S��y� �+`w x�2�	ul�6ec6N6 7�G�taa	�m��r2� ea�A!��=�!le�j&M"1X&\vu� e%? g��"�.���0� l1N o�2� �$	@rasL� kI	��� sYhvo� ab�,� d�� o�6�A�� s� (!�rief�illr��"dic��
�M�� ia�!F�u�;�-ry,ngl�: d	 ./ s�" oI�find�3�<2% �2� jsdom)sEA rF>Z���-��%�onu'�E e�����:&U	lo�in�mu���� x�	XH�up�*a db xB�XM"you’I.R�
nt� �X!)�Xrum�|>	`	�y asynchron�/ p�[ke	�'vuex�r"n*aMA��[�7�
=	�	a�O nj
	�Z!� r6	��� e|a�rogM"� d�;(��link�= ap g� 79�oute>YF�K  g}"J h�%ry�h/S[�wQX	K�Q�Q rT?Sndow.R .R	��)�ll]8� g!Aw�D!�outputOy�����m� p�Ǎ b+R]8��]�funda�&�ru����-srE��fbun�5(�doğru�eğ�5içbi�jşe*�e k�` za�a c a��$ir�söylü�a�gve�cve_g�yedzo"bfl8fızadan�iyidir�hşunka
[maa�uzun�eEbb�bhepna �g r�#dimize�d	)] y�6ak�yokJf m�f�d�hmeliyif�h si�gitmey� o�uz�f[c��A\"�gi�.Ax s�him	�Team�s
b�g c�e$unu�anonim c tdavran�h$düşünme�L hw6ar�b�d m�jğu	(mamın�saç�f�b�sonuc�j�k|e n1"�	h a�bMf!2�g bzfph e�e l�g)& ne�bu�cü�Bi��h ��eğil!��er�hmpat�edü��üzü�creb�g k5Fdim�A��c�Edf ��in�kull�j nA1 z*Ag8da�muhtemelen�nMk l)�ayE�ol!�zo�jtekwl�j�ir�z�şu�M dUJ	�Qr�QIJdön!��d!�	�ye�hiddeirE�	ih3jge")fxiolgunl!�n�akl�%�
!�6�io-zA��du3g1rI;ed�ec!�niz�m i~i	özEaiç�A� lE�a�!]z�huzurpe*Qmdi d! l\nka~omk o9gnlar�k�parç!��san!"eUtar�AstercihRf dWai-��TolAw�1��$� n�mi!�e�-�M^�demez�g|elüler!��sj�zA� far(özgüdür�!�e!x-�eIA�rtu�mp aSp�j z�çekmek@*öfke�E�ntü�nktaa_3qgel�hg��h)�arekAF�+	�ç�h �öcünüZg hE3�m� r�BBi�!��9�1O(�merhametliV��$�o�)�m mAR kKg lEi*Lien� y�ninerek>�hafH)��oul�oça�uğ�j�� �E���ye���kincey�]oka�a1me����Mvu
!�bu%(!sbun�i�dalg�#B�CXçenI3üz!}MuevI��)�Sk�utançA�saM�en�sn ��möz�.0ğiniz�şeyi���              ��������������������������������������-�1��	_id��_all��+	paragraph     Y      Y'     Y/      &     6     Y<     X�     �,