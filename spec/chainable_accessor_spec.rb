# frozen_string_literal: true

RSpec.describe ChainableAccessor do
  subject(:obj) { klazz.new }
  it { expect(ChainableAccessor::VERSION).to be_a String }

  let(:klazz) do
    Class.new do
      extend ChainableAccessor
      attr_accessor :page, :per, :word, :bar

      chainable_accessor :page, :per, :foo
      chainable_accessor :bar, immutable: true

      def foo=(val)
        @foo = val.to_i
      end

      def foo
        @foo.to_s
      end
    end
  end

  it { expect(obj.page(3).per(15)).to eq obj }
  it { expect(obj.page(3).per(15).page).to eq 3 }
  it { expect(obj.foo('10').foo).to eq '10' }
  it { expect(obj.page(3).bar(4)).not_to eq obj }
  it { expect(obj.page(3).bar(4).page).to eq 3 }
  it { expect(obj.page(3).bar(4).bar).to eq 4 }
end
