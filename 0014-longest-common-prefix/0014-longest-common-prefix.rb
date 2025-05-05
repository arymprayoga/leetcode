# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    prefix = strs[0]

    strs.each do |str|
        while str.index(prefix) != 0
            prefix = prefix[0..-2]
            return "" if prefix.empty?
        end
    end
    prefix
end