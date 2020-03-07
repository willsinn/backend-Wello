class BoardSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :background, :team_name
  has_many :items

  def items
    self.object.items.map do |item|
      { id: item.id,
        objective: item.objective,
        board_id: self.object.id,
        cards: item.cards.map do |card|
        { id: card.id,
          subject: card.subject,
          detail: card.detail,
          item_id: item.id }
      end }
    end
  end
end