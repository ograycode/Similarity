require "./similarity.rb"

if ARGV.length == 2
	sim = Similarity.compare ARGV[0], ARGV[1]
else
	sim = Similarity.compare "hello world is a basic program", "hello world is a basic sentence"
end
puts sim.to_s