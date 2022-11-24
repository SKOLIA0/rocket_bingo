require 'json'
require 'date'
arr = File.new("rocketbingo.txt", "r:UTF-8", ).readlines(chomp: true).map(&:to_i)
hash_replace = []
pslovie = []
anti_slovie = []
p arr
  [*1..75].each do |num|
    count = arr.count(num.to_i)
    hash_replace << Hash["number" => num, "count" => count]
  end
 hash_replace.sort_by! { |k| k["count"]}
 itog = hash_replace.reverse.first(30)
 anti_itog = hash_replace.reverse.last(10)
 itog.map {|x| pslovie <<  x['number'] }
anti_itog.map {|x| anti_slovie <<  x['number'] }
 puts "горячие #{pslovie.join(", ")} холодные - #{anti_slovie.join(", ")} "