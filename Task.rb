class Task

  # タスクを格納する配列
  def initialize
    @@tasks = []
  end
      
  #一覧表示機能
  def index
    if @@tasks.empty?
      puts "登録がありません"
    else
      puts  "現在のタスク"
      @@tasks.each.with_index(1) do |task, i|
        puts <<~TEXT
        【No.#{i}】【#{task[:title]}】：#{task[:task]}
        TEXT
      end
    end
  
  end


  #保存機能
  def add_task
  
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
    @@tasks << {title: input_title,task: input_task}   
  
    index
  
  end



 #削除機能
  def delete

    index
    
    #タスクの配列数を取得し変数に格納
    tasks_length = @@tasks.size

    #タスク番号を取得する
    print "どのタスクを削除しますか？ > "
    select = gets.chomp.to_i

    #受け取ったインデックス番号を削除
    if (1..tasks_length).include?(select)
      puts "以下を削除しました"
      puts "[削除]【#{@@tasks[select-1][:title]}】：#{@@tasks[select-1][:task]}"
      @@tasks.delete_at(select -1)
    
    else

      puts "その番号はありません"

    end

  end

end