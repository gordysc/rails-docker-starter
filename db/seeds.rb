1.upto(10) do |num|
  Account.create(name: "Account #{num.to_s.ljust(2, '0')}")
end
