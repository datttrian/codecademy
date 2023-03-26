// Populate dropdown menu with all the available genres
const populateGenreDropdown = (genres) => {
  const select = document.getElementById('genres');

  for (const genre of genres) {
    let option = document.createElement('option');
    option.value = genre.id;
    option.text = genre.name;
    select.appendChild(option);
  }
};

// Returns the current genre selection from the dropdown menu
const getSelectedGenre = () => {
  const selectedGenre = document.getElementById('genres').value;
  return selectedGenre;
};

const getCastValue = () => {
  const castValue = document.getElementById('actors').value;
  return castValue;
};

const getCastChoice = (person) => {
  const castChoice = document.getElementById('actors');
  castChoice.value = person[0].name;
  return person[0].id;
};

// Get random page of result
const getRandomPage = (min = 0, max = 500) => {
  const randomPage = Math.floor(Math.random() * (max - min) + min);
  return randomPage;
};

// Displays the like and dislike buttons on the page
const showBtns = () => {
  const btnDiv = document.getElementById('likeOrDislikeBtns');
  btnDiv.removeAttribute('hidden');
};

const getClassByRate = (vote) => {
  if (vote >= 7.5) {
    return 'green';
  } else if (vote >= 5) {
    return 'orange';
  } else {
    return 'red';
  }
};

// Clear the current movie from the screen
const clearCurrentMovie = () => {
  const moviePosterDiv = document.getElementById('moviePoster');
  const movieTextDiv = document.getElementById('movieText');
  moviePosterDiv.innerHTML = '';
  movieTextDiv.innerHTML = '';
};

// After liking a movie, clears the current movie from the screen, gets another random movie and adds to list of liked movies
const likeMovie = (movieInfo) => {
  clearCurrentMovie();
  searchPerson().then(showRandomMovie);
  addToLikedMovies(movieInfo);
};

// After disliking a movie, clears the current movie from the screen and gets another random movie adds to list of disliked movies
const dislikeMovie = (movieInfo) => {
  clearCurrentMovie();
  searchPerson().then(showRandomMovie);
  addToDislikedMovies(movieInfo);
};

// Add movie to list of liked movies
const addToLikedMovies = (movieInfo) => {
  storeLikedMovie(movieInfo);
  displayLikedMovies();
};

// Add movie to list of disliked movies
const addToDislikedMovies = (movieInfo) => {
  storeDislikedMovie(movieInfo);
  displayDislikedMovies();
};

// Add liked movies to local storage
const storeLikedMovie = (movieInfo) => {
  let myLikedMovies = localStorage.getItem('likedMovies')
    ? loadLikedMovies()
    : [];
  myLikedMovies.push(movieInfo);
  localStorage.setItem('likedMovies', JSON.stringify(myLikedMovies));
};

// Add disliked movies to local storage
const storeDislikedMovie = (movieInfo) => {
  let myDislikedMovies = localStorage.getItem('dislikedMovies')
    ? loadDislikedMovies()
    : [];
  myDislikedMovies.push(movieInfo);
  localStorage.setItem('dislikedMovies', JSON.stringify(myDislikedMovies));
};

// Show liked movies in sideBar
const displayLikedMovies = () => {
  const movieList = document.getElementById('likedMoviesList');
  if (movieList.hasChildNodes()) {
    while (movieList.firstChild) {
      movieList.removeChild(movieList.firstChild);
    }
  }
  let likedMovies = loadLikedMovies();
  likedMovies.forEach((movie) => createLikedMovie(movie));
};

// Show disliked movies in sideBar
const displayDislikedMovies = () => {
  const movieList = document.getElementById('dislikedMoviesList');
  if (movieList.hasChildNodes()) {
    while (movieList.firstChild) {
      movieList.removeChild(movieList.firstChild);
    }
  }
  let dislikedMovies = loadDislikedMovies();
  dislikedMovies.forEach((movie) => createDislikedMovie(movie));
};

// Create HTML for liked movies
const createLikedMovie = (movie) => {
  const movieList = document.getElementById('likedMoviesList');
  const title = document.createElement('li');
  title.classList.add('likedMovie');
  title.setAttribute('id', 'likedMovie');
  title.innerHTML = `<a href=https://www.imdb.com/title/${movie.imdb_id} target=_blank>${movie.title}</a> <i class="fa-solid fa-circle-minus delete-btn"></i>`;
  movieList.appendChild(title);

  const deleteBtn = title.querySelector('.delete-btn');
  deleteBtn.onclick = (e) => {
    deleteMovieFromPage(e);
    deleteFromLocalStorage(title, movie.id);
  };
};

// Create HTML for disliked movies
const createDislikedMovie = (movie) => {
  const movieList = document.getElementById('dislikedMoviesList');
  const title = document.createElement('li');
  title.classList.add('dislikedMovie');
  title.setAttribute('id', 'dislikedMovie');
  title.innerHTML = `<a href=https://www.imdb.com/title/${movie.imdb_id} target=_blank>${movie.title}</a> <i class="fa-solid fa-circle-minus delete-btn"></i>`;
  movieList.appendChild(title);

  const deleteBtn = title.querySelector('.delete-btn');
  deleteBtn.onclick = (e) => {
    deleteMovieFromPage(e);
    deleteFromLocalStorage(title, movie.id);
  };
};

