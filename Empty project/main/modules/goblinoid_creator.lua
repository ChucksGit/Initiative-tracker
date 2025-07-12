require "main.modules.percentile"
require "main.modules.triple_rand"

-- For use with goblins, orcs, and hobgoblins
function generate_goblinoid_name()

	local beginning_consonants = {
		"b",
		"bh",
		"bl",
		"br",
		"ch",
		"d",
		"dr",
		"g",
		"gl",
		"gn",
		"gr",
		"h",
		"k",
		"kl",
		"kr",
		"l",
		"m",
		"mh",
		"n",
		"r",
		"s",
		"sc",
		"scr",
		"sh",
		"t",
		"th",
		"tr",
		"v",
		"y",
		"z" 
	}

	local ending_consonants = {
		"b",
		"d",
		"g",
		"hd",
		"hr",
		"k",
		"kt",
		"l",
		"lt",
		"m",
		"mb",
		"n",
		"nd",
		"ng",
		"nk",
		"nt",
		"r",
		"rb",
		"rd",
		"rg",
		"rk",
		"rn",
		"rs",
		"rsh",
		"rt",
		"rz",
		"s",
		"sh",
		"sk",
		"st",
		"t",
		"v",
		"z" 
	}

	local vowels = {
		"a",
		"e",
		"ee",
		"i",
		"o",
		"oo",
		"u",
		"y"
	}

	local B_CON_LEN = #beginning_consonants
	local E_CON_LEN = #ending_consonants
	local VOW_LEN = #vowels
	
	local name = "str"
	
	if roll_percentile() < 34 then
		name = vowels[triple_rand(VOW_LEN)]
	else
		name = beginning_consonants[triple_rand(B_CON_LEN)]
		name = name.. vowels[triple_rand(VOW_LEN)]
	end

	name = name.. ending_consonants[triple_rand(E_CON_LEN)]
	--print(name)
	
	if roll_percentile() < 67 then
		name = name.. beginning_consonants[triple_rand(B_CON_LEN)]
		name = name.. vowels[triple_rand(VOW_LEN)]
		name = name.. ending_consonants[triple_rand(E_CON_LEN)]
	end
	--print(name)
	return(name)
end

function generate_trait()

	local buffs = {
		"brutal",
		"twitchy",
		"hefty",
		
		
		
	}

	local debuffs = {
		"puny",
	}

	local attitude = {
		"cunning",
		"cowardly",
		"sneaky",
	}
end
		


		


		