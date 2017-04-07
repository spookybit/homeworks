def quadratic(fish) #n2
  longest = fish[0]
  fish.each_index do |idx|
    (idx + 1 ... fish.length).each do |idx2|
      if fish[idx].length > fish[idx2].length && fish[idx].length > longest.length
        longest = fish[idx]
      end
    end
  end
  longest
end

def bubble_sort(fish) #O(n logn)
  sorted = false
  until true
    sorted = true
    (0 .. fish.length - 1).each do |idx|
      if fish[idx] > fish[idx + 1]
        sorted = false
        fish[idx], fish[idx + 1] = fish[idx+1],fish[idx]
      end
    end
  end
  fish[-1]
end

def one_time(fish) #(n)
  longest = fish[0]
  fish.each {|f| longest = f if f.length > longest.length}
end

def once_search(arr, target) #n
  arr.each { |x| return x if x == target}
end

def instant(target) #0(1)
  hash_options = {
    "N" => "N",
    "S" => "S",
    "W" => "W",
    "E" => "E",
    "NE" => "NE",
    "NW" => "NW",
    "SW" => "SW",
    "SE" => "SE"
  }

  hash_options[target]

end
