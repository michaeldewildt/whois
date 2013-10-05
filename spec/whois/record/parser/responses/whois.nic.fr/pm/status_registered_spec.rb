# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.fr/pm/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.fr.rb'

describe Whois::Record::Parser::WhoisNicFr, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.nic.fr/pm/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
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
      expect(subject.created_on).to eq(Time.parse("1995-01-01"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(Time.parse("2004-09-17"))
    end
  end
  describe "#expires_on" do
    it do
      lambda { subject.expires_on }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts).to have(1).items
      expect(subject.registrant_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Record::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq("APEM2-FRNIC")
      expect(subject.registrant_contacts[0].name).to eq(nil)
      expect(subject.registrant_contacts[0].organization).to eq("Afnic (Saint-Pierre et Miquelon - CTOM)")
      expect(subject.registrant_contacts[0].address).to eq("immeuble international\n2, rue Stephenson\nMontigny-Le-Bretonneux\n78181 Saint Quentin en Yvelines Cedex")
      expect(subject.registrant_contacts[0].city).to eq(nil)
      expect(subject.registrant_contacts[0].zip).to eq(nil)
      expect(subject.registrant_contacts[0].state).to eq(nil)
      expect(subject.registrant_contacts[0].country).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq("FR")
      expect(subject.registrant_contacts[0].phone).to eq(nil)
      expect(subject.registrant_contacts[0].fax).to eq(nil)
      expect(subject.registrant_contacts[0].email).to eq(nil)
      expect(subject.registrant_contacts[0].updated_on).to eq(Time.parse("2008-10-09 00:00:00 UTC"))
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts).to have(1).items
      expect(subject.admin_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Record::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq("NFC1-FRNIC")
      expect(subject.admin_contacts[0].name).to eq("NIC France Contact")
      expect(subject.admin_contacts[0].organization).to eq("AFNIC")
      expect(subject.admin_contacts[0].address).to eq("immeuble international\n2, rue Stephenson\nMontigny le Bretonneux\n78181 Saint Quentin en Yvelines Cedex")
      expect(subject.admin_contacts[0].city).to eq(nil)
      expect(subject.admin_contacts[0].zip).to eq(nil)
      expect(subject.admin_contacts[0].state).to eq(nil)
      expect(subject.admin_contacts[0].country).to eq(nil)
      expect(subject.admin_contacts[0].country_code).to eq("FR")
      expect(subject.admin_contacts[0].phone).to eq("+33 1 39 30 83 00")
      expect(subject.admin_contacts[0].fax).to eq(nil)
      expect(subject.admin_contacts[0].email).to eq("hostmaster@nic.fr")
      expect(subject.admin_contacts[0].updated_on).to eq(Time.parse("2005-08-23 00:00:00 UTC"))
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts).to have(1).items
      expect(subject.technical_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Record::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq("NFC1-FRNIC")
      expect(subject.technical_contacts[0].name).to eq("NIC France Contact")
      expect(subject.technical_contacts[0].organization).to eq("AFNIC")
      expect(subject.technical_contacts[0].address).to eq("immeuble international\n2, rue Stephenson\nMontigny le Bretonneux\n78181 Saint Quentin en Yvelines Cedex")
      expect(subject.technical_contacts[0].city).to eq(nil)
      expect(subject.technical_contacts[0].zip).to eq(nil)
      expect(subject.technical_contacts[0].state).to eq(nil)
      expect(subject.technical_contacts[0].country).to eq(nil)
      expect(subject.technical_contacts[0].country_code).to eq("FR")
      expect(subject.technical_contacts[0].phone).to eq("+33 1 39 30 83 00")
      expect(subject.technical_contacts[0].fax).to eq(nil)
      expect(subject.technical_contacts[0].email).to eq("hostmaster@nic.fr")
      expect(subject.technical_contacts[0].updated_on).to eq(Time.parse("2005-08-23 00:00:00 UTC"))
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers).to have(3).items
    end
  end
end
