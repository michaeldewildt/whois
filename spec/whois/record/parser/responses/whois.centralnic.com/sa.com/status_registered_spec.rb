# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.centralnic.com/sa.com/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.centralnic.com.rb'

describe Whois::Record::Parser::WhoisCentralnicCom, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.centralnic.com/sa.com/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      expect(subject.disclaimer).to eq("This whois service is provided by CentralNic Ltd and only contains information pertaining to Internet domain names we have registered for our customers. By using this service you are agreeing (1) not to use any information presented here for any purpose other than determining ownership of domain names, (2) not to store or reproduce this data in any way, (3) not to use any high-volume, automated, electronic processes to obtain data from this service. Abuse of this service is monitored and actions in contravention of these terms will result in being permanently blacklisted. All data is (c) CentralNic Ltd https://www.centralnic.com/")
    end
  end
  describe "#domain" do
    it do
      expect(subject.domain).to eq("fynbos.sa.com")
    end
  end
  describe "#domain_id" do
    it do
      expect(subject.domain_id).to eq("CNIC-DO501005")
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(["OK"])
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
      expect(subject.created_on).to eq(Time.parse("2007-09-27 18:14:53 UTC"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(Time.parse("2012-10-01 00:28:35 UTC"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(Time.parse("2013-09-27 23:59:59 UTC"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Record::Registrar)
      expect(subject.registrar.id).to eq("C30342")
      expect(subject.registrar.name).to eq(nil)
      expect(subject.registrar.organization).to eq("Paragon Internet Group")
      expect(subject.registrar.url).to eq("http://www.paragon.net.uk")
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts).to have(1).items
      expect(subject.registrant_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Record::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq("H323273")
      expect(subject.registrant_contacts[0].name).to eq("Maarten Groos")
      expect(subject.registrant_contacts[0].organization).to eq(nil)
      expect(subject.registrant_contacts[0].address).to eq("farm 215 fynbos reserve\nPO Box 1314")
      expect(subject.registrant_contacts[0].city).to eq("Gansbaai")
      expect(subject.registrant_contacts[0].zip).to eq("7220")
      expect(subject.registrant_contacts[0].state).to eq("Western Cape")
      expect(subject.registrant_contacts[0].country).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq("ZA")
      expect(subject.registrant_contacts[0].phone).to eq("+27.283880920")
      expect(subject.registrant_contacts[0].fax).to eq(nil)
      expect(subject.registrant_contacts[0].email).to eq("maarten@farm215.co.za")
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts).to have(1).items
      expect(subject.admin_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Record::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq("H323273")
      expect(subject.admin_contacts[0].name).to eq("Maarten Groos")
      expect(subject.admin_contacts[0].organization).to eq(nil)
      expect(subject.admin_contacts[0].address).to eq("farm 215 fynbos reserve\nPO Box 1314")
      expect(subject.admin_contacts[0].city).to eq("Gansbaai")
      expect(subject.admin_contacts[0].zip).to eq("7220")
      expect(subject.admin_contacts[0].state).to eq("Western Cape")
      expect(subject.admin_contacts[0].country).to eq(nil)
      expect(subject.admin_contacts[0].country_code).to eq("ZA")
      expect(subject.admin_contacts[0].phone).to eq("+27.283880920")
      expect(subject.admin_contacts[0].fax).to eq(nil)
      expect(subject.admin_contacts[0].email).to eq("maarten@farm215.co.za")
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts).to have(1).items
      expect(subject.technical_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Record::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq("C30342")
      expect(subject.technical_contacts[0].name).to eq("Seb de Lemos")
      expect(subject.technical_contacts[0].organization).to eq("Paragon Internet Group")
      expect(subject.technical_contacts[0].address).to eq("St Andrew's House\nSt Mary's Walk")
      expect(subject.technical_contacts[0].city).to eq("Maidenhead")
      expect(subject.technical_contacts[0].zip).to eq("SL6 1QZ")
      expect(subject.technical_contacts[0].state).to eq("Berkshire")
      expect(subject.technical_contacts[0].country).to eq(nil)
      expect(subject.technical_contacts[0].country_code).to eq("GB")
      expect(subject.technical_contacts[0].phone).to eq("+44.2031377651")
      expect(subject.technical_contacts[0].fax).to eq(nil)
      expect(subject.technical_contacts[0].email).to eq("domains@paragon.net.uk")
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers).to have(2).items
      expect(subject.nameservers[0]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns1191.websitewelcome.com")
      expect(subject.nameservers[1]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns1192.websitewelcome.com")
    end
  end
end
