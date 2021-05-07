class MusicsController < ApplicationController
  before_action :search_music, only: [:index, :search]
  def index
    @musics = Music.all
    set_music_column
    set_category_column
  end

  def search
    @results = @p.result.includes(:category)
  end

  private

  def search_music
    @p = Music.ransack(params[:q])  # 検索オブジェクトを生成
  end

  def set_music_column
    @music_name = Music.select("name").distinct  # 重複なくnameカラムのデータを取り出す
    @music_lyricist = Music.select("lyricist").distinct
    @music_year = Music.select("year").distinct
    @music_position = Music.select("position").distinct
  end

  def set_category_column
    @category_name = Category.select("name").distinct
  end
  
end