// Remove movie individually from page
const deleteMovieFromPage = (e) => {
  const movieEl = e.currentTarget.parentNode;
  movieEl.remove();
  const deleteBtn = e.currentTarget;
  deleteBtn.removeEventListener('click', deleteMovieFromPage);
};

// Remove movie individually from LS
const deleteFromLocalStorage = (movieTitle, movieId) => {
  if (movieTitle.classList.contains('likedMovie')) {
    const myLikedMovies = loadLikedMovies();
    const updatedLikedMovies = myLikedMovies.filter(
      (movie) => movie.id !== movieId
    );
    localStorage.setItem('likedMovies', JSON.stringify(updatedLikedMovies));
  }
  if (movieTitle.classList.contains('dislikedMovie')) {
    const myDislikedMovies = loadDislikedMovies();
    const updatedDislikedMovies = myDislikedMovies.filter(
      (movie) => movie.id !== movieId
    );
    localStorage.setItem(
      'dislikedMovies',
      JSON.stringify(updatedDislikedMovies)
    );
  }
};

// Clear all movies from page and LS
const clearAllMovies = () => {
  const myLikedMovies = document.querySelectorAll('.likedMovie');
  const myDislikedMovies = document.querySelectorAll('.dislikedMovie');
  myLikedMovies.forEach((movie) => movie.remove());
  myDislikedMovies.forEach((movie) => movie.remove());
  localStorage.removeItem('likedMovies');
  localStorage.removeItem('dislikedMovies');
};

const loadLikedMovies = () => JSON.parse(localStorage.getItem('likedMovies'));

const loadDislikedMovies = () =>
  JSON.parse(localStorage.getItem('dislikedMovies'));

// Create HTML for movie poster
const createMoviePoster = (posterPath) => {
  const moviePosterUrl = `https://image.tmdb.org/t/p/original/${posterPath}`;

  const posterImg = document.createElement('img');
  posterImg.setAttribute('src', moviePosterUrl);
  posterImg.setAttribute('id', 'moviePoster');

  return posterImg;
};

// Create HTML for movie title
const createMovieTitle = (title) => {
  const titleHeader = document.createElement('h1');
  titleHeader.setAttribute('id', 'movieTitle');
  titleHeader.innerHTML = title;

  return titleHeader;
};

// Create HTML for movie overview
const createMovieOverview = (overview) => {
  const overviewParagraph = document.createElement('p');
  overviewParagraph.setAttribute('id', 'movieOverview');
  overviewParagraph.innerHTML = overview;

  return overviewParagraph;
};

const createMovieRating = (movieVote) => {
  const rating = document.createElement('span');
  rating.setAttribute('id', 'movieRating');
  rating.classList.add(`${getClassByRate(movieVote)}`);
  rating.innerHTML = movieVote;

  return rating;
};

const createMovieCast = (cast) => {
  const castInfo = document.createElement('span');
  castInfo.setAttribute('id', 'movieCast');
  castInfo.innerHTML = `Cast: ${cast}`;

  return castInfo;
};

// Returns a random movie from the first page of movies
const getRandomMovie = (movies) => {
  const randomIndex = Math.floor(Math.random() * movies.length);
  const randomMovie = movies[randomIndex];
  return randomMovie;
};

// Uses the DOM to create HTML to display the movie
const displayMovie = (movieInfo, movieCast) => {
  const moviePosterDiv = document.getElementById('moviePoster');
  const movieTextDiv = document.getElementById('movieText');
  const likeBtn = document.getElementById('likeBtn');
  const dislikeBtn = document.getElementById('dislikeBtn');

  // Create HTML content containing movie info
  const moviePoster = createMoviePoster(movieInfo.poster_path);
  const titleHeader = createMovieTitle(movieInfo.title);
  const rating = createMovieRating(movieInfo.vote_average.toFixed(1));
  const cast = createMovieCast(movieCast);
  const overviewText = createMovieOverview(movieInfo.overview);

  // Append title, poster, and overview to page
  moviePosterDiv.appendChild(moviePoster);
  movieTextDiv.appendChild(titleHeader);
  movieTextDiv.appendChild(rating);
  movieTextDiv.appendChild(cast);
  movieTextDiv.appendChild(overviewText);

  showBtns();
  likeBtn.onclick = () => likeMovie(movieInfo);

  dislikeBtn.onclick = () => dislikeMovie(movieInfo);
};

// Show/Hide sidebar
const sideBar = document.getElementById('sideBar');
const starBtn = document.getElementById('starBtn');
const closeBtn = document.getElementById('closeBtn');
const overlay = document.querySelector('.overlay');
const clearAllBtn = document.getElementById('clear');

starBtn.addEventListener('click', () => {
  sideBar.style.transform = 'translateX(0)';
  overlay.classList.add('enabled');
});

closeBtn.addEventListener('click', () => {
  sideBar.style.transform = 'translateX(-100%)';
  overlay.classList.remove('enabled');
});

// Close sideBar when clicking outside of it
document.addEventListener('click', (e) => {
  if (
    e.target.id !== 'sideBar' &&
    e.target.id !== 'closeBtn' &&
    e.target.id !== 'starBtn' &&
    e.target.parentNode.id !== 'starBtn'
  ) {
    sideBar.style.transform = 'translateX(-100%)';
    overlay.classList.remove('enabled');
  }
});

clearAllBtn.addEventListener('click', () => clearAllMovies());
