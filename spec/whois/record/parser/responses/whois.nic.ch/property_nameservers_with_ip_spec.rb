# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.ch/property_nameservers_with_ip.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.ch.rb'

describe Whois::Record::Parser::WhoisNicCh, "property_nameservers_with_ip.expected" do

  subject do
    file = fixture("responses", "whois.nic.ch/property_nameservers_with_ip.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers).to have(2).items
      expect(subject.nameservers[0]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns1.citrin.ch")
      expect(subject.nameservers[0].ipv4).to eq("193.247.72.8")
      expect(subject.nameservers[0].ipv6).to eq("2001:8a8:21:5::11")
      expect(subject.nameservers[1]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns2.citrin.ch")
      expect(subject.nameservers[1].ipv4).to eq("62.12.149.3")
      expect(subject.nameservers[1].ipv6).to eq("2001:8a8:21:5::12")
    end
  end
end
