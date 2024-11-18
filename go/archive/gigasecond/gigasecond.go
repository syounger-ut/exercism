package gigasecond

import (
	"time"
)

const gs int64 = 1_000_000_000

// AddGigasecond returns the time plus one gigasecond (1 billion seconds)
func AddGigasecond(t time.Time) time.Time {
	gs := gs + t.Unix()
	return time.Unix(gs, 0)
}
