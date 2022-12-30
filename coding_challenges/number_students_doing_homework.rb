def busy_student(start_time, end_time, query_time)
    ans = 0
    start_time.each_with_index do |e, i|
      ans += 1 if query_time >= e && query_time <= end_time[i]
    end
    puts ans
end

# busy_student([1,2,3], [3,2,7], 4)
busy_student([4], [4], 4)