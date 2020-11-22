puts <<~TEXT
旅行プランを選択してください
1. 沖縄旅行(¥10,000)
2. 北海道旅行(¥20,000)
3. 九州旅行(¥15,000)
TEXT

plan_num = gets.chomp.to_i

def plan_num(destination, price)
puts "#{destination}ですね、何人で行きますか？"

num_people = gets.chomp.to_i
return "人数を選択してください" if num_people <= 0
if num_people >= 5
  puts <<~TEXT
  5人以上なので10%割引となります
  合計金額:¥#{(num_people * price * 0.9).floor}
  TEXT
else
  puts "合計金額:¥#{num_people * price}"
 end
end

if plan_num == 1
  puts plan_num("沖縄旅行", 10000)
elsif plan_num == 2
  puts plan_num("北海道旅行", 20000)
elsif plan_num == 3
  puts plan_num("九州旅行", 15000)
else
  puts "1~3から選択してください"
end
