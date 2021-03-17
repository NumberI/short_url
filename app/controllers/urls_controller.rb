class UrlsController < ApplicationController
  before_action :set_url, only: [:show, :stats]

  # GET /urls/1
  def show
    @url.up_stats
    render json: {long: @url.long}
  end

  def stats
    render json: {count: @url.stats}
  end

  # POST /urls
  def create
    @url = Url.where(url_params).first_or_initialize

    if @url.save
      render json: {short_url: @url.short}, status: :created
    else
      render json: @url.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_url
      @url = Url.find_by(short: params[:short_url])
    end

    # Only allow a trusted parameter "white list" through.
    def url_params
      params.require(:url).permit(:long, :short_url, :stats)
    end
end
