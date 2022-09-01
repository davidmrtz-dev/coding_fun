ary_s = [61197933, 56459859, 319018589, 271720536, 358582070, 849720202, 481165658, 675266245, 541667092, 615618805, 129027583, 755570852, 437001718, 86763458, 791564527, 163795318, 981341013, 516958303, 592324531, 611671866, 157795445, 718701842, 773810960, 72800260, 281252802, 404319361, 757224413, 682600363, 606641861, 986674925, 176725535, 256166138, 827035972, 124896145, 37969090, 136814243, 274957936, 980688849, 293456190, 141209943, 346065260, 550594766, 132159011, 491368651, 3772767, 131852400, 633124868, 148168785, 339205816, 705527969, 551343090, 824338597, 241776176, 286091680, 919941899, 728704934, 37548669, 513249437, 888944501, 239457900, 977532594, 140391002, 260004333, 911069927, 586821751, 113740158, 370372870, 97014913, 28011421, 489017248, 492953261, 73530695, 27277034, 570013262, 81306939, 519086053, 993680429, 599609256, 639477062, 677313848, 950497430, 672417749, 266140123, 601572332, 273157042, 777834449, 123586826]
ary_2_s = [278, 576, 496, 727, 410, 124, 338, 149, 209, 702, 282, 718, 771, 575, 436]
num_k = 9
num_2_k = 15
expected = 50

def non_divisible_subset(s, k)
  floated = Array.new
  s.sort.uniq.each { |num| floated << num.to_f }
  constructed_ary = Array.new
  max_measures = Array.new

  floated.each_with_index do |_, index|
    max_measures << recursive_search_criteria(Array.new(floated), constructed_ary, k, index).size
    constructed_ary = []
  end

  puts max_measures.max
end

def recursive_search_criteria(collection, constructed_ary, k, index)
  return constructed_ary if collection.empty?

  if constructed_ary.empty?
    constructed_ary << collection[index]
    collection.delete_at(index)
  end

  constructed_ary << collection.first if number_verified?(constructed_ary, collection.first, k)
  collection.shift
  recursive_search_criteria(collection, constructed_ary, k, nil)
end

def number_verified?(constructed, evaluted, k)
  if constructed.size.equal?(1)
    return ((constructed.first + evaluted) / k) % 1 != 0
  else
    constructed.all? { |num| (((num + evaluted) / k) % 1.0) != 0.0 }
  end
end

non_divisible_subset(ary_2_s, num_2_k)