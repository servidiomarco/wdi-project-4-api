class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]


  # GET /offers
  def index
    offer_data = offer_params

    if offer_data[:city] && offer_data[:date]
      @offers = Offer.where('city ILIKE :city AND date = :date', { city: "%#{offer_data[:city]}%", date: offer_data[:date] })
    elsif offer_data[:city]
      @offers = Offer.where('city ILIKE :city', { city: "%#{offer_data[:city]}%" })
      if @offers.length == 0
         @offers = Offer.all
      end
    else
      @offers = Offer.all
    end

    render json: @offers
  end

  # GET /offers/1
  def show
    render json: @offer, include: ['comments', 'comments.user']
  end

  # POST /offers
  def create
    @offer = Offer.new(offer_params)

    if @offer.save
      render json: @offer, status: :created, location: @offer
    else
      render json: @offer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /offers/1
  def update
    p offer_params.keys
    if @offer.update(offer_params)
      render json: @offer
    else
      render json: @offer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /offers/1
  def destroy
    @offer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer
      @offer = Offer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def offer_params
      params.permit(:user_id, :name, :title, :menu, :date, :city, :image, :price, :cuisine, :max_seats, :address, attendee_ids:[])
    end
end
