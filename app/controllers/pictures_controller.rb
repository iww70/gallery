# coding: utf-8
class PicturesController < ApplicationController
  
  def index
    @pics = Picture.all
  end   
  
  # /picures/1 GET
  def show
    unless @pic = Picture.where(id: params[:id]).first
      render text: "Page not found", status: 404
    end
  
    # длиная форма записи
    # if  @pic = Picture.where(id: params[:id]).first
    #   render "pictures/show"
    # else
    #   render text: "Page not found", status: 404
    # end
  end
  
  # /pictures/new GET
  def new
    @pic = Picture.new
  end
  
  # /pictures/1/edit GET
  def edit
    @pic = Picture.find(params[:id])
  end
  
  # /pictures POST
  def create
    # короткая запись - создает/использует все переменые 

    puts "++++"
    puts params[].inspect
    puts "++++"

    @pic = Picture.new(params[:picture])

    if @pic.save
      flash[:notice] = "Создано!"
      redirect_to picture_path(@pic) # /pictures/:id
    else
      render "new"
    end
    
    # длинная запись
    # @pic = Picture.create(title: params[:title], description: params[:description])
    # render text: "#{@pic.id}: #{@pic.title}"
  end
  
  # /pictures/1 PUT
  def update
    @pic = Picture.find(params[:id])
    @pic.update_attributes(@params[:picture])
    if @pic.errors.empty?
      redirect_to picture_path(@pic) # /pictures/:id
    else
      render "edit"
    end    
  end
  
  # /pictures/1 DELETE
  def destroy
  end
  
end
