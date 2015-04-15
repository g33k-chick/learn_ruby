def ftoc(x)
	c = ((x - 32.0) * 5.0/9.0).round(1)
end

def ctof(x)
	f = (x * 9.0/5.0 + 32.0).round(1)
end
