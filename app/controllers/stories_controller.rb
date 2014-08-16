class StoriesController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_story, only: [:show, :edit, :update, :destroy]
  before_action :validate_user, only: [:edit,:update,:destroy]
  before_action :list_religions, only: [:edit,:update,:destroy,:new]

  # GET /stories
  # GET /stories.json
  def index
    @stories = Story.all
  end

  

  # GET /stories/1
  # GET /stories/1.json
  def show
  end

  # GET /stories/new
  def new
    @story = Story.new
  end

  # GET /stories/1/edit
  def edit
  end

  # POST /stories
  # POST /stories.json
  def create
    @story = Story.new(story_params)
    @story.user = current_user

    respond_to do |format|
      if @story.save
        format.html { redirect_to @story, notice: 'Story was successfully created.' }
        format.json { render :show, status: :created, location: @story }
      else
        format.html { render :new }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stories/1
  # PATCH/PUT /stories/1.json
  def update
    respond_to do |format|
      if @story.update(story_params)
        format.html { redirect_to @story, notice: 'Story was successfully updated.' }
        format.json { render :show, status: :ok, location: @story }
      else
        format.html { render :edit }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stories/1
  # DELETE /stories/1.json
  def destroy
    @story.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Story was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # User can only edit and delete their own stories
    def validate_user
       unless @story.user.id == current_user.id
          begin
          redirect_to(:back, :status => 301, flash: {error: "Sorry. You can not edit or delete this story because you are not the author"})

        rescue ActionController::RedirectBackError
          redirect_to(root_path)
        end

       end
    end 

    def list_religions
      @religions_list = Religion.all.map { |r| [r.name,r.id]  }
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @story = Story.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_params
      params.require(:story).permit(:title, :content, :user_id, :religion_id, :image)
    end
end
