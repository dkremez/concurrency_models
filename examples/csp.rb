require 'concurrent-edge'

array = [1, 2, 3, 4, 5]
channel = Concurrent::Channel.new
Concurrent::Channel.go do
  sleep 2
  puts "Go 1 thread: #{Thread.current.object_id}"
  channel.put(array[0..2].sum) # Enumerable#sum from Ruby 2.4
end
Concurrent::Channel.go do
  sleep 1
  puts "Go 2 thread: #{Thread.current.object_id}"
  channel.put(array[2..4].sum)
end
puts "Main thread: #{Thread.current.object_id}"
puts channel.take + channel.take