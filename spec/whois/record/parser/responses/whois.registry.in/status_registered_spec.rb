# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.registry.in/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.registry.in.rb'

describe Whois::Record::Parser::WhoisRegistryIn, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.registry.in/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      expect(subject.disclaimer).to eq("Access to .IN WHOIS information is provided to assist persons in determining the contents of a domain name registration record in the .IN registry database. The data in this record is provided by .IN Registry for informational purposes only, and .IN does not guarantee its accuracy.  This service is intended only for query-based access. You agree that you will use this data only for lawful purposes and that, under no circumstances will you use this data to: (a) allow, enable, or otherwise support the transmission by e-mail, telephone, or facsimile of mass unsolicited, commercial advertising or solicitations to entities other than the data recipient's own existing customers; or (b) enable high volume, automated, electronic processes that send queries or data to the systems of Registry Operator, a Registrar, or Afilias except as reasonably necessary to register domain names or modify existing registrations. All rights reserved. .IN reserves the right to modify these terms at any time. By submitting this query, you agree to abide by this policy.")
    end
  end
  describe "#domain" do
    it do
      expect(subject.domain).to eq("google.in")
    end
  end
  describe "#domain_id" do
    it do
      expect(subject.domain_id).to eq("D21089-AFIN")
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
      expect(subject.created_on).to eq(Time.parse("2005-02-14 20:35:14 UTC"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to eq(Time.parse("2009-04-06 18:20:09 UTC"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to eq(Time.parse("2011-02-14 20:35:14 UTC"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Record::Registrar)
      expect(subject.registrar.id).to eq("R84-AFIN")
      expect(subject.registrar.name).to eq("Mark Monitor")
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts).to have(1).items
      expect(subject.registrant_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Record::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq("EPPIPM-143349")
      expect(subject.registrant_contacts[0].name).to eq("Admin DNS")
      expect(subject.registrant_contacts[0].organization).to eq("GOOGLE INC.")
      expect(subject.registrant_contacts[0].address).to eq("1600 Amphitheatre Parkway")
      expect(subject.registrant_contacts[0].city).to eq("Mountain View, CA")
      expect(subject.registrant_contacts[0].zip).to eq("94043")
      expect(subject.registrant_contacts[0].state).to eq("")
      expect(subject.registrant_contacts[0].country_code).to eq("US")
      expect(subject.registrant_contacts[0].phone).to eq("+1.6503300100")
      expect(subject.registrant_contacts[0].fax).to eq("")
      expect(subject.registrant_contacts[0].email).to eq("dns-admin@google.com")
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts).to have(1).items
      expect(subject.admin_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Record::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq("EPPIPM-143349")
      expect(subject.admin_contacts[0].name).to eq("Admin DNS")
      expect(subject.admin_contacts[0].organization).to eq("GOOGLE INC.")
      expect(subject.admin_contacts[0].address).to eq("1600 Amphitheatre Parkway")
      expect(subject.admin_contacts[0].city).to eq("Mountain View, CA")
      expect(subject.admin_contacts[0].zip).to eq("94043")
      expect(subject.admin_contacts[0].state).to eq("")
      expect(subject.admin_contacts[0].country_code).to eq("US")
      expect(subject.admin_contacts[0].phone).to eq("+1.6503300100")
      expect(subject.admin_contacts[0].fax).to eq("")
      expect(subject.admin_contacts[0].email).to eq("dns-admin@google.com")
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts).to have(1).items
      expect(subject.technical_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Record::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq("EPPIPM-143349")
      expect(subject.technical_contacts[0].name).to eq("Admin DNS")
      expect(subject.technical_contacts[0].organization).to eq("GOOGLE INC.")
      expect(subject.technical_contacts[0].address).to eq("1600 Amphitheatre Parkway")
      expect(subject.technical_contacts[0].city).to eq("Mountain View, CA")
      expect(subject.technical_contacts[0].zip).to eq("94043")
      expect(subject.technical_contacts[0].state).to eq("")
      expect(subject.technical_contacts[0].country_code).to eq("US")
      expect(subject.technical_contacts[0].phone).to eq("+1.6503300100")
      expect(subject.technical_contacts[0].fax).to eq("")
      expect(subject.technical_contacts[0].email).to eq("dns-admin@google.com")
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers).to have(4).items
      expect(subject.nameservers[0]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[0]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns1.google.com")
      expect(subject.nameservers[1]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns2.google.com")
      expect(subject.nameservers[2]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[2].name).to eq("ns3.google.com")
      expect(subject.nameservers[3]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[3].name).to eq("ns4.google.com")
    end
  end
end
