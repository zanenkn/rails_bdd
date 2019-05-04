class Comment < ApplicationRecord
  belongs_to :article
  validates_presence_of :commenter, :body
  validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, :allow_blank => true
end
