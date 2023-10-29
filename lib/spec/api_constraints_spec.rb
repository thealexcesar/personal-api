# frozen_string_literal: true

require 'rails_helper'

describe ApiConstraints do
  let(:api_constraint_v1) { ApiConstraints.new(version: 1) }
  let(:api_constraint_v2) { ApiConstraints.new(version: 2) }

  describe 'matches?' do
    it "Returns true when the version matches 'Accept' header" do
      request = double(host: 'localhost:3000', headers: { 'Accept' => 'application/personal-api.v1' })
      expect(api_constraint_v1.matches?(request)).to be_truthy
    end

    it 'Returns default' do
      request = double('request', headers: { 'Accept' => 'application/personal-api.v2' })
      expect(api_constraint_v2.matches?(request)).to be_truthy
    end
  end
end
