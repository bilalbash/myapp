class WebAccountsController < ApplicationController
  before_action
  before_action :set_web_account, only: [:show, :edit, :update, :destroy]

  # GET /web_accounts
  # GET /web_accounts.json
  def index
    @web_accounts = WebAccount.all
  end

  # GET /web_accounts/1
  # GET /web_accounts/1.json
  def show
  end

  # GET /web_accounts/new
  def new
    @web_account = WebAccount.new
  end

  # GET /web_accounts/1/edit
  def edit
  end

  # POST /web_accounts
  # POST /web_accounts.json
  def create
    @web_account = WebAccount.new(web_account_params)

    respond_to do |format|
      if @web_account.save
        format.html { redirect_to @web_account, notice: 'Web account was successfully created.' }
        format.json { render :show, status: :created, location: @web_account }
      else
        format.html { render :new }
        format.json { render json: @web_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_accounts/1
  # PATCH/PUT /web_accounts/1.json
  def update
    respond_to do |format|
      if @web_account.update(web_account_params)
        format.html { redirect_to @web_account, notice: 'Web account was successfully updated.' }
        format.json { render :show, status: :ok, location: @web_account }
      else
        format.html { render :edit }
        format.json { render json: @web_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_accounts/1
  # DELETE /web_accounts/1.json
  def destroy
    @web_account.destroy
    respond_to do |format|
      format.html { redirect_to web_accounts_url, notice: 'Web account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_account
      @web_account = WebAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_account_params
      params.require(:web_account).permit(:name, :email, :username, :password)
    end
end
