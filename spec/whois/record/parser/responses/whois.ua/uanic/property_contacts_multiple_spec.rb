# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.ua/uanic/property_contacts_multiple.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.ua.rb'

describe Whois::Record::Parser::WhoisUa, "property_contacts_multiple.expected" do

  subject do
    file = fixture("responses", "whois.ua/uanic/property_contacts_multiple.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts).to have(2).items
      expect(subject.technical_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Record::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq("KG780-UANIC")
      expect(subject.technical_contacts[0].name).to eq(nil)
      expect(subject.technical_contacts[0].organization).to eq("Kyivstar GSM")
      expect(subject.technical_contacts[0].address).to eq("Chervonozoryanyi Av., 51")
      expect(subject.technical_contacts[0].city).to eq("KYIV")
      expect(subject.technical_contacts[0].zip).to eq("03110")
      expect(subject.technical_contacts[0].state).to eq(nil)
      expect(subject.technical_contacts[0].country).to eq("UA")
      expect(subject.technical_contacts[0].country_code).to eq(nil)
      expect(subject.technical_contacts[0].phone).to eq("+380 (67) 2372213")
      expect(subject.technical_contacts[0].fax).to eq("+380 (44) 2473954")
      expect(subject.technical_contacts[0].email).to eq("dnsmaster@kyivstar.net")
      expect(subject.technical_contacts[0].created_on).to eq(nil)
      expect(subject.technical_contacts[0].updated_on).to eq(Time.parse("2008-09-02 12:52:47"))
      expect(subject.technical_contacts[1]).to be_a(Whois::Record::Contact)
      expect(subject.technical_contacts[1].type).to eq(Whois::Record::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[1].id).to eq("EIC-UANIC")
      expect(subject.technical_contacts[1].name).to eq(nil)
      expect(subject.technical_contacts[1].organization).to eq("\"ElVisti Information Center\", LLC\nООО \"Информационный центр \"Электронные вести\"\nТОВ \"ІЦ ЕЛВІСТІ\"")
      expect(subject.technical_contacts[1].address).to eq("а/с, 151")
      expect(subject.technical_contacts[1].city).to eq("КИЇВ")
      expect(subject.technical_contacts[1].zip).to eq("03037")
      expect(subject.technical_contacts[1].state).to eq(nil)
      expect(subject.technical_contacts[1].country).to eq("UA")
      expect(subject.technical_contacts[1].country_code).to eq(nil)
      expect(subject.technical_contacts[1].phone).to eq("+38044 239-90-91")
      expect(subject.technical_contacts[1].fax).to eq(nil)
      expect(subject.technical_contacts[1].email).to eq("hostmaster@visti.net")
      expect(subject.technical_contacts[1].created_on).to eq(nil)
      expect(subject.technical_contacts[1].updated_on).to eq(Time.parse("2011-12-15 11:33:14"))
    end
  end
end
