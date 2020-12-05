require './todo'
require './task'
require './message'

class Controller
  include Message

  def make_todo_list

    todo = Todo.new
    task = Task.new
    
    while true

      select_list
      print "選択してください > "
      select = gets.chomp.to_i 

      case select

      #タスクを追加する----------------------------------------------
        when 1 
        # taskをハッシュで作成し、変数にハッシュを格納
        add_task = todo.create_hash

        #保存処理
        task.add(add_task)

        #一覧表示
        task.index

      #タスクを削除する----------------------------------------------
        when 2
          #一覧を表示
          tasks = task.index
          #削除処理
          todo.delete(tasks)

      #タスク一覧を表示する------------------------------------------
        when 3
          task.index
    
      #終了する-----------------------------------------------------
        when 4
          puts "ありがとうございました"
          break
      #エラー処理----------------------------------------------------
        else
          puts "再度入力してください"
      end

    end
  end

end