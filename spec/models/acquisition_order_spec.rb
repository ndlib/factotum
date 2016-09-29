require 'rails_helper'

describe AcquisitionOrder do
  it "should have a valid factory" do
    FactoryGirl.create(:acquisition_order).should be_valid
  end

  [:author, :title, :publication_year, :publisher, :fund].each do |field|
    it "should require #{field}" do
      order = AcquisitionOrder.new
      order.should have(1).error_on(field)
      order.send("#{field}=","Test")
      order.should have(0).errors_on(field)
    end
  end

  it "should not require author if author is unknown" do
    order = AcquisitionOrder.new
    order.should have(1).error_on(:author)
    order.author_unknown = true
    order.should have(0).errors_on(:author)
  end

  describe '#currency' do
    it 'is nil for a new record' do
      order = AcquisitionOrder.new
      order.currency.should be_nil
    end

    it 'is a Currency if price_code is set' do
      order = AcquisitionOrder.new(price_code: 'USD')
      # order.currency.should be_a_kind_of Acquisitions::Currency #todo harrison
      order.currency.iso_code.should be == 'USD'
    end
  end

  describe '#display_title' do
    subject { FactoryGirl.create(:acquisition_order, title: "A long title that is more than thirty characters") }

    it "should display the id" do
      subject.display_title.should match(/##{subject.id}/)
    end

    it "should truncate the title by default" do
      subject.display_title.should_not match(/#{Regexp.escape(subject.title)}/)
      subject.display_title.should match(/#{Regexp.escape(subject.title.truncate(30))}/)
    end

    it "should be able to display the full title" do
      subject.display_title(false).should match(/#{Regexp.escape(subject.title)}/)
    end

    it "should be able to customize the truncate length" do
      subject.display_title(10).should match(/#{Regexp.escape(subject.title.truncate(10))}/)
    end
  end

  describe '#to_csv' do
    subject { FactoryGirl.create(:acquisition_order) }

    it 'has the id as the first field' do
      subject.to_csv[0].should be == subject.id
    end
  end

  describe '#copy_from_purchase_request' do
    it "copies from a purchase request" do
      request = FactoryGirl.build(:purchase_request)
      subject.copy_from_purchase_request(request)
      expect(subject.title).to be == request.title
      expect(subject.publication_year).to be == request.year
      expect(subject.publisher).to be == request.publisher
      expect(subject.author).to be == request.author
      expect(subject.format).to be == request.format
      expect(subject.edition).to be == request.edition
      expect(subject.series).to be == request.series
      expect(subject.oclc_number).to be == request.oclc
      expect(subject.isbn).to be == request.isbn
      expect(subject.price).to be == request.price
      expect(subject.additional_details).to be == request.comments
    end

    it "fills in the requester if it is to be held" do
      request = FactoryGirl.build(:purchase_request, hold_for_requester: true)
      subject.copy_from_purchase_request(request)
      expect(subject.requester).to be == request.requester_name
    end

    it "doesn't fill in the requester if it is not to be held" do
      request = FactoryGirl.build(:purchase_request, hold_for_requester: false)
      subject.copy_from_purchase_request(request)
      expect(subject.requester).to be_nil
    end
  end

  describe 'self' do
    subject { AcquisitionOrder }

    describe '#selector_currencies' do
      it "returns a hash" do
        subject.selector_currencies.should be_a_kind_of Hash
      end

      it "has the currencies used by a selector" do
        order = FactoryGirl.create(:acquisition_order, price_code: 'USD')
        currencies = subject.selector_currencies[order.selector.netid]
        currencies.should be_a_kind_of Array
        # currencies[0].should be_an_instance_of(Acquisitions::Currency) #todo harrison
        currencies[0].iso_code.should be == 'USD'
      end

      it "orders the currencies by number of times used" do
        selector = FactoryGirl.create(:selector)
        FactoryGirl.create_list(:acquisition_order, 3, selector: selector, price_code: 'USD')
        FactoryGirl.create_list(:acquisition_order, 1, selector: selector, price_code: 'AED')
        FactoryGirl.create_list(:acquisition_order, 2, selector: selector, price_code: 'EUR')
        currencies = subject.selector_currencies[selector.netid]
        currencies[0].iso_code.should be == 'USD'
        currencies[1].iso_code.should be == 'EUR'
        currencies[2].iso_code.should be == 'AED'
      end
    end

    describe '#to_csv' do
      before do
        @orders = FactoryGirl.create_list(:acquisition_order, 5)
      end

      it 'returns a csv string from the class' do
        subject.to_csv.should be_a_kind_of(String)
      end

      it 'has the id as the first header field' do
        require 'csv'
        rows = CSV.parse(subject.to_csv)
        rows[0][0].should be == "Order Request #"
      end

      it 'contains a header row data rows for each order' do
        require 'csv'
        rows = CSV.parse(subject.to_csv)
        rows.count.should be == 6
      end
    end

    describe '#creators' do
      it 'lists all creators' do
        orders = FactoryGirl.create_list(:acquisition_order, 5)
        creators = orders.collect(&:creator)
        creators.count.should be == 5
        subject.creators.count.should be == 5
      end

      it 'lists filtered creators' do
        FactoryGirl.create_list(:acquisition_order, 5)
        order = subject.first

        subject.where(selector_netid: order.selector.netid).creators.count.should be == 1
        subject.where(selector_netid: order.selector.netid).creators.first.should == order.creator
      end
    end

    describe '#selectors' do
      it 'lists all selectors' do
        orders = FactoryGirl.create_list(:acquisition_order, 5)
        selectors = orders.collect(&:selector)
        selectors.count.should be == 5
        subject.selectors.count.should be == 5
      end

      it 'lists filtered selectors' do
        FactoryGirl.create_list(:acquisition_order, 5)
        order = subject.first

        subject.where(creator_netid: order.creator.netid).selectors.count.should be == 1
        subject.where(creator_netid: order.creator.netid).selectors.first.should == order.selector
      end
    end
  end
end
