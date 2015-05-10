ZERO = 0
ONE = 1
THREE = 3
STATUS = %w(Available Hold Sold)
PACKING_TYPE = %w(Frame Canvas-Roll Mount Paper)
current_year = Date.today.strftime('%Y').to_i
YEAR = (1980..current_year).collect { |year| year }
