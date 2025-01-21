class SummitsController < ApplicationController
  before_action :set_summit, only: %i[ show edit update destroy ]

  # GET /summits or /summits.json
  def index
    @summits = Summit.all
  end

  # GET /summits/1 or /summits/1.json
  def show
  end

  # GET /summits/new
  def new
    @summit = Summit.new
    @mountains = Mountain.all
  end

  # GET /summits/1/edit
  def edit
  end

  # POST /summits or /summits.json
  def create
    @summit = Summit.new(summit_params)

    respond_to do |format|
      if @summit.save
        format.html { redirect_to @summit, notice: "Summit was successfully created." }
        format.json { render :show, status: :created, location: @summit }
      else
        @mountains = Mountain.all
        
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @summit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /summits/1 or /summits/1.json
  def update
    respond_to do |format|
      if @summit.update(summit_params)
        format.html { redirect_to @summit, notice: "Summit was successfully updated." }
        format.json { render :show, status: :ok, location: @summit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @summit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /summits/1 or /summits/1.json
  def destroy
   # @summit.destroy!

    respond_to do |format|
      format.html { redirect_to summits_path, status: :see_other, notice: "Summit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_summit
      @summit = Summit.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def summit_params
      params.expect(summit: [ :insta, :mountain_id ])
    end
end
