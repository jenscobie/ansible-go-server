require 'spec_helper'

describe command('java -version') do
  its(:exit_status) { should eq 0 }
  its(:stderr) { should match /1.7/ }
end

describe package('unzip') do
  it { should be_installed }
end

describe package('wget') do
  it { should be_installed }
end

describe service('go-server') do
  it { should be_enabled }
end