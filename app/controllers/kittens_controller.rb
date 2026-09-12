class KittensController < ApplicationController
  before_action :set_kitten, only: [ :show, :edit, :update, :destroy ]

  def new

  end

  def create
    
  end

  def index

  end

  def show
    
  end

  def edit
    
  end
  
  def update
    
  end

  def destroy
    
  end

  private

  def set_kitten
    @kitten = Kitten.find(params[:id])
  end
end
