class CatsController < ApplicationController
  
  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find_by(id: params[:id])
    render :show
  end

  def create
    @cat = Cat.new(cats_params)
    if @cat.save
        redirect_to cats_url
    else
        render :new
    end
        
  end

  def new
    @cat = Cat.new
    render :new
  end

  def edit
    @cat = Cat.find_by(id: params[:id])
    render :edit  
  end

  def update
    @cat = Cat.find_by(id: params[:id])
    if @cat.update(cats_params)
      redirect_to cat_url(@cat)
    else
     render :edit
    end
  end

  private

    def cats_params
        params.require(:cat).permit(:name, :color, :sex, :description, :birth_date)
    end

end