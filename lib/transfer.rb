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
    @sender.valid? && @receiver.valid? ? true : false
  end

  def execute_transaction
    if @sender.balance < @amount
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    elsif @status != "complete" && @sender.valid?
      @receiver.balance = @receiver.balance + @amount
      @sender.balance = @sender.balance - @amount
      @status = "complete"
    end
  end
    

  def reverse_transfer
    if @status == "complete"
      @sender.balance += @amount
      @receiver.balance -= @amount
      @status = "reversed"
    end
  end

  
end
