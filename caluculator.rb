#計算方法の定義
#加算
def add(a,b)
  a + b
end

#減算
def sub(a,b)
  a - b
end

#乗算
def mul(a,b)
  a * b
end

#除算
def div(a,b)
  if b == 0
    puts "0で割ることはできません"
    return
  end
  a / b
end

#数字かどうかの確認
def is_numeric?(string)
  Float(string) rescue false
end

loop do
  #一つ目の数値の入力
  puts "一つ目の数値を入力してください:"
  a = gets.chomp
  if !is_numeric?(a)
    puts "数値ではありません"
    next
  end
  a = a.to_f

  #演算子の入力
  puts "演算子 (+, -, *, /) を入力してください:"
  operator = gets.chomp

  #二つ目の数値の入力
  puts "二つ目の数値を入力してください:"
  b = gets.chomp
  if !is_numeric?(b)
    puts "数値ではありません"
    next
  end
  b = b.to_f

  #計算方法の設定
  case operator
  when "+"
    result = add(a, b)
  when "-"
    result = sub(a, b)
  when "*"
    result = mul(a, b)
  when "/"
    result = div(a, b)
  else
    puts "演算子が正しくありません"
    next 
  end

  #計算結果の表示
  puts "計算結果: #{result}"

  #計算を続けるかどうか確認する
  puts "計算を続けますか？ (y/n)"
  continue = gets.chomp.downcase
  
  break if continue != "y" && continue != "yes"
end