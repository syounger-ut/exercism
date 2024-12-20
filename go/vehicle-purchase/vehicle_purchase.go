package purchase

// NeedsLicense determines whether a license is needed to drive a type of vehicle. Only "car" and "truck" require a license.
func NeedsLicense(kind string) bool {
	return kind == "car" || kind == "truck"
}

// ChooseVehicle recommends a vehicle for selection. It always recommends the vehicle that comes first in lexicographical order.
func ChooseVehicle(option1, option2 string) string {
	betterVehicle := ""
	if option1 < option2 {
		betterVehicle = option1
	} else {
		betterVehicle = option2
	}

	return betterVehicle + " is clearly the better choice."
}

// CalculateResellPrice calculates how much a vehicle can resell for at a certain age.
func CalculateResellPrice(originalPrice, age float64) float64 {
	valueMultiplier := 1.0
	if age < 3 {
		valueMultiplier = 0.8
	} else if age < 10 {
		valueMultiplier = 0.7
	} else {
		valueMultiplier = 0.5
	}

	return originalPrice * valueMultiplier
}
