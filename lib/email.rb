class Email
  # @dynamic address
  attr_reader :address

  def initialize(address:)
    @address = address
  end

  def ==(other)
    # `other` has type of `untyped`, which means type checking is skipped.
    # No type errors can be detected in this method.
    other.is_a?(self.class) && other.address == address
  end

  def hash
    self.class.hash ^ address.hash
  end
end

