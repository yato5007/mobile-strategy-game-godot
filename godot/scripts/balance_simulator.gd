# Balance Simulator Script
# Run: godot --headless --script godot/scripts/balance_simulator.gd

extends SceneTree

var match_count: int = 100
var results = []

func _init():
	print("=== Balance Simulator ===")
	print("Simulating %d matches..." % match_count)
	
	for i in range(match_count):
		var result = simulate_match("ffa")
		results.append(result)
		if i % 20 == 19:
			print("  %d/%d matches complete" % [i+1, match_count])
	
	print_results()
	quit()

func simulate_match(mode: String) -> Dictionary:
	var claims = {0: 0.0, 1: 0.0, 2: 0.0, 3: 0.0}
	var phases = 9
	var leader_changes = 0
	var last_leader = -1
	
	for phase in range(phases):
		for player in range(4):
			var gain = randf_range(0.0, 2.5)
			claims[player] += gain
	
	var winner = 0
	var max_claim = -1.0
	for i in claims:
		if claims[i] > max_claim:
			max_claim = claims[i]
			winner = i
	
	var sorted_claims = claims.values()
	sorted_claims.sort()
	var leader_gap = sorted_claims[-1] - sorted_claims[-2] if sorted_claims.size() >= 2 else 0
	
	# Detect if trailing player could have overtaken (comeback)
	var can_comeback = false
	var sorted_players = claims.keys().duplicate()
	sorted_players.sort_custom(func(a,b): return claims[a] < claims[b])
	var trailing = sorted_players[0]
	var leading = sorted_players[-1]
	var gap = claims[leading] - claims[trailing]
	if gap < 3.0:
		can_comeback = true
	
	return {
		"winner": winner,
		"claims": claims.duplicate(),
		"leader_gap": leader_gap,
		"can_comeback": can_comeback,
		"phases": phases
	}

func print_results():
	if results.size() == 0:
		print("No results!")
		return
	
	var win_counts = {0: 0, 1: 0, 2: 0, 3: 0}
	var total_gaps = 0.0
	var come_backs = 0
	var avg_claims = {0: 0.0, 1: 0.0, 2: 0.0, 3: 0.0}
	
	for r in results:
		win_counts[r["winner"]] += 1
		total_gaps += r["leader_gap"]
		for p in range(4):
			avg_claims[p] += r["claims"].get(p, 0.0)
		if r["can_comeback"]:
			come_backs += 1
	
	var n = results.size()
	print("\n=== Results (%d matches) ===" % n)
	print("Win rates:")
	for i in range(4):
		var pct = 0.0
		pct = (float(win_counts[i]) / float(n)) * 100.0
		print("  Player %d: %.1f%%" % [i+1, pct])
	
	print("\nAverage claims:")
	for i in range(4):
		print("  Player %d: %.2f" % [i+1, avg_claims[i] / n])
	
	print("\nAverage leader gap: %.2f" % (total_gaps / n))
	print("Comeback possible rate: %.1f%%" % ((float(come_backs) / float(n)) * 100.0))
	print("Strategy dominance: LOW (random bots, even distribution)")
	print("Passive play penalty: NOT SIMULATED (all bots active)")
	print("\n=== Simulator Complete ===")
