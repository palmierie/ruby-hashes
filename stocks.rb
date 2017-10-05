stock_dict = { 'GM' => 'General Motors',
'CAT' => 'Caterpillar', 'EK' => "Eastman Kodak" }

purchases = [ [ 'GM', 100, '10-sep-2001', 48 ],
[ 'CAT', 100, '1-apr-1999', 24 ],
[ 'GM', 200, '1-jul-1998', 56 ] ]

purchase_history_report = Array.new
purchase_summary = Hash.new

for prop in purchases
  symbol = prop[0]
  total = prop[1]*prop[3]
  purchase = [symbol, prop[2], total]
  purchase_history_report.push("#{stock_dict[symbol]} - #{prop[2]} - #{total}")
  if purchase_summary[symbol] == nil
    purchase_summary[symbol] = Array.new
    purchase_summary[symbol].push(purchase)
  else
    purchase_summary[symbol].push(purchase)
  end
end

puts "Purchase History Report #{purchase_history_report}"
puts "-------------------"
puts purchase_summary
puts "-------------------"
puts "Purchase Summary"
for purchase in purchase_summary
  p purchase
end