class SessionLoginsController < ApplicationController
  before_action :set_session_login, only: %i[ show edit update destroy ]

  # GET /session_logins or /session_logins.json
  def index
    @session_logins = SessionLogin.all
  end

  # GET /session_logins/1 or /session_logins/1.json
  def show
    @favorite = current_user.favorites.find_by(session_login_id: @session_login.id)
  end

  # GET /session_logins/new
  def new
    @session_login = SessionLogin.new
  end

  # GET /session_logins/1/edit
  def edit
  end

  # POST /session_logins or /session_logins.json
  def create
    # @session_login = SessionLogin.new(session_login_params)
    @session_login = current_user.session_logins.build(session_login_params)
    respond_to do |format|
      if @session_login.save
        format.html { redirect_to @session_login, notice: "Session login was successfully created." }
        format.json { render :show, status: :created, location: @session_login }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @session_login.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /session_logins/1 or /session_logins/1.json
  def update
    respond_to do |format|
      if @session_login.update(session_login_params)
        format.html { redirect_to @session_login, notice: "Session login was successfully updated." }
        format.json { render :show, status: :ok, location: @session_login }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @session_login.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /session_logins/1 or /session_logins/1.json
  def destroy
    @session_login.destroy
    respond_to do |format|
      format.html { redirect_to session_logins_url, notice: "Session login was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session_login
      @session_login = SessionLogin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def session_login_params
      params.require(:session_login).permit(:title, :content)
    end
end
