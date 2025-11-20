class VidsController < ApplicationController
  before_action :set_vid, only: %i[ show edit update destroy voirmavid ]

  # GET /vids or /vids.json
  def index
    @vids = Vid.all
  end
  def voirmavid
  end

  # GET /vids/1 or /vids/1.json
  def show
  end

  # GET /vids/new
  def new
    @vid = Vid.new(user_id: current_user.try(:id))
  end

  # GET /vids/1/edit
  def edit
  end

  # POST /vids or /vids.json
  def create
    @vid = Vid.new(vid_params)

    respond_to do |format|
      if @vid.save
        format.html { redirect_to @vid, notice: "Vid was successfully created." }
        format.json { render :show, status: :created, location: @vid }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vids/1 or /vids/1.json
  def update
    respond_to do |format|
      if @vid.update(vid_params)
        format.html { redirect_to @vid, notice: "Vid was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @vid }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vids/1 or /vids/1.json
  def destroy
    @vid.destroy!

    respond_to do |format|
      format.html { redirect_to vids_path, notice: "Vid was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vid
      @vid = Vid.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def vid_params
      params.expect(vid: [ :user_id, :city_id, :device_id, :activity_id, :myvid, :content ])
    end
end
