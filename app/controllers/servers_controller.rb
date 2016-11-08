class ServersController < OpenReadController
  before_action :set_server, only: [:show, :update, :destroy]

  # GET /servers
  # GET /servers.json
  def index
    @servers = Server.all

    render json: @servers

    # @servers = current_user.servers
    #
    # render json: @servers
  end

  # GET /servers/1
  # GET /servers/1.json
  def show
    render json: @server
  end

  # POST /servers
  # POST /servers.json
  def create
    @server = Server.new(server_params)
    @server.user_id = current_user.id

    if @server.save
      render json: @server, status: :created, location: @server
    else
      render json: @server.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /servers/1
  # PATCH/PUT /servers/1.json
  def update
    @server = Server.find(params[:id])

    if @server.update(server_params)
      head :no_content
    else
      render json: @server.errors, status: :unprocessable_entity
    end
  end

  # DELETE /servers/1
  # DELETE /servers/1.json
  def destroy
    @server.destroy

    head :no_content
  end

  private

    def set_server
      @server = Server.find(params[:id])
    end

    def server_params
      params.require(:server).permit(:name, :user_id)
    end
end
