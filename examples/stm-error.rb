require 'concurrent'
account1 = Concurrent::TVar.new(100)
account2 = Concurrent::TVar.new(100)
begin
  Concurrent::atomically do
    account1.value -= 10
    raise
    account2.value += 10
  end
rescue
  puts 'Ops, error'
end
puts "Account1: #{account1.value}, Account2: #{account2.value}"