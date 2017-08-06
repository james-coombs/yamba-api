class PagesController < OpenReadController
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
    # set @page id to match user who owns/created it
    @page.user_id = current_user.id

    if @page.save
      render json: @page, status: :created, location: @page
    else
      render json: @page.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update
    if current_user.id == @page.user_id
      @page = Page.find(params[:id])

      if @page.update(page_params)
        head :no_content
      else
        render json: @page.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    if current_user.id == @page.user_id
      @page.destroy

      head :no_content
    else
      head :unauthorized
    end
  end

  private

  def set_page
    @page = Page.find(params[:id])
  end

  def page_params
    params.require(:page).permit(:title, :body, :board_id, :user_id, :image)
  end
end
