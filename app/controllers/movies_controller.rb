class MoviesController < ApplicationController
    before_action :find, only: [:show, :edit, :update, :destroy]
    def index
        @movie = Movie.all
    end

    def show;    end

    def new
        @movie = Movie.new
    end

    def create
        @movie = Movie.new(movie_params)
        if @movie.save
            redirect_to movie_path(@movie)
        else
            render :new
        end
    end

    def edit;    end

    def update
        @movie.update(movie_params)
        redirect_to movies_path(@list)
    end

    def destroy
        @movie.destroy
        redirect_to movies_path
    end

    def movie_params
        params.require(:movie).permit(:title, :overview, :postar_url, :rating)
    end

    def find
        @movie = Movie.find(params[:id])
    end

end
