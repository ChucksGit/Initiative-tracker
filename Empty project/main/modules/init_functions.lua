require "main.modules.d20"

function roll_init(modifier)
	local roll = roll_d20()
	roll = roll + modifier
	return roll
end

function add_to_order(order_table, roll_table, friendly_table, roller, roll, is_friend)
	print(is_friend)
	local is_friendly = is_friend
	if is_friendly == nil then
		is_friendly = false
	end
	print("add_to_order ", is_friendly)
	if order_table[1] == "blank" then
		order_table[1] = roller
		roll_table[1] = roll
		friendly_table[1] = is_friendly
	else
		i = 1
		while i < table.maxn(order_table)+1 do
			if roll > roll_table[i] then
				table.insert(order_table, i, roller)
				table.insert(roll_table, i, roll)
				table.insert(friendly_table, i, is_friendly)
				return order_table, roll_table, friendly_table
			end
			i = i+1
		end
		table.insert(order_table, roller)
		table.insert(roll_table, roll)
		table.insert(friendly_table, is_friendly)
	end
	return order_table, roll_table, friendly_table
end

function remove_from_order(order_table, roll_table, creature)
	i = 1
	while i < table.maxn(order_table)+1 do
		if creature == order_table[i] then
			print(table.remove(order_table, i))
			table.remove(roll_table, i)
		else
			print("WTF?")
		end
	end
	return order_table, roll_table 
end