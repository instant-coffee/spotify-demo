class UsersController < ApplicationController
  def spotify
    @spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    render :index
  end

  def show
    @playlist = RSpotify::Playlist.find(params[:user], params[:id])
  end
end
