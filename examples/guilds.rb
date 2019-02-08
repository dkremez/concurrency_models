bank = Guild.new do
  accounts = ...
  while acc1, acc2, amount, channel = Guild.default_channel.receive
    accounts[acc1].balance += amount
    accounts[acc2].balance -= amount
    channel.transfer(:finished)
  end
end
channel = Guild::Channel.new
bank.transfer([acc1, acc2, 10, channel])
puts channel.receive