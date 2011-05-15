class ItemsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @title = 'Items'
    @items = current_user.items
  end

  def new
  end

  def create
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

end
