range1 = 0...5_000_000
range2 = 5_000_000...10_000_000
number = 8_888_888
t1 = Thread.new { puts "Thread1: #{range1.to_a.index(number)}" }
t2 = Thread.new { puts "Thread2: #{range2.to_a.index(number)}" }
t1.join
t2.join