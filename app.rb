class Game
  @@array = Array.new(3) { Array.new(3) }
  @@array.each {| row | row.map! {| _ | '_' } }

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start_game
    puts "New Game between #{@player1} and #{@player2}"
  end

  def print_board
    puts "| #{@@array[0][0]} #{@@array[0][1]} #{@@array[0][2]} |"
    puts "| #{@@array[1][0]} #{@@array[1][1]} #{@@array[1][2]} |"
    puts "| #{@@array[2][0]} #{@@array[2][1]} #{@@array[2][2]} |"
  end

  def player1_move
    while true
      puts "#{@player1} make your move"
      @move = gets.chomp
      @move_array = @move.split()
      if @@array[@move_array[0].to_i][@move_array[1].to_i] == "_" 
        @@array[@move_array[0].to_i][@move_array[1].to_i] = "X"
        break
      else
        puts "Invalid move, this cell is not empty"
        print_board
      end
    end
  end

  def player2_move
    while true
      puts "#{@player2} make your move"
      @move = gets.chomp
      @move_array = @move.split()
      if @@array[@move_array[0].to_i][@move_array[1].to_i] == "_" 
        @@array[@move_array[0].to_i][@move_array[1].to_i] = "O"
        break
      else
        puts "Invalid move, this cell is not empty"
        print_board
      end
    end
  end
end

game = Game.new("javi", "pepe")
game.start_game
game.print_board
game.player1_move
game.print_board
game.player2_move
game.print_board