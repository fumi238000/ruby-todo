class Todo

  # タイトルとタスクを戻り値にハッシュとして返す処理
  def create_hash
  
    #文字数制限を追加予定
    print "タイトルを入力 > "
    input_title = gets.chomp

    #文字数制限を追加予定
    print "タスクを入力 > "
    input_task = gets.chomp
    
    #表示
    puts <<~TEXT
            ---------------------------------------
               [追加]#{input_title}：#{input_task}
            ---------------------------------------
           
    TEXT

    # 変数に格納する
     add_tasks = {title: input_title,task: input_task}
 
  end

  #タスクを削除する処理
  def delete(tasks)
    puts "タスクを削除します"
    
    #タスクの配列を出力する
    tasks_length = tasks.size

    #タスク番号を表示
    print "どのタスクを削除しますか？ > "
    select = gets.chomp.to_i
    
    binding.pry
    if select == 1..tasks_length
      #受け取ったインデックス番号を削除
      puts "以下を削除しました"
      puts "[削除]【#{tasks[select-1][:title]}】：#{tasks[select-1][:task]}"
      tasks.delete_at(select -1)
     else
      puts "その番号はありません"

    end

  end

end