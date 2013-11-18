class FormsController < ApplicationController
  before_action :set_form, only: [:update, :destroy]

  respond_to :json

  def index
    respond_with Form.all
  end

  def create
    respond_with Form.create(form_params)
  end

  def update
    respond_with @form.update(form_params)
  end

  def destroy
    respond_with @form.destroy
  end

  private

  def set_form
    @form = Form.find(params[:id])
  end

  def form_params
    params.require(:form).permit(:nit, :invoice, :authorization, :date, :amount, :code)
  end
end
