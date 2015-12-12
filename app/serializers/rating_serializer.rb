class RatingSerializer < ActiveModel::Serializer
  attributes :id, :number, :submitting_user, :subject_user, :comment
end
