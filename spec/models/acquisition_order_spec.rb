require 'rails_helper'

describe AcquisitionOrder do
  it "should have a valid factory" do
    expect(FactoryBot.create(:acquisition_order)).to be_valid
  end

  [:author, :title, :publication_year, :publisher, :fund].each do |field|
    it "should require #{field}" do
      order = AcquisitionOrder.new
      order.valid?
      expect(order.errors[field].size).to eq(1)
      order.send("#{field}=","Test")
      order.valid?
      expect(order.errors[field].size).to eq(0)
    end
  end

  it "should not require author if author is unknown" do
    order = AcquisitionOrder.new
    order.valid?
    expect(order.errors[:author].size).to eq(1)
    order.author_unknown = true
    order.valid?
    expect(order.errors[:author].size).to eq(0)
  end

  describe '#currency' do
    it 'is nil for a new record' do
      order = AcquisitionOrder.new
      expect(order.currency).to be_nil
    end

    it 'is a Currency if price_code is set' do
      order = AcquisitionOrder.new(price_code: 'USD')
      # order.currency.should be_a_kind_of Acquisitions::Currency #todo harrison
      expect(order.currency.iso_code).to eq('USD')
    end
  end

  describe '#acquisition_order_attachment' do
    before(:each) do
      @attachment = FactoryBot.create(:acquisition_order_attachment) 
      @attachment2 = FactoryBot.create(:acquisition_order_attachment_2) 
      @order = FactoryBot.create(:acquisition_order)
    end

    it "can associate one or more files with order" do
      @order.acquisition_order_attachments = [@attachment, @attachment2]
      @order.save!
      expect(@order.acquisition_order_attachments.count).to eq(2)
      expect(@order.acquisition_order_attachments[0].attachment_file_name).to eq("help.png")
      expect(@order.acquisition_order_attachments[1].attachment_file_size).to eq("2123")
      @attachment.destroy
      @attachment.run_callbacks(:commit)
      @attachment2.destroy
      @attachment2.run_callbacks(:commit)
    end

    it "can accept attribute updates for file parameters" do
      @order.acquisition_order_attachments = [@attachment]
      @order.save!
      expect(@order.acquisition_order_attachments.count).to eq(1)
      expect(@order.acquisition_order_attachments[0].attachment_file_name).to eq("help.png")
      @order.acquisition_order_attachments[0].attachment_file_name = "alternate.png"
      @order.save!
      @altered_order = AcquisitionOrder.find(@order.id)
      expect(@altered_order.acquisition_order_attachments[0].attachment_file_name).to eq("alternate.png")
      @attachment.destroy
      @attachment.run_callbacks(:commit)
      @attachment2.destroy
      @attachment2.run_callbacks(:commit)
    end
  end

  describe '#display_title' do
    subject { FactoryBot.create(:acquisition_order, title: "A long title that is more than thirty characters") }

    it "should display the id" do
      expect(subject.display_title).to match(/##{subject.id}/)
    end

    it "should truncate the title by default" do
      expect(subject.display_title).not_to match(/#{Regexp.escape(subject.title)}/)
      expect(subject.display_title).to match(/#{Regexp.escape(subject.title.truncate(30))}/)
    end

    it "should be able to display the full title" do
      expect(subject.display_title(false)).to match(/#{Regexp.escape(subject.title)}/)
    end

    it "should be able to customize the truncate length" do
      expect(subject.display_title(10)).to match(/#{Regexp.escape(subject.title.truncate(10))}/)
    end
  end

  describe '#to_csv' do
    subject { FactoryBot.create(:acquisition_order) }

    it 'has the id as the first field' do
      expect(subject.to_csv[0]).to eq(subject.id)
    end
  end

  describe '#copy_from_purchase_request' do
    it "copies from a purchase request" do
      request = FactoryBot.build(:purchase_request)
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
      request = FactoryBot.build(:purchase_request, hold_for_requester: true)
      subject.copy_from_purchase_request(request)
      expect(subject.requester).to be == request.requester_name
    end

    it "doesn't fill in the requester if it is not to be held" do
      request = FactoryBot.build(:purchase_request, hold_for_requester: false)
      subject.copy_from_purchase_request(request)
      expect(subject.requester).to be_nil
    end
  end

  describe 'self' do
    subject { AcquisitionOrder }

    describe '#selector_currencies' do
      it "returns a hash" do
        expect(subject.selector_currencies).to be_a_kind_of Hash
      end

      it "has the currencies used by a selector" do
        order = FactoryBot.create(:acquisition_order, price_code: 'USD')
        currencies = subject.selector_currencies[order.selector.netid]
        expect(currencies).to be_a_kind_of Array
        # currencies[0].should be_an_instance_of(Acquisitions::Currency) #todo harrison
        expect(currencies[0].iso_code).to eq('USD')
      end

      it "orders the currencies by number of times used" do
        selector = FactoryBot.create(:selector)
        FactoryBot.create_list(:acquisition_order, 3, selector: selector, price_code: 'USD')
        FactoryBot.create_list(:acquisition_order, 1, selector: selector, price_code: 'AED')
        FactoryBot.create_list(:acquisition_order, 2, selector: selector, price_code: 'EUR')
        currencies = subject.selector_currencies[selector.netid]
        expect(currencies[0].iso_code).to eq('USD')
        expect(currencies[1].iso_code).to eq('EUR')
        expect(currencies[2].iso_code).to eq('AED')
      end
    end

    describe '#to_csv' do
      before do
        @orders = FactoryBot.create_list(:acquisition_order, 5)
      end

      it 'returns a csv string from the class' do
        expect(subject.to_csv).to be_a_kind_of(String)
      end

      it 'has the id as the first header field' do
        require 'csv'
        rows = CSV.parse(subject.to_csv)
        expect(rows[0][0]).to eq("Order Request #")
      end

      it 'contains a header row data rows for each order' do
        require 'csv'
        rows = CSV.parse(subject.to_csv)
        expect(rows.count).to eq(6)
      end
    end

    describe '#creators' do
      it 'lists all creators' do
        orders = FactoryBot.create_list(:acquisition_order, 5)
        creators = orders.collect(&:creator)
        expect(creators.count).to eq(5)
        expect(subject.creators.count).to eq(5)
      end

      it 'lists filtered creators' do
        FactoryBot.create_list(:acquisition_order, 5)
        order = subject.first

        expect(subject.where(selector_netid: order.selector.netid).creators.count).to eq(1)
        expect(subject.where(selector_netid: order.selector.netid).creators.first).to eq(order.creator)
      end
    end

    describe '#selectors' do
      it 'lists all selectors' do
        orders = FactoryBot.create_list(:acquisition_order, 5)
        selectors = orders.collect(&:selector)
        expect(selectors.count).to eq(5)
        expect(subject.selectors.count).to eq(5)
      end

      it 'lists filtered selectors' do
        FactoryBot.create_list(:acquisition_order, 5)
        order = subject.first

        expect(subject.where(creator_netid: order.creator.netid).selectors.count).to eq(1)
        expect(subject.where(creator_netid: order.creator.netid).selectors.first).to eq(order.selector)
      end
    end
  end
end
