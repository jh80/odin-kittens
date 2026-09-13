class KittensController < ApplicationController
  before_action :set_kitten, only: [ :show, :edit, :update, :destroy ]

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)

    if @kitten.save
      flash[:notice] = "You've successfully registered a kitten!"
      redirect_to @kitten
    else
      flash[:alert] = "Womp womp. Your kitten wasn't saved"
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @kittens = Kitten.all
  end

  def show
    
  end

  def edit
    
  end
  
  def update
    if @kitten.update(kitten_params)
      flash[:notice] = "Kitten updated!"
      redirect_to @kitten
    else
      flash[:alert] = "Oopsy doospy! Kitten update failed, try again"
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    name = @kitten.name
    @kitten.destroy
    flash[:alert] = "The file for kitten #{name} has been deleted"
    redirect_to kittens_path
  end

  private

  def kitten_params
    params.expect(kitten: [ :name, :age, :cuteness, :softness ])
  end

  def set_kitten
    @kitten = Kitten.find(params[:id])
  end
end
