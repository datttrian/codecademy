// -----------------------------------------------------------------------------
function isVector(logo, skill){
    let formatA = logo[logo.length-4] + logo[logo.length-3]
        + logo[logo.length-2] + logo[logo.length-1];
    let formatB = logo[logo.length-5] + logo[logo.length-4] + logo[logo.length-3]
    + logo[logo.length-2] + logo[logo.length-1];

    const format = [formatA, formatB], validFormats = ['.svg', '.jpeg', 'png', '.SVG', '.JPEG', '.PNG', '.jpg', '.JPG', '.WEBP', '.webp'];
    let isValid = false;

    for (let i=0; i<format.length; ++i){
        for (let j=0; j<validFormats.length; ++j){
            format[i]===validFormats[j] ? isValid = true : isValid = isValid || false;
        }
    }

    if (isValid){
        return `<img class="noselect skill-icon" src="./src/img/index/skills/${logo}" alt="${skill} logo">`;
    } else {
        return `<i class="skill-icon ${logo}"></i>`;
    }
}

function getTimeXP(month, year){
    let monthStart = month, yearStart = year;
    
    const currentTime = new Date();
    let monthNow = currentTime.getMonth()+2, yearNow = currentTime.getFullYear();

    if (year < 1900){
        return [month, year];
    }

    if (monthNow<monthStart){
        monthNow += 12;
        --yearNow;
    }

    const monthXP = monthNow-monthStart;
    const yearXP = yearNow-yearStart;
    
    return [monthXP, yearXP];
}

function addSkill(skill, logo, start, xp, edu=-1, badge1, badge2, badge3){
    const skillsContainer = document.getElementById('skill-generator');
    const skillLogo = isVector(logo, skill);
    let badgeA, badgeB, badgeC, eduBar;
    badge1 ? badgeA='block' : badgeA='none';
    badge2 ? badgeB='block' : badgeB='none';
    badge3 ? badgeC='block' : badgeC='none';
    edu===-1 ? eduBar='none' : eduBar='block';

    const timeXP = getTimeXP(start[0], start[1]);
    let timeXPTooltip, timeXPMoreThanYear;
    if (timeXP[1]>1){
        if(timeXP[0]>1){
            timeXPTooltip = `Experience:<br>${timeXP[1]} years, ${timeXP[0]} months`;
            timeXPMoreThanYear = 'xp-more-than-year'
        } else if(timeXP[0]===1){
            timeXPTooltip = `Experience:<br>${timeXP[1]} years, ${timeXP[0]} month`;
            timeXPMoreThanYear = 'xp-more-than-year'
        } else if(timeXP[0]===0){
            timeXPTooltip = `Experience: ${timeXP[1]} years`;
        }
    } else if (timeXP[1]==1){
        if(timeXP[0]>1){
            timeXPTooltip = `Experience:<br>${timeXP[1]} year, ${timeXP[0]} months`;
            timeXPMoreThanYear = 'xp-more-than-year'
        } else if(timeXP[0]===1){
            timeXPTooltip = `Experience:<br>${timeXP[1]} year, ${timeXP[0]} month`;
            timeXPMoreThanYear = 'xp-more-than-year'
        } else if(timeXP[0]===0){
            timeXPTooltip = `Experience: ${timeXP[1]} year`;
        }
    } else {
        if(timeXP[0]>1){
            timeXPTooltip = `Experience: ${timeXP[0]} months`;
        } else if(timeXP[0]===1){
            timeXPTooltip = `Experience: ${timeXP[0]} month`;
        }
    }

    skillsContainer.innerHTML += `
        <div class="skill col-span-2">
            <div class="icons">
                ${skillLogo}
                <div class="badges">
                    <a class="codecademy-badge tooltip right" href="${badge1}" target="_blank">
                        <img class="noselect" src="./src/img/index/skills/codecademy-badge.svg" alt="Codecademy Badge" style='display:${badgeA}'>
                        <span class="tooltiptext noselect bottom">Codecademy Certificate</span>
                    </a>

                    <a class="codecademy-badge tooltip right" href="${badge2}" target="_blank">
                        <img class="noselect" src="./src/img/index/skills/codecademy-badge.svg" alt="Codecademy Badge" style='display:${badgeB}'>
                        <span class="tooltiptext noselect bottom">Codecademy Certificate</span>
                    </a>

                    <a class="codecademy-badge tooltip right" href="${badge3}" target="_blank">
                        <img class="noselect" src="./src/img/index/skills/codecademy-badge.svg" alt="Codecademy Badge" style='display:${badgeC}'>
                        <span class="tooltiptext noselect bottom">Codecademy Certificate</span>
                    </a>
                </div>
            </div>

            <h3 class="skill-text">${skill}</h3>

            <div class="experience progress-bar tooltip">
                <span class="tooltiptext noselect ${timeXPMoreThanYear}" >${timeXPTooltip}</span>
                <div class="progress-percent"></div>
                <div class="progress-peg noselect">${xp}%</div>
            </div>

            <div class="education progress-bar tooltip" style="display:${eduBar}">
                <span class="tooltiptext noselect bottom">Codecademy: ${edu}%</span>
                <div class="progress-percent"></div>
                <div class="progress-peg noselect">${edu}%</div>
            </div> 

        </div>
    `;
}

