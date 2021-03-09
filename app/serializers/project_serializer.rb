class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :html, :css, :javascript, :image_url
end
