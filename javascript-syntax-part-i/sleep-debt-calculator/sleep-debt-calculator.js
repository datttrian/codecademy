function getSleepHours(day) {
    switch (day) {
      case "Monday":
        return 8;
        break;
      case "Tuesday":
        return 6;
        break;
      case "Wednesday":
        return 7;
        break;
      case "Thursday":
        return 8;
        break;
      case "Friday":
        return 6;
        break;
      case "Saturday":
        return 5;
        break;
      case "Sunday":
        return 8;
        break;
    }
  }
  
  const getActualSleepHours = () =>
    getSleepHours("Monday") +
    getSleepHours("Tuesday") +
    getSleepHours("Wednesday") +
    getSleepHours("Thursday") +
    getSleepHours("Friday") +
    getSleepHours("Saturday") +
    getSleepHours("Sunday");
  
  const getIdealSleepHours = (hours) => {
    return hours * 7;
  };
  
  const calculateSleepDebt = () => {
    let actualSleepHours = getActualSleepHours();
    let idealSleepHours = getIdealSleepHours(8);
  
    console.log("Amount slept this week: " + actualSleepHours);
    console.log("Ideal amount of sleep for the week: " + idealSleepHours);
  
    if (actualSleepHours === idealSleepHours) {
      console.log("You got the perfect amount of sleep!");
    } else if (actualSleepHours > idealSleepHours) {
      console.log(
        "You got more sleep than needed. You slept " +
          (actualSleepHours - idealSleepHours) +
          " more hours than your ideal amount."
      );
    } else {
      console.log(
        "You should get some more rest. You slept " +
          (idealSleepHours - actualSleepHours) +
          " hours less than your ideal amount."
      );
    }
  };
  
  calculateSleepDebt();
