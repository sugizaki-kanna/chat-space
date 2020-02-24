class TweetsController < ApplicationController
  before_action :set_tweet, except: [:index, :new, :create, :search]
  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @tweets = Tweet.includes(:user).order("created_at DESC").page(params[:page]).per(5)
  end



  def search
    @tweets = Tweet.search(params[:keyword])
    respond_to do |format|
      format.html
      format.json
    end
  end