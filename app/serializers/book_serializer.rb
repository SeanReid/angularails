class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author

  def url
  	book_path(object)
  end
end
