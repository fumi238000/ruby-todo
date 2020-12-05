class Task

  # タスクを格納する配列
  def initialize
    @@tasks = []
  end
      
  #保存処理
  def add(add_task)
    @@tasks << add_task
  end


  #タスク一覧表示
  def index
    if @@tasks == []
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

end