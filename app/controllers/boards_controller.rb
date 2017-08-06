class BoardsController < OpenReadController
  before_action :set_board, only: [:show, :update, :destroy]

  # GET /boards
  # GET /boards.json
  def index
    @boards = Board.all

    render json: @boards

    # @boards = current_user.boards
    #
    # render json: @boards
  end

  # GET /boards/1
  # GET /boards/1.json
  def show
    render json: @board
  end

  # POST /boards
  # POST /boards.json
  def create
    @board = Board.new(board_params)
    # set @board id to match user who owns/created it
    @board.user_id = current_user.id

    if @board.save
      render json: @board, status: :created, location: @board
    else
      render json: @board.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /boards/1
  # PATCH/PUT /boards/1.json
  def update
    @board = Board.find(params[:id])

    if @board.update(board_params)
      head :no_content
    else
      render json: @board.errors, status: :unprocessable_entity
    end
  end

  # DELETE /boards/1
  # DELETE /boards/1.json
  def destroy
    @board.destroy

    head :no_content
  end

  private

    def set_board
      @board = Board.find(params[:id])
    end

    def board_params
      params.require(:board).permit(:name, :user_id)
    end
end
