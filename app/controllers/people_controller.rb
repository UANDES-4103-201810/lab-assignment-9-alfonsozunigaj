class PeopleController < ApplicationController
  before_action :set_actor, only: [:edit, :update, :destroy]

  # GET /people
  # GET /people.json
  def index
    @actors = Actor.all
  end

  # GET /people/1
  # GET /people/1.json
  def show_all
    @actors = Actor.all
    @directors = Director.all
  end

  def show_actors
    @actors = Actor.all
  end

  def show_directors
    @directors = Director.all
  end

  # GET /people/new
  def new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  # POST /people.json
  def create
    role = params[:type]
    if role == 'actor'
      @actor = Actor.new(first_name: params[:first_name][:first_name], last_name: params[:last_name][:last_name], birth_date: params[:birth_date][:birth_date], description: params[:description][:description])
      respond_to do |format|
        if @actor.save
          format.html { redirect_to @actor, notice: 'Actor was successfully created.' }
          format.json { render :show, status: :created, location: @actor }
        else
          format.html { render :new }
          format.json { render json: @actor.errors, status: :unprocessable_entity }
        end
      end
    else
      @director = Director.new(first_name: params[:first_name][:first_name], last_name: params[:last_name][:last_name], birth_date: params[:birth_date][:birth_date], description: params[:description][:description])
      respond_to do |format|
        if @director.save
          format.html { redirect_to @director, notice: 'Director was successfully created.' }
          format.json { render :show, status: :created, location: @director }
        else
          format.html { render :new }
          format.json { render json: @director.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /actors/1
  # PATCH/PUT /actors/1.json
  def update
    respond_to do |format|
      if @actor.update(actor_params)
        format.html { redirect_to @actor, notice: 'Actor was successfully updated.' }
        format.json { render :show, status: :ok, location: @actor }
      else
        format.html { render :edit }
        format.json { render json: @actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actors/1
  # DELETE /actors/1.json
  def destroy
    @actor.destroy
    respond_to do |format|
      format.html { redirect_to actors_url, notice: 'Actor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_actor
    @actor = Actor.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def actor_params
    params.require(:actor).permit(:first_name, :last_name, :birth_date, :description)
  end
end