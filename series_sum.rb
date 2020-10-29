def series_sum(num)
  series_array = []
  # empty array to which the sums are to be added
  m = 1
  # m represents the denominator of each fraction in the series
  # m is initialised to 1 since the first fraction is the number 1
  init = 0
  # init will be used for incremental reasons
  num.times do
    series_array << Rational(1, m)
    # Rational(x, y) in ruby returns a fraction like so: x/y 
    m += 3
    # since the denominators of the fractions in the series increase by 3
    # I add 3 after every iteration
  end

  series_array.each do |fraction|
    init += fraction
    # each fraction in the series is added to the init variable
    # this gives the total sum 
  end


  if (init.to_f.round(2).to_s == init.to_f.round(1).to_s) then
    init.to_f.round(2).to_s + "0"
    # some answers return only one decimal despite asking for two
    # so I mechanically (for lack of a better word) added an extra 0
    # to the final answer
  else
    init.to_f.round(2).to_s
    # other answers return two decimal points as expected
  end
  
end