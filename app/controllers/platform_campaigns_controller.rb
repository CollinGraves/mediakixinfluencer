class PlatformCampaignsController < ApplicationController
  before_action :set_platform_campaign, only: [:show, :edit, :update, :destroy]

  # GET /platform_campaigns
  # GET /platform_campaigns.json
  def index
    @platform_campaigns = PlatformCampaign.all
  end

  # GET /platform_campaigns/1
  # GET /platform_campaigns/1.json
  def show
  end

  # GET /platform_campaigns/new
  def new
    @platform_campaign = PlatformCampaign.new
  end

  # GET /platform_campaigns/1/edit
  def edit
  end

  # POST /platform_campaigns
  # POST /platform_campaigns.json
  def create
    @platform_campaign = PlatformCampaign.new(platform_campaign_params)

    respond_to do |format|
      if @platform_campaign.save
        format.html { redirect_to @platform_campaign, notice: 'Platform campaign was successfully created.' }
        format.json { render :show, status: :created, location: @platform_campaign }
      else
        format.html { render :new }
        format.json { render json: @platform_campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /platform_campaigns/1
  # PATCH/PUT /platform_campaigns/1.json
  def update
    respond_to do |format|
      if @platform_campaign.update(platform_campaign_params)
        format.html { redirect_to @platform_campaign, notice: 'Platform campaign was successfully updated.' }
        format.json { render :show, status: :ok, location: @platform_campaign }
      else
        format.html { render :edit }
        format.json { render json: @platform_campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /platform_campaigns/1
  # DELETE /platform_campaigns/1.json
  def destroy
    @platform_campaign.destroy
    respond_to do |format|
      format.html { redirect_to platform_campaigns_url, notice: 'Platform campaign was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platform_campaign
      @platform_campaign = PlatformCampaign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def platform_campaign_params
      params.require(:platform_campaign).permit(:name, :contract_num, :brand_id)
    end
end
