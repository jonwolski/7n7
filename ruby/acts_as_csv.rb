module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods
    def read
      @file = get_file
      @headers = headers_from_file( @file )
      @row_class = Struct.new( *@headers )
    end

    def each
      @file.each do |row|
        yield build_struct_from_row( row )
      end
    end

    attr_accessor :headers
    def initialize
      read
    end

    private

    def get_file
      File.new( get_filename )
    end

    def get_filename
      self.class.to_s.downcase + '.csv'
    end

    def headers_from_file( file )
      symbols_from_row( file.gets )
    end

    def symbols_from_row( row_string )
      array_from_row( row_string ).map( &:to_sym )
    end

    def build_struct_from_row( row )
      @row_class.new( *array_from_row( row ))
    end

    def array_from_row( row_string )
      row_string.chomp.split(',')
    end

  end
end

