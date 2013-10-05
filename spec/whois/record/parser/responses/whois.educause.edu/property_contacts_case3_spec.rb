# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.educause.edu/property_contacts_case3.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.educause.edu.rb'

describe Whois::Record::Parser::WhoisEducauseEdu, "property_contacts_case3.expected" do

  subject do
    file = fixture("responses", "whois.educause.edu/property_contacts_case3.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts).to have(1).items
      expect(subject.admin_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.admin_contacts[0].id).to eq(nil)
      expect(subject.admin_contacts[0].name).to eq("Tracy L. Smith\nUniversity of Illinois at Urbana-Champaign\nCITES  2105 Digital Computer Laboratory")
      expect(subject.admin_contacts[0].organization).to eq(nil)
      expect(subject.admin_contacts[0].address).to eq("1304 West Springfield Avenue")
      expect(subject.admin_contacts[0].city).to eq("Urbana")
      expect(subject.admin_contacts[0].zip).to eq("61801-4399")
      expect(subject.admin_contacts[0].state).to eq("IL")
      expect(subject.admin_contacts[0].country).to eq("UNITED STATES")
      expect(subject.admin_contacts[0].country_code).to eq(nil)
      expect(subject.admin_contacts[0].phone).to eq("(217) 244-2032")
      expect(subject.admin_contacts[0].fax).to eq(nil)
      expect(subject.admin_contacts[0].email).to eq("edu-admin@listserv.illinois.edu")
    end
  end
end
