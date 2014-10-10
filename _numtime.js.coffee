numbers = ->
	@::seconds    = -> @ * 1000
	@::minutes    = -> @seconds() * 60 
	@::hours      = -> @minutes() * 60
	@::days       = -> @hours() * 24
	@::weeks      = -> @days() * 7
	@::years      = -> 
		curYear = (new Date).getFullYear()
		days = 0
		for n in [1..@]
			if curYear % 4 is 0
				days += 366
			else 
				days += 365

			curYear++

		@days() * days

	@::centuries  = -> @years() * 100
	@::millenniums = -> @centuries() * 10

numbers.apply Number