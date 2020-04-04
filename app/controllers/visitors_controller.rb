class VisitorsController < ApplicationController
    def index
        @visitors = Visitor.all
    end 

    def show
        @visitor = Visitor.find(params[:id])
        @posts = @visitor.posts
    end 

    def new 
        @visitor = Visitor.new
    end

    def create 
        Visitor.create(params.require(:visitor).permit(:FullName ,:Phone_no ,:BirthDay))
        redirect_to   visitors_path
    end

    def edit
        @visitor = Visitor.find(params[:id])
    end 

    def update
        visitor = Visitor.find(params[:id])
        visitor.update(params.require(:visitor).permit(:FullName ,:Phone_no ,:BirthDay))
        redirect_to visitor
    end 

    def destroy
        Visitor.find(params[:id]).destroy
        redirect_to   visitors_path
    end 
end
