require 'spec_helper'
describe 'r_cacti' do
  context 'with default values for all parameters' do
    it { should contain_class('r_cacti') }
  end
end
