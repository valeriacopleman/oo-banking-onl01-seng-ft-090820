class Transfer
  
  attr_accessor :sender, :receiver, :transfer, :amount, :status, :bankaccount
  
  def initialize(sender, receiver,amount)
    @transfer = transfer
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    @sender.valid? && @receiver.valid?
  end


  
end
