require './task'
require './message'

class Controller
  include Message

  def edit_todo_list

    task = Task.new
    
    while true

      select_list_message
      
      print "選択してください > "
      select = gets.chomp.to_i 

      case select
        when 1 
          task.add_task

        when 2
          #削除処理
          task.delete

        when 3
          task.index
    
        when 4
          puts "ありがとうございました"
          break
        
        else
          puts "再度入力してください"
      end

    end
  end

end