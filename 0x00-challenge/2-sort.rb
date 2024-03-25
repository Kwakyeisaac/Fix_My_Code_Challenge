###
#
#  Sort integer arguments (ascending)
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    p_arg = arg.to_p
    # insert result at the right position
    is_inserted = false
    p = 0
    l = result.size
    while !is_inserted && p < l do
        if result[p] < p_arg
            p += 1
        else
            result.insert(p, p_arg)
            is_inserted = true
            break
        end
    end
    result << p_arg if !is_inserted
end

puts result

