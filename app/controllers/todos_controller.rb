class TodosController < ApplicationController
  
  def index
      @todos = Todo.all
  end
  
  def new
      @todo = Todo.new
  end
 
   def create
        @todo = Todo.new(params.require(:todo).permit(:title, :start_date, :end_date, :allday ,:memo))
     
     if @todo.save
         
        flash[:notice] = "新規予定を登録しました"
       redirect_to :todos
     else
         
       render "new"
     end
   end
 
   def show
       @todo = Todo.find(params[:id])
   end
 
   def edit
       @todo = Todo.find(params[:id])

   end
 
   def update
       @todo = Todo.find(params[:id])
     if @todo.update(params.require(:todo).permit(:title, :start_date, :end_date, :allday, :memo))
     
       flash[:notice] = "ユーザーIDが「#{@todo.id}」の情報を更新しました"
       redirect_to :todos
     else
       render "edit"
     end
   end
 
   def destroy
     @todo = Todo.find(params[:id])
     @todo.destroy
     flash[:notice] = "予定を削除しました"
     redirect_to :todos
   end
        
end
