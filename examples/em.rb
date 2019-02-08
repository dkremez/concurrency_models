require 'eventmachine'

EM.run do
  puts 'starting...'
  EM.add_timer(1) do
    puts 'sleeping 1 sec...'
    EM.system('sleep 1') { puts "woke up after 2nd sec!" }
    puts 'continuing...'
  end
  EM.add_timer(2) { puts 'I do things after 2 sec...' }
  EM.add_timer(3) do
    puts 'stop after 3 sec...'
    EM.stop
  end
end