class Post < ActiveRecord::Base
  include ActionView::Helpers::SanitizeHelper

  default_scope { order(:created_at) }

  before_validation :sanitize_description

  def sanitize_description
    self.description = strip_tags(description)
  end
end
