package cars

const sixtyMinutes = 60
const carsProductionBatchCount = 10
const individualCarProductionCost = 10_000
const batchCarProductionCost = 95_000

// CalculateWorkingCarsPerHour calculates how many working cars are
// produced by the assembly line every hour.
func CalculateWorkingCarsPerHour(productionRate int, successRate float64) float64 {
	return float64(productionRate) * (successRate / 100)
}

// CalculateWorkingCarsPerMinute calculates how many working cars are
// produced by the assembly line every minute.
func CalculateWorkingCarsPerMinute(productionRate int, successRate float64) int {
	return int(CalculateWorkingCarsPerHour(productionRate, successRate) / sixtyMinutes)
}

// CalculateCost works out the cost of producing the given number of cars.
func CalculateCost(carsCount int) uint {
	var groupsOfTenCarsCost = (carsCount / carsProductionBatchCount) * batchCarProductionCost
	var individualCarsCost = (carsCount % carsProductionBatchCount) * individualCarProductionCost

	return uint(groupsOfTenCarsCost + individualCarsCost)
}
