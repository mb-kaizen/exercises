require 'spec_helper'

RSpec.describe Tree, type: :model do
  describe 'depth_first_search should work' do
    it 'should return the node of the matching desired payload' do
      expect(depth_first_search(trunk_node, 11)). to be eleventh_node
    end
  end

end