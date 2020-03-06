class Phone
  # @dynamic country, number

  def initialize(country:, number:)
    @country = country
    @number = number
  end

  def ==(other)
    # You cannot use `case` for type case because `other` has type of `untyped`, not a union type.
    # You have to explicitly declare the type of `other` in `if` expression.

    if other.is_a?(Phone)
      # @type var other: Phone
      other.country == country && other.number == number
    end
  end

  def hash
    self.class.hash ^ country.hash ^ number.hash
  end
end