// skill, logo, xp, [month, year], edu (-1 if n/a), badge1, badge2, badge3
addSkill('HTML 5', 'fab fa-html5', [6, 2021], 65, -1, 'https://www.codecademy.com/profiles/itsdanlabrador/certificates/9eb0741e5ebef1f9f58a53bfac67d3a7');

addSkill('CSS 3', 'fab fa-css3-alt', [6, 2021], 55, 53, 'https://www.codecademy.com/profiles/itsdanlabrador/certificates/9a5bb1fc45b4281af1fffec93b0aaf05', 'https://www.codecademy.com/profiles/itsdanlabrador/certificates/3a62023b0054dc793edc0adecd715fd7', 'https://www.codecademy.com/profiles/itsdanlabrador/certificates/0a6884fad1dbf4afe5df084d2ec1e7c3?next=true');

addSkill('Sass', 'fab fa-sass', [1, 0], 20, -1, 'https://www.codecademy.com/profiles/itsdanlabrador/certificates/eb1ffda40f347629dcef6de33d3f9741'); // April 2018

addSkill('JavaScript', 'fab fa-js', [6, 2021], 45, -1, 'https://www.codecademy.com/profiles/itsdanlabrador/certificates/705dcb15de0da4dd9d9fc4f3274b430e', 'https://www.codecademy.com/profiles/itsdanlabrador/certificates/f4276e8c08a3ba174ef0147deb0c3013', 'https://www.codecademy.com/profiles/itsdanlabrador/certificates/512386fdc7f6c934f98b01e6afa8285a');

addSkill('jQuery', 'jquery.svg', [9, 2021], 30, -1, 'https://www.codecademy.com/profiles/itsdanlabrador/certificates/0becf7c1cd2bd715f24331dddd23425a');

addSkill('React', 'fab fa-react', [9, 2021], 40, -1, 'https://www.codecademy.com/profiles/itsdanlabrador/certificates/af00e5032d0a68cc84879983f5d8333b?next=true');

addSkill('Redux', 'redux.svg', [10, 2021], 20, 10);

addSkill('Node.js', 'fab fa-node-js', [7, 2021], 50, 17);

// addSkill('Express.js', [10, 2021], 'fas fa-laptop-code', 10, -1);

// addSkill('SQL', [10, 2021], 'fas fa-laptop-code', 10, -1);

// addSkill('Python 3', 'fab fa-python', [8, 2021], 20, 18);

addSkill('C++', 'c++.svg', [9, 2021], 35, -1, 'https://www.codecademy.com/profiles/itsdanlabrador/certificates/b74a2390dfc4127fa5d43fe147425ad0');

addSkill('Git', 'fab fa-git-alt', [7, 2021], 40, 44);

addSkill('GitHub', 'fab fa-github', [7, 2021], 20, -1, "https://www.codecademy.com/profiles/itsdanlabrador/certificates/358e250fca144526a6b2934ff44fbc01");

addSkill('Photoshop', 'photoshop.svg', [7, 2013], 75, -1);

addSkill('Premiere Pro', 'premiere.svg', [5, 2020], 55, -1);

addSkill('Illustrator', 'illustrator.svg', [6, 2020], 45, -1);

addSkill('WordPress', 'fab fa-wordpress', [2, 2020], 40, -1);

addSkill('Figma', 'fab fa-figma', [9, 2021], 25, -1);







// Progress bar for skill progress bar -----------------------------------------

const progressPeg = document.getElementsByClassName('progress-peg');
const progressPercent = document.getElementsByClassName('progress-percent');

for(let i=0; i<progressPeg.length; ++i){
    let progress = progressPeg[i].textContent;
    progressPeg[i].style.left = `calc(${progress} - .75em)`;
    progressPercent[i].style.width = `${progress}`;
}

// Disable logo icon drag and drop ---------------------------------------------
$('.skill-icon').on('dragstart', function(event) { event.preventDefault(); });