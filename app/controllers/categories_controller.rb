class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home


  def index
  end
end


