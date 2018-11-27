class CategoriesController < ApplicationController
    def show
     @category = Category.find(params[:id])
     @memos = Memo.where(category_id: params[:id])
    end
end
