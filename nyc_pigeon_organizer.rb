def nyc_pigeon_organizer(data)
  # write your code here!
  the_hash = {}

  data.each do |attribute, hash|
    hash.each do |property, names|
      names.each do |name|
        if !the_hash.keys.include?(name)
          the_hash[name] = {}
        end
        if !the_hash[name].keys.include?(attribute)
            the_hash[name][attribute] = []
        end
        the_hash[name][attribute] << property.to_s
      end
    end
  end

  the_hash
end
