customers = [
  {name: "田中",age: 30,height: 160},
  {name: "佐藤",age: 70,height: 150},
  {name: "鈴木",age: 10,height: 120}
]

   puts "-------------------------"
customers.each do |customer|
  puts "#{customer[:name]}さん"
  if customer[:age] <= 64
    puts "年齢  #{customer[:age]}歳:年齢確認OK"
  else
    puts "年齢  #{customer[:age]}歳:年齢確認NG"
  end

  if customer[:height] >= 130
    puts "身長 #{customer[:height]}cm:身長確認OK"
    puts ""
  else
    puts "身長 #{customer[:height]}cm:身長確認NG"
    puts ""
  end

  if customer[:age] <= 64 && customer[:height] >= 130
    puts "ご利用いただけます"
    puts "-------------------------"
  else
    puts "ご利用いただけません"
    puts "-------------------------"
  end
end
