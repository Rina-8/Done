class Pokemon
  attr_accessor :power, :hp
  def initialize(power:, hp:)
    @power = power
    @hp = hp
  end

  def Pokemon.combat(player1, player2)
    puts "************"
    puts "戦闘開始"
    puts "************"
    index = 1
    # 引き分けの時の処理
    if player1.power === player2.power
      puts "----------"
      puts "第#{index}戦"
      puts "----------"
      puts "引き分けです"
    # player1の攻撃力の方が強い時
    elsif player1.power > player2.power
      # hpが0になるまで繰り返す処理
      while player2.hp > 0
        player2.hp -= player1.power
        puts "----------"
        puts "第#{index}戦"
        puts "----------"
        puts "ピカチュウの残りHP: #{player1.hp}"
        puts "ゼニガメの残りHP: #{player2.hp}"
        index += 1
      end
      puts "**********"
      puts "決着！！！"
      puts "**********"
      puts "ゼニガメ瀕死、、ピカチュウの勝利！！"
    # player2の攻撃力の方が強い時
    else
      # hpが0になるまで繰り返す処理
      while player1.hp > 0
        player1.hp -= player2.power
        puts "----------"
        puts "第#{index}戦"
        puts "----------"
        puts "ピカチュウの残りHP: #{player1.hp}"
        puts "ゼニガメの残りHP: #{player2.hp}"
        index += 1
      end
      puts "**********"
      puts "決着！！！"
      puts "**********"
      puts "ピカチュウ瀕死、、ゼニガメの勝利！！"
    end
  end
end

# ピカチュウが勝つ場合
Pika1 = Pokemon.new(power: 13, hp: 30)
Zeni1 = Pokemon.new(power: 6, hp: 50)

Pokemon.combat(Pika1, Zeni1)

# ゼニガメが勝つ場合
Pika2 = Pokemon.new(power: 5, hp: 30)
Zeni2 = Pokemon.new(power: 8, hp: 50)

Pokemon.combat(Pika2, Zeni2)