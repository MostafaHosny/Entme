class FilmsController < ApplicationController
  before_action :set_film, only: [:show]

  # GET /films
  # GET /films.json
  def index
    @films = Film.all
  end

  # GET /films/1
  # GET /films/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_film
      @film = Film.find(params[:id])
    end
end
