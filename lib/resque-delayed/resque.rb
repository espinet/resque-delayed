module Resque
  class << self
    def enqueue_at(time, dynamic_queue, *args)
      Resque::Delayed.create_at time, dynamic_queue, *args
    end

    def enqueue_in(offset, dynamic_queue, *args)
      Resque::Delayed.create_in offset, dynamic_queue, *args
    end
  end
end
