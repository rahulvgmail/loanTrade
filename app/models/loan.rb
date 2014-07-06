class Loan < ActiveRecord::Base



#copy paste from web

  has_and_belongs_to_many :children,
                          :class_name => "Loan",
                          :join_table => "portfolios",
                          :foreign_key => "container_id",
                          :association_foreign_key => "child_id"

  has_and_belongs_to_many :containers,
                          :class_name => "Loan",
                          :join_table => "portfolios",
                          :foreign_key => "child_id",
                          :association_foreign_key => "container_id"

  # All Components that do not belong to any container
  scope :roots, -> {where("not exists (select * from children_containers where child_id=loans.id)")}

  # All Components that have no children
  scope :leaves, -> {where("not exists (select * from children_containers where container_id=loans.id)")}

  # Is this Component at root level
  def root?
    self.containers.empty?
  end

  # Is this Component at leaf level
  def leaf?
    self.children.empty?
  end

  # Notice the recursive call to traverse the Component hierarchy
  #   Similarly, it can be written to output using nested <ul> and <li>s as well.
  def to_s(level=0)
    "#{'  ' * level}#{name}\n" + children.map {|c| c.to_s(level + 1)}.join
  end

end
