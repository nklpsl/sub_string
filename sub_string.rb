def substrings(str, dic)
  str.downcase!
  has = str.split(' ').reduce(Hash.new(0)) do |ans, w|
    dic.each do |w_dic|
      if w.include?(w_dic)
        ans[w_dic] += 1
      end
    end
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low",
              "own","part","partner","sit"]

substrings("below", dictionary)

