class SchoolClassesController < ApplicationController
    before_action :find_schoolclass, only:[:show, :edit, :update]

    def index
        @school_classes = SchoolClass.all
    end

    def show
        #before_action
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.new(school_class_params)
        # @school_class.title = params[:title]
        # @school_class.room_number = params[:room_number]
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def edit
        #before_action
    end

    def update
        #before_action
        
        if @school_class.update(school_class_params)
            redirect_to @school_class
        else
            render 'edit'
        end    
    end

    private

    def find_schoolclass
        @school_class = SchoolClass.find(params[:id])
    end

    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end

end
