class VisitorsController < ApplicationController
    before_action :authenticate_user!, only: [:new , :show]  
    before_action :find_visitor, except: [:index, :new, :create]
   


    def show
        @posts = @visitor.posts
        if @visitor != current_user
        elsif @visitor = current_user
          redirect_to visitors_path
        end
    end
    

    def index
        if @visitors = current_user
        @visitors = current_user.visitors.all
        else 
            redirect_to  user_session_path
        end

    end 

    def new 
        @visitor = Visitor.new
    end

    def create 
        @visitor = Visitor.new(person_params)
       @visitor.user = current_user

        if @visitor.save
            redirect_to "/visitors/#{params[:visitor_id]}/"
            flash[:notice] = 'Well done! You added Information successfully'

          else
            flash[:alert] = 'Oh snap! Try again'
            render 'new'
          end
    end

    def edit
        @visitor = Visitor.find(params[:id])
    end 

    def update
        visitor = Visitor.find(params[:id])
        visitor.update(person_params)
        flash[:notice] = 'Your update successfully'
        redirect_to "/visitors/#{params[:visitor_id]}/"
    end 

    def destroy
        Visitor.find(params[:id]).destroy
        flash[:notice] = 'Pip-Pip!'
        redirect_to   visitors_path
    end 

    private
    def person_params
      params.require(:visitor).permit(:FullName, :Phone_no, :BirthDay)
    end
    def find_visitor
        @visitor = Visitor.find(params[:id])
      end


  
end
