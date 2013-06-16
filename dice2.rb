def score(dice)
  result = 0
  counts = Hash.new(0) 
 
  dice.each do |value|
    counts[value] += 1
  end
  
  counts.each do |item,numFound|
    if item == 1 && numFound >= 3 then
      result += 1000
      numFound -= 3
    end
    if item != 1 && numFound >= 3 then
      result += item * 100
      numFound -= 3
    end
        if item == 1 && numFound <= 2 then 
      result += 100 * numFound
    end
    if item == 5 && numFound <=2 then
      result += 50 * numFound
    end
  end
  result
end