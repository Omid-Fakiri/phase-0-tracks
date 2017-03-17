=begin
	This will be an attempt to breakdown the U.S. Executive Branch.
	This branch of government contains: 1) U.S. President 2) U.S. Vice President
	3) Cabinet.
	This nested data structure will break down each part of the branch by:
	name, position, and gender.
=end

executive_branch = {
	us_president: {
		names: ['Donald Trump'],
		positions: ['U.S. President'],
		genders: ['m']
	},
	vice_president: {
		names: ['Michael Pence'],
		positions: ['U.S. Vice President'],
		genders: ['m']
	},
	cabinet: {
		names: ['Michael Pence', 'Rex Tillerson', 'Steven Mnuchin', 
			    'James Mattis', 'Jeff Sessions', 'Ryan Zinke',
			    'Sonny Perdue', 'Wilbur Ross, Jr.', 'Alexander Acosta',
			    'Thomas Price', 'Benjamin Carson, Sr.', 'Elaine Chao',
			    'James Perry', 'Elisabeth DeVos', 'David Shulkin',
			    'John Kelly', 'Reince Priebus', 'Robert Lighthizer',
			    'Daniel Coats', 'Nikki Haley', 'Mick Mulvaney',
			    'Mike Pompeo', 'Scott Pruitt', 'Linda McMahon'],
    	positions: ['U.S. Vice President', 'Secretary of State', 'Secretary of the Treasury',
    	            'Secretary of Defense', 'Attorney General', 'Secretary of the Interior',
    	            'Secretary of Agriculture-designate', 'Secretary of Commerce', 'Secretary of Labor-designate',
    	            'Secretary of Health and Human Services', 'Secretary of Housing and Urban Development', 'Secretary of Transportation',
    	            'Secretary of Energy', 'Secretary of Education', 'Secretary of Veterans Affairs',
    	            'Secretary of Homeland Security', 'White House Chief of Staff', 'U.S. Trade Representative-designate',
    	            'Director of National Intelligence-designate', 'Representative of the United States to the United Nations', 'Director of the Office Management and Budget',
    	            'Director of the Central Intelligence Agency', 'Administrator of the Environment Protection Agency', 'Administrator of the Small Business Administration'],
		genders: ['m', 'm', 'm', 'm', 'm', 'm', 'm', 'm', 
		          'm', 'm', 'm', 'f', 'm', 'f', 'm', 'm',
		          'm', 'm', 'm', 'f', 'm', 'm', 'm', 'f']    	            
	}	
}

p executive_branch
#This just returns the entire nested data structure as a hash.

executive_branch[:cabinet][:names].each do |person| 
	p person
end
=begin
The cabinet is the heaviest sub-hash of the three.  So, this code above will return
the names of the members of the cabinet one-by-one.
=end

executive_branch[:cabinet].each do |person, value| 
	p value[1]
end
=begin
Again, this deals with the cabinet.  This time, if you want to access a particular
members data, just type in the index number on the p statement.  Right now, this code
will return "Rex Tillerson" "Secretary of State" "m". Each item will be returned on
it's own line.
=end

p executive_branch[:us_president][:names][0].replace("Hillary Clinton")
p executive_branch[:us_president][:genders][0].replace('f')
p executive_branch
=begin
This will allow you to replace the name of the U.S. President.  If the gender is 
different like it is in the above example, you would need that 2nd line of code
to accomodate that.  Finally, the final line of code will update the nested data
structure with the changes.