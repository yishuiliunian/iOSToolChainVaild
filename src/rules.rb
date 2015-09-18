

class Rule
  def check
    return false
  end
end


class XcodeGhostRule < Rule
  def check
    return !(File.exist?'/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/Library/Frameworks/CoreServices.framework/CoreService')
  end
end
class RuleCheck < Rule
  def  check
    rules = Array.new
    rules << XcodeGhostRule.new

    for r in rules
      if r.check
      else
        print "过程没有通过\n"
        return false
      end
    end
  end
end



