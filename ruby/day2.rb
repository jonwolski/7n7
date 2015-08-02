module Day2
  def self.exercise_1
    a = (1..16).to_a
    a[ 0... 4].each {|k| puts k }
    a[ 4... 8].each {|k| puts k }
    a[ 8...12].each {|k| puts k }
    a[12...16].each {|k| puts k }
  end

  def self.exercise_2
    (1..16).to_a.each_slice(4) { |k| puts k }
  end

  class Tree
    attr_accessor :children, :node_name

    def visit_all( &block )
      visit &block
      children.each {|c| c.visit_all &block}
    end

    def visit(&block)
      block.call self
    end

    def initialize(name, tree_hash )
      @children = []
      @node_name = name
      tree_hash.each { |key, value|
        @children.push Tree.new(key, value)
      }
    end

    def to_s
      "'#{@node_name}': {#{@children.join ", "}}"
    end
  end
end

