def ftoc(temp)
  ((temp.to_f - 32) / 1.8).round
end

def ctof(temp)
  ((temp.to_f * 1.8) + 32).round
end