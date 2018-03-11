class User < ApplicationRecord
  def to_param
    okta_id
  end
end
