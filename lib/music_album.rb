require_relative 'item'

class MusicAlbum < Item
  def initialize(genre:, author:, source:, label:, publish_date:, on_spotify:)
    super(genre: genre, author: author, source: source, label: label, publish_date: publish_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify
  end
end