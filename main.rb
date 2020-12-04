require'pry'

##----------------------------------------Task
#タスクは3つの情報を持つ
#id, title, content
# タスクのidは一から順番に振られる

class Task
  def initialize(**params)
    title = :title
    content = :content
  end

  def info
    puts "受け取った値は#{title}です"
  end

end


##----------------------------------------TODO
# タスクの追加・タスクの一覧表示・削除の機能を持つ
# タスクのIDを指定して削除を行う

class ToDo

  def def initialize
    @tasks = []
    puts "#{@task}"
  end

def add(task) 
  @task = task
  puts @task
  p @task
end


# def info(task)
#   puts "#{task}"
# end



end


##-----------------------------------------以下main.rbの処理


# 初期設定の導入

task1 = Task.new(title: "洗濯", content: "8時までに干し終える")
task2 = Task.new(title: "水を飲む", content: "500ml")
binding.pry

todo = ToDo.new
todo.add(task1)

# todo.info
# todo.info





















# ------------------
# # #「タイトル」を要求する
# print "タイトルを入力 >"
# input_title = gets.chomp

# #「タイトルのタスク」を要求する
# print "タスクを入力 >"
# input_content = gets.chomp

# #③表示する
# puts "タイトル：#{input_title} ： タスク#{input_content}" 







# task1 = Task.new(title: "洗濯", content: "7時半までに干し終える")


# todo.add(task1)
# todo.info 








# 値を配列に格納する処理

# p input_content

# task = Task.new(input_title,input_content)

# task.info









# todo_list = []
# todo_list << input_task

# p todo_list
# puts todo_list




# タスクとタイトルを変数に格納する



# 格納した配列を表示する処理(+ with_indexを追加する)



# Task-------------------------------

# class Task

# end




# # ToDo-------------------------------
# class ToDo
#   def add
#     puts "#{title:}"
#   end

# end


# task1= Task.new(title: "洗濯", content:"７時半までに干し終える")
# task2= Task.new(title: "仕事", content:"9~18時")
# task3= Task.new(title: "買い物", content:"卵、ヨーグルト")

