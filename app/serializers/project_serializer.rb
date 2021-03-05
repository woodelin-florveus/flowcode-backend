class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :html, :css, :javascript
end
