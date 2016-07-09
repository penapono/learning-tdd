require 'spec_helper' # spec_helper to run the test
require 'fizzbuzz' # file containing the tested methods

describe FizzBuzz do

  context 'output' do

    context 'count up to 1' do
      it 'returns 1' do
        expect(FizzBuzz.output(1))
          .to eq("1")
      end
    end

    context 'count up to 2' do
      it 'returns 1 2' do
        expect(FizzBuzz.output(2))
          .to eq("1 2")
      end
    end

    context 'count up to 3' do
      it 'returns 1 2 fizz' do
        expect(FizzBuzz.output(3))
          .to eq("1 2 fizz")
      end
    end

    context 'count up to 4' do
      it 'returns 1 2 fizz 4' do
        expect(FizzBuzz.output(4))
          .to eq("1 2 fizz 4")
      end
    end

    context 'count up to 5' do
      it 'returns 1 2 fizz 4 buzz' do
        expect(FizzBuzz.output(5))
          .to eq("1 2 fizz 4 buzz")
      end
    end

    context 'count up to 15' do
      it 'returns 1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz' do
        expect(FizzBuzz.output(15))
          .to eq("1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz")
      end
    end

    context 'count up to 30' do
      it 'returns 1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz 16 17 fizz 19 buzz fizz 22 23 fizz buzz 26 fizz 28 29 fizzbuzz' do
        expect(FizzBuzz.output(30))
          .to eq("1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz 16 17 fizz 19 buzz fizz 22 23 fizz buzz 26 fizz 28 29 fizzbuzz")
      end
    end
  end
end
