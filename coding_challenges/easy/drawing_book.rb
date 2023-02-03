module Implementation
  def page_count(num, page)
    count_blocks = num / 2 + 1
    target_block = page / 2 + 1
    [target_block - 1, count_blocks - target_block].min
  end
end