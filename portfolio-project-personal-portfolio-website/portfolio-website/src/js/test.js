function timeXP(month, year){
    let monthStart = month, yearStart = year;
    
    const currentTime = new Date();
    let monthNow = currentTime.getMonth()+2, yearNow = currentTime.getFullYear();

    if (monthNow<monthStart){
        monthNow += 12;
        --yearNow;
    }

    const monthXP = monthNow-monthStart;
    const yearXP = yearNow-yearStart;

    return [monthXP, yearXP];
}

console.log(timeXP(9, 2021));