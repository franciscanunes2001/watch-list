class BookmarksController < ApplicationController
    before_action :find, only: [:show, :edit, :update, :destroy]
    def index
        @bookmark = Bookmark.all
    end

    def show;    end

    def new
        @bookmark = Bookmark.new
    end

    def create
        @bookmark = Bookmark.new(bookmark_params)
        if @bookmark.save
            redirect_to list_path(@bookmark)
        else
            render :new
        end
    end

    def edit;    end

    def update
        @bookmark.update(list_params)
        redirect_to list_index_path(@bookmark)
    end

    def destroy
        @bookmark.destroy
        redirect_to list_index_path
    end

    private
    def bookmark_params
        params.require(:bookmark).permit(:comment)
    end

    def find_movie
        @bookmark = Movie.find(params[:movie_id])
    end

    def find_list
        @bookmark = List.find(params[:list_id])
    end
end
