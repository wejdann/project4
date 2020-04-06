class VisitorsController < ApplicationController
    before_action :authenticate_user!, only: [:new , :show]  
    before_action :find_visitor, except: [:index, :new, :create]
   
    def show
        @visitor = Visitor.find(params[:id])
        @posts = @visitor.posts
        if @visitor != current_user
            flash[:notice] = 'Not allowed!'
        elsif @visitor = current_user
            flash[:notice] = 'Allowed!'
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
          else
            render 'new'
          end
    end

    def edit
        @visitor = Visitor.find(params[:id])
    end 

    def update
        visitor = Visitor.find(params[:id])
        visitor.update(person_params)

        redirect_to "/visitors/#{params[:visitor_id]}/"
    end 

    def destroy
        Visitor.find(params[:id]).destroy
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
