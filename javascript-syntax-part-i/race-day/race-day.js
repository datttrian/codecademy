let raceNumber = Math.floor(Math.random() * 1000);
let earlyReg = false;
let runnerAge = 20;

if (runnerAge > 18 && earlyReg === true) {
  raceNumber += 1000;
}

console.log(raceNumber);

if (runnerAge > 18 && earlyReg === true) {
  console.log(`Entrant number ${raceNumber} will race at 9:30 am.`);
} else if (runnerAge > 18 && earlyReg === false) {
  console.log(`Entrant number ${raceNumber} will race at 11:00 am.`);
} else {
  console.log("Please see the registration desk.");
}

if (runnerAge < 18) {
  console.log(`Entrant number ${raceNumber} will race at 12:30 pm.`);
}
