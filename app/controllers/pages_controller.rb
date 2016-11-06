class PagesController < ApplicationController
  before_action :set_page, only: [:show, :update, :destroy]

  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all

    render json: @pages
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    render json: @page
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = Page.new(page_params)

    if @page.save
      render json: @page, status: :created, location: @page
    else
      render json: @page.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update
    @page = Page.find(params[:id])

    if @page.update(page_params)
      head :no_content
    else
      render json: @page.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page.destroy

    head :no_content
  end

  private

    def set_page
      @page = Page.find(params[:id])
    end

    def page_params
      params.require(:page).permit(:title, :body, :code, :image, :references)
    end
end
