class PaymentsWorker
  include Sidekiq::Worker
  sidekiq_options queue: "high"

  def perform(person_id)
    binding.pry
    ExampleMailer.sample_email(@user).deliver
  end
end