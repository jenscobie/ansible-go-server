require 'spec_helper'

describe command('java -version') do
  its(:exit_status) { should eq 0 }
  its(:stderr) { should match /1.8/ }
end

describe package('git') do
  it { should be_installed }
end