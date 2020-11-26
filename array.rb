langs = ["Ruby","PHP","Java"]
greeting = '"Hello World!"'
puts "様々な言語のHello World"
puts ""

langs.each do |lang|
case lang
when "Ruby"
  puts "#{lang}:puts #{greeting}"
when "PHP"
  puts "#{lang}:echo #{greeting};"
when "Java"
  puts "#{lang}:System.out.println(#{greeting});"
 end
end
