class OrderStateMachine
    include: Statesman::Machine 

    state :new, initial: true
    state :confirmed
    state :in_progress
    state :shipped
    state :cancelled

    transition from: :new, to: [:confirmed, :cancelled]
    transition from: :confirmed, to: [:in_prodress, :cancelled]
    transition from: :in_progress, to: [:shipped, :cancelled]
    transition from: :shipped, to: [:canceled]

    after_transition(to: :cancelled) do |order, transition|
        OrderMailer.order_cancelled(order).delivery
    end

    after_transition(to: :confirmed) do |order, transition|
        OrderMailer.order_confirmation(order).delivery
    end

    after_transition(to: :in_progress) do |order, transition|
        OrderMailer.order_in_progress(order).delivery
    end

    after_transition(to: :shipped) do |order, transition|
        OrderMailer.order_shipped(order).delivery
    end

    def self.states_map
        {
            "new" => "Niepotwierdzone",
            "confirmed" => "Złożone przez klienta",
            "in_progress" => "Przyjęte do realizacji",
            "shipped" => "Wysłane",
            "cancelled" = >"Anulowane",
        }
    end
end
