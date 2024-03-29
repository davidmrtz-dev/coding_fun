class CategoryTree
    def initialize
      @categories = {}
    end
  
    def add_category(name, parent)
      category_already_exists(name) if @categories[name]
  
      if parent.nil?
        @categories[name] = { children: [] }
      else
        parent_does_not_exists(parent) unless @categories[parent]
  
        @categories[parent][:children] << name
        @categories[name] = { parent: parent }
      end
    end
  
    def get_children(category)
      cat = @categories[category]
      return cat[:children] if cat && cat[:children]
    end
  
    private
  
    def category_already_exists(name)
      raise ArgumentError.new("Category #{name} already exists!")
    end
  
    def parent_does_not_exists(parent)
      raise ArgumentError.new("Parent category #{parent} does not exists")
    end
  end

  c = CategoryTree.new
c.add_category('A', nil)
c.add_category('B', 'A')
c.add_category('C', 'A')
# c.add_category('A', 'nil')
# c.add_category('D', 'Z')
# puts (c.get_children('A') || []).join(',')
# puts (c.get_children('C') || []).join(',')
puts (c.get_children('D') || []).join(',')