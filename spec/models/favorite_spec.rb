# == Schema Information
#
# Table name: favorites
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  post_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'
include RandomData

RSpec.describe Favorite, type: :model do
  let(:topic) { create(:topic) }
  let(:user) { create(:user) }
  let(:post) { create(:post) }
    let(:favorite) { Favorite.create!(post: post, user: user) }

  it { should belong_to(:post) }
  it { should belong_to(:user) }
end
