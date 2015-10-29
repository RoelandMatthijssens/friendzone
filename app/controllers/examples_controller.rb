class ExamplesController < ApplicationController
  before_action :set_example, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @examples = Example.all
    respond_with(@examples)
  end

  def show
    respond_with(@example)
  end

  def new
    @example = Example.new
    respond_with(@example)
  end

  def edit
  end

  def create
    @example = Example.new(example_params)
    @example.save
    respond_with(@example)
  end

  def update
    @example.update(example_params)
    respond_with(@example)
  end

  def destroy
    @example.destroy
    respond_with(@example)
  end

  private
    def set_example
      @example = Example.find(params[:id])
    end

    def example_params
      params[:example]
    end
end
