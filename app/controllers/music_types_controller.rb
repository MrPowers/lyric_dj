class MusicTypesController < ApplicationController

  def index
    @music_types = MusicType.all
  end

end

