class ClientHistoriesController < ApplicationController
  before_action :set_client_history, only: [:show, :edit, :update, :destroy]
  before_action :set_list, only: [:new, :create, :edit, :update]

  # GET /client_histories
  # GET /client_histories.json
  def index
    @client_histories = ClientHistory.all
  end

  # GET /client_histories/1
  # GET /client_histories/1.json
  def show
  end

  # GET /client_histories/new
  def new
    @client_history = ClientHistory.new
  end

  # GET /client_histories/1/edit
  def edit
  end

  # POST /client_histories
  # POST /client_histories.json
  def create
    @client_history = ClientHistory.new(client_history_params)

    respond_to do |format|
      if @client_history.save
        format.html { redirect_to @client_history, notice: 'Client history was successfully created.' }
        format.json { render :show, status: :created, location: @client_history }
      else
        format.html { render :new }
        format.json { render json: @client_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_histories/1
  # PATCH/PUT /client_histories/1.json
  def update
    respond_to do |format|
      if @client_history.update(client_history_params)
        format.html { redirect_to @client_history, notice: 'Client history was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_history }
      else
        format.html { render :edit }
        format.json { render json: @client_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_histories/1
  # DELETE /client_histories/1.json
  def destroy
    @client_history.destroy
    respond_to do |format|
      format.html { redirect_to client_histories_url, notice: 'Client history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def client_history_painting
    @painting = Painting.find(params[:painting_id])
  end

  private

  def set_list
    @paintings = Painting.list
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_client_history
    @client_history = ClientHistory.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def client_history_params
    params.require(:client_history).permit(:name, :email, :mobile_no, :payment_status, :painting_id)
  end
end
