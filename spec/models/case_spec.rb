# == Schema Information
#
# Table name: cases
#
#  id           :integer          not null, primary key
#  event_date   :date
#  event_type   :string
#  pti_urn      :string
#  version      :integer
#  case_markers :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'

RSpec.describe Case, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
