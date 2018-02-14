class TodosController < ApplicationController
    def index 
        @todos = Todo.all
    end

    def show 
        @todos = Todo.find(params[:id])
    end

    def new
        @todos = Todo.new(todos_params)
    end

	def edit
		@todos = Todo.find(params[:id])
	end

    def create 
        @todos = Todo.new(todos_params)
      if
        @todos.save
        redirect_to @todos
      else
          render 'new'
      end
    end
    # def calculateFinish
    #     x_data = []
    #     y_data = [] 
    #     x_data.push(@todos.modified)
    #     y_data.push(@todos.end)
    #     linear_regression = RubyLinearRegression.new 
    #     linear_regression.load_training_data(x_data, y_data)
    #     linear_regression.train_normal_equation
    #     p "Trained the model with the following cost-benefit trade off #{linear_regression.compute_cost}"

    #     prediction_data = [2112312141, 1231231241]
    #     predicted_end = linear_regression.predict(prediction_data)
    #     puts "Predicted actual completetion time of: #{predicted_end}"
    # end
   
	def	update
		@todos = Todo.find(params[:id])
        if @todos.update(todos_params)
            redirect_to @todos
        else
           render 'edit' 
        end
	end

    def destroy 
        @todos = Todo.find(params[:id])
        @todos.destroy
        redirect_to todos_path
    end

    private

    def todos_params 
        params.permit(:project, :description)
    end
end
