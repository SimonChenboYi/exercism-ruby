class FlattenArray
def self.flatten(a,result=[])
a.each{|x| x.is_a?(Array)? self.flatten(x,result): result << x unless x.nil?}
return result
end
end
