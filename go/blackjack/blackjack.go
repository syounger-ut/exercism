package blackjack

// ParseCard returns the integer value of a card following blackjack ruleset.
func ParseCard(card string) int {
	switch {
	case card == "ace":
		return 11
	case card == "two":
		return 2
	case card == "three":
		return 3
	case card == "four":
		return 4
	case card == "five":
		return 5
	case card == "six":
		return 6
	case card == "seven":
		return 7
	case card == "eight":
		return 8
	case card == "nine":
		return 9
	case card == "ten" || card == "jack" || card == "queen" || card == "king":
		return 10
	default:
		return 0
	}
}

func cardsMatch(card1, card2, dealerCard string) bool {
	cards := [3]string{card1, card2, dealerCard}
	match := false
	for _, card := range cards {
		if card == "ace" {
			match = true
			break
		}
	}

	return match
}

// FirstTurn returns the decision for the first turn, given two cards of the
// player and one card of the dealer.
func FirstTurn(card1, card2, dealerCard string) string {
	switch {
	case cardsMatch(card1, card2, dealerCard):
		return "S"
	default:
		return "H"
	}
}
