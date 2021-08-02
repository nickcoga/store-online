class CategoriesController < ApplicationController
  def index
    @categories = if params[:name].nil?
                    Category.all
                  else
                    Category.includes(:products).where('LOWER(product.name) LIKE ?', "%#{params[:name].downcase}%").references(:products)
                  end
    render json: @categories.to_json(include: [:products])
  end

  def show
    @category = Category.find(params[:id])
    render json: @category
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      render json: category, status: :created
    else
      render json: category.errors, status: :bad_request
    end
  end

  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)
      render json: category, status: :update
    else
      render json: category.errors, status: :bad_request
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    render status: :no_content
  end

  private

  def category_params
    params.require(:category).permit(:name, :status)
  end
end
