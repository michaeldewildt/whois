# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.crsnic.net/net/status_available.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.crsnic.net.rb'

describe Whois::Record::Parser::WhoisCrsnicNet, "status_available.expected" do

  subject do
    file = fixture("responses", "whois.crsnic.net/net/status_available.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      expect(subject.disclaimer).to eq("TERMS OF USE: You are not authorized to access or query our Whois database through the use of electronic processes that are high-volume and automated except as reasonably necessary to register domain names or modify existing registrations; the Data in VeriSign Global Registry Services' (\"VeriSign\") Whois database is provided by VeriSign for information purposes only, and to assist persons in obtaining information about or related to a domain name registration record. VeriSign does not guarantee its accuracy. By submitting a Whois query, you agree to abide by the following terms of use: You agree that you may use this Data only for lawful purposes and that under no circumstances will you use this Data to: (1) allow, enable, or otherwise support the transmission of mass unsolicited, commercial advertising or solicitations via e-mail, telephone, or facsimile; or (2) enable high volume, automated, electronic processes that apply to VeriSign (or its computer systems). The compilation, repackaging, dissemination or other use of this Data is expressly prohibited without the prior written consent of VeriSign. You agree not to use electronic processes that are automated and high-volume to access or query the Whois database except as reasonably necessary to register domain names or modify existing registrations. VeriSign reserves the right to restrict your access to the Whois database in its sole discretion to ensure operational stability.  VeriSign may restrict or terminate your access to the Whois database for failure to abide by these terms of use. VeriSign reserves the right to modify these terms at any time.")
    end
  end
  describe "#domain" do
    it do
      expect(subject.domain).to eq("u34jedzcq.net")
    end
  end
  describe "#domain_id" do
    it do
      lambda { subject.domain_id }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(nil)
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to eq(true)
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to eq(false)
    end
  end
  describe "#created_on" do
    it do
      expect(subject.created_on).to eq(nil)
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to eq(nil)
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to eq(nil)
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to eq(nil)
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers).to eq([])
    end
  end
  describe "#referral_whois" do
    it do
      expect(subject.referral_whois).to eq(nil)
    end
  end
  describe "#referral_url" do
    it do
      expect(subject.referral_url).to eq(nil)
    end
  end
end
