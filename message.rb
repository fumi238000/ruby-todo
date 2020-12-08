module Message

  def select_list_message
    puts <<~TEXT
    ------------------ 処理一覧画面-----------------
              
                1,タスクを追加する
                2.タスクを削除する
                3.タスク一覧を表示する 
                4.タスクを閉じる

    ----------------------------------------------
    TEXT

  end


  def add_message(input_title,input_task)
    puts <<~TEXT
    -----------------------------------------------------------
    【追加】#{input_title}：#{input_task}
    -----------------------------------------------------------
   
    TEXT
  end


  def index_task_message(tasks)
   
    tasks.each.with_index(1) do |task, i|
      puts <<~TEXT
          【No.#{i}】【#{task[:title]}】：#{task[:task]}
      TEXT
    end

  end


  def delete_message(tasks,select)
    puts  <<~TEXT
      以下を削除しました
      -----------------------------------------------------------
      【削除】【#{tasks[select-1][:title]}】：#{tasks[select-1][:task]}"
      -----------------------------------------------------------
    TEXT

  end

end