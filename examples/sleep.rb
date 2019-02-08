threads = 10.times.map do |i|
  Thread.new { sleep 1 }
end
threads.each(&:join)