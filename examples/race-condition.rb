@executed = false
def ensure_executed
  unless @executed
    puts "executing!"
    @executed = true
  end
end
threads = 10.times.map do
  Thread.new { ensure_executed }
end
threads.each(&:join)