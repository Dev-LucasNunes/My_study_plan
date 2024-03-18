def job_sequencing_problem(arr)
    arr.sort_by { |subarray| subarray[2]}.reverse
end

arr = [['a', 2, 100],
       ['b', 1, 19],
       ['c', 2, 27],
       ['d', 1, 25],
       ['e', 3, 15]]

puts job_sequencing_problem(arr).inspect
