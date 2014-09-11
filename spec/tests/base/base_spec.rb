require 'spec_helper'

#
# cloud::init
#

describe port(22) do
  it { should be_listening.with('tcp') }
end

# test if DNS is working
describe command("nslookup #{property[:vip_public]}") do
  it { should return_exit_status 0 }
end
