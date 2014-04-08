require 'spec_helper'

describe Book, "validation" do
  it { should validate_presence_of :title }
  it { should validate_presence_of :pages }
end
