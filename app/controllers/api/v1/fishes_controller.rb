class Api::V1::FishesController < Api::V1::BaseController

  before_action :set_fish, only: :show

  def index
    @fishes = policy_scope(Fish)
  end

  def show
  end

  private

  def set_fish
    @fish = Fish.find(params[:id])
    authorize @fish
  end
end
