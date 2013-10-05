# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.fo/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.fo.rb'

describe Whois::Record::Parser::WhoisNicFo, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.nic.fo/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#domain" do
    it do
      expect(subject.domain).to eq("nic.fo")
    end
  end
  describe "#domain_id" do
    it do
      lambda { subject.domain_id }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(:registered)
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to eq(false)
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to eq(true)
    end
  end
  describe "#created_on" do
    it do
      expect(subject.created_on).to be_a(Time)
      expect(subject.created_on).to eq(Time.parse("2010-06-03 03:34:05"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(Time.parse("2011-07-12 12:52:57"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(Time.parse("2014-01-03"))
    end
  end
  describe "#registrar" do
    it do
      lambda { subject.registrar }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts).to have(1).items
      expect(subject.registrant_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Record::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq("ID005359")
      expect(subject.registrant_contacts[0].name).to eq(nil)
      expect(subject.registrant_contacts[0].organization).to eq("FO-umsitingin")
      expect(subject.registrant_contacts[0].address).to eq("Hoydalsvegur 19, Postboks 1255")
      expect(subject.registrant_contacts[0].city).to eq("Torshavn")
      expect(subject.registrant_contacts[0].zip).to eq("110")
      expect(subject.registrant_contacts[0].state).to eq(nil)
      expect(subject.registrant_contacts[0].country).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq("FO")
      expect(subject.registrant_contacts[0].phone).to eq("+298.322400")
      expect(subject.registrant_contacts[0].fax).to eq(nil)
      expect(subject.registrant_contacts[0].email).to eq(nil)
      expect(subject.registrant_contacts[0].created_on).to eq(Time.parse("2010-07-21 19:11:55"))
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts).to eq([])
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts).to have(1).items
      expect(subject.technical_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.technical_contacts[0].id).to eq("ID005359")
      expect(subject.technical_contacts[0].name).to eq(nil)
      expect(subject.technical_contacts[0].organization).to eq("FO-umsitingin")
      expect(subject.technical_contacts[0].address).to eq("Hoydalsvegur 19, Postboks 1255")
      expect(subject.technical_contacts[0].city).to eq("Torshavn")
      expect(subject.technical_contacts[0].zip).to eq("110")
      expect(subject.technical_contacts[0].state).to eq(nil)
      expect(subject.technical_contacts[0].country).to eq(nil)
      expect(subject.technical_contacts[0].country_code).to eq("FO")
      expect(subject.technical_contacts[0].phone).to eq("+298.322400")
      expect(subject.technical_contacts[0].fax).to eq(nil)
      expect(subject.technical_contacts[0].email).to eq(nil)
      expect(subject.technical_contacts[0].created_on).to eq(Time.parse("2010-07-21 19:11:55"))
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers).to have(5).items
      expect(subject.nameservers[0]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns1.gratisdns.dk")
      expect(subject.nameservers[1]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns2.gratisdns.dk")
      expect(subject.nameservers[2]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[2].name).to eq("ns3.gratisdns.dk")
      expect(subject.nameservers[3]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[3].name).to eq("ns4.gratisdns.dk")
      expect(subject.nameservers[4]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[4].name).to eq("ns5.gratisdns.dk")
    end
  end
end
