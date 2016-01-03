# More info at: http://rspec.info/

require 'spec_helper' # spec_helper to run the test
require 'tdd' # file containing the tested methods

describe TDD do
  context 'do_tdd' do # describe the context of the test
    # describe briefly the situation and expected
    it "when called should return 'TDD'" do
      expect(TDD.do_tdd).to eq('TDD')
    end

    it "when called shouldn't return 'Error'" do
      expect(TDD.do_tdd).not_to eq('Error')
    end
  end

  context 'do_something' do # another context, a new context
    # What should happen?
    it 'when called should return 1' do
      expect(TDD.do_something).to eq(1)
    end

    # What shouldn't?
    it "when called shouldn't return 2" do
      expect(TDD.do_something).not_to eq(2)
    end
  end

  context 'do_param' do
    it 'when called with no parameter should return 1' do
      expect(TDD.do_param).to eq(0)
    end

    it 'when 1 should return 1' do
      expect(TDD.do_param(1)).to eq(1)
    end

    context 'when 2' do
      # success!! yay
      it 'should return 2' do
        expect(TDD.do_param(2)).to eq(2)
      end

      # 1? No way!
      it "shouldn't return 1" do
        expect(TDD.do_param(2)).not_to eq(1)
      end
    end
  end
end

# When you organize well, the output can tell exactly what is happening
# and what is not

# Sample output

# TDD
#   do_tdd
#     when called should return 'TDD'
#     when called shouldn't return 'Error'
#   do_something
#     when called should return 1
#     when called shouldn't return 2
#   do_param
#     when called with no parameter should return 1
#     when 1 should return 1
#     when 2
#       should return 2
#       shouldn't return 1
#
# Finished in 0.00233 seconds (files took 0.11508 seconds to load)
# 8 examples, 0 failures
