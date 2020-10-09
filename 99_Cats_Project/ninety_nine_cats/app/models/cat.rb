# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not nulls
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'action_view'
require 'action_view/helpers'

class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper
  
  validates :birth_date, :color, :name, :sex, :description, presence: true 
  validates :color, inclusion: {in: ["orange", "black", "white", "yellow", "mix"]}
  validates :sex, inclusion: {in: ["M", "F"]}

    def age
      time_ago_in_words(self.birth_date)      
    end

end
