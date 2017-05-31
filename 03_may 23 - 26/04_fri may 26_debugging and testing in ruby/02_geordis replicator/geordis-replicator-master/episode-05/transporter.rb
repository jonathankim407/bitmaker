class Transporter

  def initialize(enterprise)
    @enterprise = enterprise
    @power = true # changed power from false to true
    connect_to_power
  end

  def connect_to_power
    @power = @enterprise.reactor.on
  end

  def energize(obj:, from:, to:)
    return unless @power

    if @enterprise.reactor.draw_power(3)
      to.contents << from.contents.delete(obj)
      return obj
    end
  end

end
