module Implementation
  class DocumentStore
    attr_reader :capacity, :documents

    def initialize(capacity)
      @capacity = capacity
      @documents = Array.new
    end

    def documents; @documents.to_enum; end

    def add_document(doc)
      raise 'Document store is full' if @documents.length >= @capacity
      @documents << doc
    end

    def inspect
      "Document store: #{@documents.length}/#{@capacity}"
    end
  end
end

# ds = DocumentStore.new(2)
# ds.add_document('doc 1')
# byebug
# puts ds.inspect