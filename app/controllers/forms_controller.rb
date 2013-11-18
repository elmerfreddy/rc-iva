class FormsController < ApplicationController
  respond_to :json

  def index
    respond_with Form.where(nil)
  end

  def create
    respond_with Form.create(form_params)
  end

  private

  def form_params
    params.require(:form).permit(:nit, :invoice, :authorization, :date, :amount, :code)
  end
end
