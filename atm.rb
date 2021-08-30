require 'rspec'
def withdraw(amount)
  if amount <= 0 
    return false
  end
  end


def atm total, denominations 
	raw_data = denominations.inject({}) do |hash, denomination|
		hash[denomination] = total.divmod(denomination)
		total -= total.divmod(denomination).first * denomination
		hash
	end
	raw_data.map do |k, v|
	 raw_data[k] = v.first
   end
   raw_data
end 
describe 'ATM' do 
	it 'withdraw the correct denominations to users' do 
		expect(atm 25, [25, 10, 5, 1]).to eq({25=>1, 10=>0, 5=>0, 1=>0})
        #expect(response).to have_http_status(200)
	end

	it 'withdraw the correct denominations to users' do 
		expect(atm 41, [25, 10, 5, 1]).to eq({25=>1, 10=>1, 5=>1, 1=>1})
		#expect(response).to have_http_status(200)
    end 
	it 'withdraw the not correct denominations to users' do 
		expect(atm 12, [25, 10, 5, 1]).not_to eq({25=>0, 10=>0, 5=>0, 1=>0})
		#expect(response).to have_http_status(400)
end
end
