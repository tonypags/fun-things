function Get-Excuse {
	<#
	.NOTES
	This list is taken from [Things to say when you're losing a technical argument](https://web.archive.org/web/20050131033632/http://www.skirsch.com/humor/techarg.htm)
	#>	
	$excuses = @'
		That won't scale.
		There are, of course, various export limitations on that technology.
		The syntax is idiosyncratic.
		Trying to build a team behind that technology would be a staffing nightmare.
		That can't be generalized to a cross-platform build.
		Unfortunately, the license would contaminate our product.
		If we go with that idea, we're going to have Don Marti camped out in the front lobby with 300 angry software jihad supporters.
		Our support infrastructure simply can't handle the volume that change would involve.
		I had one of the interns try that approach for another project, and it scrambled the CEO's hard drive. So I think it's going to be a hard sell.
		Yes, well, that's just not the way things work in the real world.
		I like your idea. Why don't you write up a white paper and we'll review it at the next staff meeting?
		I think you need to stop taking this so personally. We need to think about what's best for the project, not about our own little pet theories.
		Oh, I played with that approach back as an undergrad. Got a D, too.
		I was reading about that on BugTraq yesterday.
		Yes, I believe that's the approach Windows NT is taking.
		That's totally inefficient on modern hardware.
		Well, yes, but it really reduces to the knapsack problem in that case. Do you have some kind of heuristic, or are we dealing with an NP-complete case?
		Have you LOOKED at the number of I/O requests that will create?
		We can't afford the transaction overhead.
		Yeah, or we could all just plink away on Amigas or something.
		What? I don't speak your crazy moon-language.
		No, that would break object encapsulation.
		I don't think that's altogether clear. Please write it up in UML for me.
		I think there's a problem with your drive geometry.
		Can you generate some USE CASES that would justify the change?
		How is that going to impact the schedule?
		RAM is cheap and all, but...
		It would probably be best if we deferred that until version 2.0.
		I like it, but it is too point-oh for my tastes.
		If you make this change, I will fork the code.
		Yes, well, unfortunately the economy is going away from anything remotely like that. Our investors would kill us.
		Jakob Nielsen wrote an interesting hit piece on that.
		Yes, yes, we've all read DJB's RFCs on the subject.
		Well, I guess we could start the QA cycles again from square one. That would require a press release, though.
		You used to program in Pascal, didn't you?
		Why don't we make a generalized solution including both options, and let the administrator decide with a config-file setting?
		You've obviously ignored the various namespace issues.
		I don't think you're considering the performance trade-offs.
		What kind of benchmarks have you been running?
		Let's table this for now, and we'll talk about it one-on-one off-line.
		This really doesn't jibe with our core competency.
		This sort of thing should really be outsourced.
		I remember that IBM had a project to do that back in the 70s.
		We need this to fit on a single floppy.
		Yes, but can this be embedded in a toaster, for example?
		We need something that my mom can use.
		Users won't want to click through that many layers of hierarchy.
		The packaging costs will be prohibitive.
		OK, but what about internationalization?
		Look, would you just get off your Be obsession for FIVE MINUTES and talk serious design with us?
		That's a good idea -- you should do that on your home page.
		Ho, man! Are they still AROUND? That's so cool. I thought that whole idea was discredited years ago.
		What you're not seeing is the difference between an 'is-a' and a 'has-a' relationship.
		There is no hope for the widow's son, Boaz.
		Yes, but we're standardizing on XML.
		Well, that's great if you have an AI running the thing.
'@
	($excuses -split "`n" | Get-Random).Trim()

}#END: function Get-Excuse
