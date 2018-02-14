class CommentsController < ApplicationController
    def create 
        @todos = Todos.find(params[:id])
        @comments = @todos.comments.create(comment_params)
        redirect_to todos_path(@todos)
    end 

    private
    def comment_params 
        params.require(:comment).permit(:commenter, :body)  
    end
    
end
