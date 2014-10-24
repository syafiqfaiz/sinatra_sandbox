class Url <ActiveRecord::Base

  def self.add(user_input)
    Url.create(url: user_input)
  end

end