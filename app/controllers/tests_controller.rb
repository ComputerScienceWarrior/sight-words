class TestsController < ApplicationController
    before_action :find_test, only: [:show, :edit, :update, :destroy]

    def index
        @tests = Test.all
    end

    def show
    end

    def new
        @test = Test.new
    end

    def create
        @test = Test.new(test_params)
        if @test.save
            redirect_to user_test_path(current_user, @test)
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @test.update(test_params)
            redirect_to user_test_path(current_user, @test)
        else
            render :edit
        end
    end

    def destroy

    end

    private

    def test_params
        params.require(:test).permit(:title, :grade, :user_id, :questions, :subject, :points)
    end
        
    def find_test
        @test = Test.find(params[:id])
    end
end
