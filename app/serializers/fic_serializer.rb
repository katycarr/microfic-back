class FicSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :title, :summary, :story
end
