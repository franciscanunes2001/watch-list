class ListsController < ApplicationController
    before_action :find, only: [:show, :edit, :update, :destroy]
    def index
        @list = List.all
    end

    def show;    end

    def new
        @list = List.new
    end

    def create
        @list = List.new(list_params)
        if @list.save
            redirect_to list_path(@list)
        else
            render :new
        end
    end

    def edit;    end

    def update
        @list.update(list_params)
        redirect_to list_index_path(@list)
    end

    def destroy
        @list.destroy
        redirect_to list_index_path
    end

    def list_params
        params.require(:list).permit(:name)
    end

    def find
        @list = List.find(params[:id])
    end

end

