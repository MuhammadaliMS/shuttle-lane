# Shuttle Lane

**Play:** https://zerowing.in/games/shuttle-lane/

1v1 street badminton in a clay 3D diorama, built with Three.js in a single HTML file. Fifth game in the street-sport family (Galli Cricket, Panna Cage, Block Hoops, Sand Spike). The net is a rope (or a sarong) tied between two houses, the way it is played all over India, Indonesia and Malaysia.

## Lanes
- **Hyderabad gali**: pastel houses with balconies, a rope net tied to a verandah grille, chalk lines on the concrete, a chai stall, parked scooters, kids on the steps, string lights and a little Charminar at the end of the lane. **Twist:** every so often a scooter honks and rides down the lane. Play stops (SCOOTER!), the net drops, both players step to the sidelines, and a point in progress is replayed.
- **Jakarta kampung**: a gang with tin roofs, potted plants, a warung, a mosque dome and red-and-white bunting. **Twist:** the net is a sarong tied low and saggy in the middle, so flat drives through the middle clear it easily and a shuttle that clips the cloth dribbles over (NET CORD!). An evening wind drifts high clears and changes every point (windsock and wind chip).
- **Kuala Lumpur flats**: a badminton court painted on the car park between low-cost flats, laundry on bamboo poles, the Petronas towers in the haze. **Twist:** laundry lines hang over the court. A shuttle that hits the clothes is a fault for the hitter (KENA BAJU!), so very high lifts are risky.

## Shuttlecock physics
Gravity plus quadratic drag against the air (the wind moves the air), terminal speed about 7.7 m/s: it leaves the racket fast, slows hard and drops steeply, cork first (it flips over after each hit). Smashes leave a trail. Shot speed and angle come from a solver that fires the same integrator the live shuttle uses, so the landing ring is exact.

## Rules
Rally scoring to 15, win by 2, capped at 21. Serve underhand and diagonally from the right court when your score is even and the left when it is odd; the serve must land in the opposite box, past the short service line. The shuttle must clear the rope and land inside the chalk lines (singles court, 5.2 x 13.4 m). Touching the rope, hitting the net, out, or landing on your own side is a point to the other player. The rally winner serves.

## Controls
One HIT button. What it plays depends on the shuttle's height and where you stand: high is a SMASH (you jump for a very high one), mid is a DRIVE, low near the net is a NET SHOT, low and far back is a CLEAR. Hold the button briefly for a deep CLEAR. The stick (or WASD / arrows) moves and aims. Press with the shuttle in your sweet spot for PERFECT; GOOD and LATE drift off target. Serve: tap for a short serve, hold for a long high serve (release inside the white zone of the meter).
- **1 player:** WASD or arrows to move and aim, Space or Enter to hit.
- **2 players (one keyboard):** P1 WASD + Space, P2 arrows + Enter.
- **Phone (landscape):** floating left stick, one big HIT button (its label changes), pause button. 2 players needs a keyboard.
- T cycles time of day, M mutes, P toggles the pixel look, Esc pauses, R returns to the menu.

## Testing hooks
`window.__shuttle` exposes `state, score, ball, players, setLocation, setTime, startGame, bot, aiBoth, speed, sim(seconds), step(n)`. `bot = true` lets a scripted player drive your side through the normal human control path; `aiBoth = true` lets the AI play both sides. `sim()` steps the game headlessly with no rendering.

## Development
Edit `game.html`, then run `./build.sh` to regenerate `index.html`.
