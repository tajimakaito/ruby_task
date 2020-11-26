plans = [
  {destination: "沖縄",price: 10000},
  {destination: "北海道",price: 20000},
  {destination: "九州",price: 15000}
]

def disp_plans(plans)
  puts "旅行プランを選択して下さい！"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:destination]}旅行(¥#{plan[:price]})"
  end
end

def choose_plans(plans)
  while true
    print "プランを選択 > "
    select_plan_num = gets.to_i
    break if (1..3).include?(select_plan_num)
    puts "1~3のプランから選んで下さい。"
  end
    plans[select_plan_num - 1]
end

def decide_num_people(chosen_plan)
  puts "#{chosen_plan[:destination]}旅行ですね、何人でいきますか？"
  while true
    print "人数を入力 > "
    select_num_people = gets.to_i
    break if select_num_people >= 1
    puts "1人以上選択して下さい。"
  end
  select_num_people
end

def calculate_charges(chosen_plan, select_num_people)
  total_price = chosen_plan[:price] * select_num_people
  if select_num_people >= 5
    puts "5人以上なので10%割引となります。"
    total_price *= 0.9
  end
  puts "合計料金:¥#{total_price.floor}"
end


disp_plans(plans)
chosen_plan = choose_plans(plans)
select_num_people = decide_num_people(chosen_plan)
calculate_charges(chosen_plan, select_num_people)
