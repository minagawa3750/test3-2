def jyanken_game
  puts"じゃんけん"
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  
  jyanken = ["グー","チョキ","パー"]
  player_hand = gets.to_i
  program_hand = rand(3)

  if player_hand > 2
    puts"じゃんけんアプリを終わらすぜ！"
    return false
  end

  if player_hand <= 2
    puts "ホイ!"
    puts "----------------"
    puts "あなた:#{jyanken[player_hand]}をだしました"
    puts "相手：#{jyanken[program_hand]}をだしました"
    puts "----------------"
  end

  if (player_hand == 0 && program_hand == 1) ||
     (player_hand == 1 && program_hand == 2) ||
     (player_hand == 2 && program_hand == 0)
     
      @jyanken_result = "win"
      attimuite_hoi
      
  elsif player_hand == program_hand
     puts "あいこで..."
     jyanken_game
  
  else 
     @jyanken_result = "lost"
     attimuite_hoi

  end
end
 
def attimuite_hoi
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

  if  @jyanken_result == "win" && player_code == program_code
    puts "勝ったぜ！"
  
  elsif @jyanken_result == "lost" && player_code == program_code
    puts "負けたぜ..."
  
  else
    jyanken_game
  
  end
end

jyanken_game