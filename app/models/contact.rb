class Contact < ApplicationRecord
  def friendly_updated_at
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end
end
