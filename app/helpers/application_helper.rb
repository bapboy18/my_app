module ApplicationHelper

  def count_tag tags
    tags.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}
    # hash.each do |key, value|
    #   "#{key}: #{value}"
    # end
  end
end
