class ExpensesController < ApplicationController
  before_action :authenticate_user!
  def index
     @expenses = Expense.order("date DESC")
     @expenses = @expenses.where("concept LIKE :concept", concept: "%#{params[:concept]}%")
     @expenses = @expenses.where("category_id LIKE :category_id", category_id:     "%#{params[:category_id]}%")
  end
end
