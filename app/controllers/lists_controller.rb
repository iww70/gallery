class ListsController < ApplicationController
  # GET /lists
  # GET /lists.json
  def index
    @category = Category.find_by_id(params[:category_id])
    @images = @category.images.all
    @category_array = Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @images }
    end
  end

  # GET /lists/1
  # GET /lists/1.json
  def show

  end

  # GET /lists/new
  # GET /lists/new.json
  def new

  end

  # GET /lists/1/edit
  def edit

  end

  # POST /lists
  # POST /lists.json
  def create

  end

  # PUT /lists/1
  # PUT /lists/1.json
  def update

  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy

  end
end
