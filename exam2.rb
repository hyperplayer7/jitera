class CategoryTree
    
    def add_category(category, parent)
        checker(category)
        my_hash = {category: category, parent: parent}
        my_array << my_hash
    end
  
    def get_children(parent)
      #return []
      my_array.select { |h| h[:parent] == parent }.each do |h|
        target_array << h[:category]
      end
      target_array
    end

    def my_array
        @my_array ||= [] 
    end

    def target_array
        @target_array ||= [] 
    end
    
    def checker(category)
        my_array.select { |h| h[:category] == category }.each do |h|
            raise ArgumentError.new("category already added!")
        end
    end
  
  end
  
  c = CategoryTree.new
  c.add_category('A', nil)
  c.add_category('B', 'A')
  c.add_category('C', 'A')
  puts (c.get_children('A') || []).join(',')