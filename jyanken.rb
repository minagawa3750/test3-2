def jyanken_game
  puts "じゃんけん..."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"

  player_hand = gets.to_i
  program_hand = rand(3)

if player_hand > 3
  puts"じゃんけんアプリを修了します"
  return false
end

 jyanken = ["グー","チョキ","パー"]
  
  puts "ホイ!"
  puts "----------------"
  puts "あなた:#{jyanken[player_hand]}をだしました"
  puts "相手：#{jyanken[program_hand]}をだしました"
  puts "----------------"

  if (player_hand == 0 && program_hand == 1) ||
     (player_hand == 1 && program_hand == 2) ||
     (player_hand == 2 && program_hand == 0)
 
     jyanken = "win"
     return false
      
  elsif player_hand == program_hand
  
     puts "あいこで..."
     return true
  
  else 
     jyanken = "lost"
     return false

  end
end

  puts"あっち向いて..."
  puts"0(上)1(下)2(左)3(右)"
  code =["上","下","左","右"]
  player_code = gets.to_i
  program_code = rand(4)
  puts"ホイ!"
  puts "----------------"
  puts"あなた:#{code[player_code]}"
  puts"相手:#{code[program_code]}"
  puts"----------------"

if jyanken == "win" && player_code == program_code
  puts "あなたの勝ち！"
  
elsif jyanken =="lost" && player_code == program_code
  puts "あなたの負け"

else
  jyanken_game

end