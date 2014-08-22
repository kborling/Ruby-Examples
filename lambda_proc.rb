
/ Proc /
my_proc = Proc.new { puts "I am a proc" }

my_proc2 = proc { |name| puts "Hello, #{name}" }

my_proc2.call "Kevin"
my_proc.call






/ Lambda /
my_lambda = lambda { }
/ or /
my_lambda = -> { }

my_lambda2 = lambda { |name| puts "Hello, #{name}" }

my_lambda2.call "Kevin"
