# TAS

 - One easy way is to just encode the replay, but that means handcrafted json
 - Slow down simulation, re-upload to leaderboard with replay
```javascript
  hp(this, qf, "f").stepSimulation(1 / hp(this, rp, "f") * 0.1, 0, 1 / hp(this, rp, "f")),
                                                                     ^- this 0.1 here makes game 10x slower
```

 - 
