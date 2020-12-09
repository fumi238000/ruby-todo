require './todo'
require './message'

class Controller
  include Message

  def self.todo_list

    todo = ToDo.new
    
    while true

      select_list_message
      
      print "選択してください > "
      select = gets.chomp.to_i 

      case select
        when 1 
          todo.add

        when 2
          #削除処理
          todo.delete

        when 3
          todo.index
    
        when 4
          puts "ありがとうございました"
          break
        
        else
          puts "再度入力してください"
      end

    end
  end



end