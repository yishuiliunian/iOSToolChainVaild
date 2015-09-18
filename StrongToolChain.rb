require './src/rules.rb'
check = RuleCheck.new
isvaild = check.check

if isvaild
  print "恭喜临时没问题\n"
else
  print "检测没有通通过\n"
end
