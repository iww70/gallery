class SelectsController < ApplicationController
  # GET /selects
  # GET /selects.json
  def index
    @selects = Select.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @selects }
    end
  end

  # GET /selects/1
  # GET /selects/1.json
  def show
    @select = Select.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @select }
    end
  end

  # GET /selects/new
  # GET /selects/new.json
  def new
    @select = Select.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @select }
    end
  end

  # GET /selects/1/edit
  def edit
    @select = Select.find(params[:id])
  end

  # POST /selects
  # POST /selects.json
  def create
    @select = Select.new(params[:select])

    respond_to do |format|
      if @select.save
        format.html { redirect_to @select, notice: 'Select was successfully created.' }
        format.json { render json: @select, status: :created, location: @select }
      else
        format.html { render action: "new" }
        format.json { render json: @select.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /selects/1
  # PUT /selects/1.json
  def update
    @select = Select.find(params[:id])

    respond_to do |format|
      if @select.update_attributes(params[:select])
        format.html { redirect_to @select, notice: 'Select was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @select.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selects/1
  # DELETE /selects/1.json
  def destroy
    @select = Select.find(params[:id])
    @select.destroy

    respond_to do |format|
      format.html { redirect_to selects_url }
      format.json { head :no_content }
    end
  end
end
