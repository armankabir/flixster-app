# Flix

Flix is an app that allows users to browse movies from the [The Movie Database API](http://docs.themoviedb.apiary.io/#).

📝 `NOTE - PASTE PART 2 SNIPPET HERE:` Paste the README template for part 2 of this assignment here at the top. This will show a history of your development process, which users stories you completed and how your app looked and functioned at each step.

---

## Flix Part 1

### User Stories

#### REQUIRED (10pts)
- [X] (2pts) User sees an app icon on the home screen and a styled launch screen.
- [X] (5pts) User can view and scroll through a list of movies now playing in theaters.
- [ ] (3pts) User can view the movie poster image for each movie.

#### BONUS
- [ ] (2pt) User can view the app on various device sizes and orientations.
- [ ] (1pt) Run your app on a real device.

### App Walkthrough GIF
<img src="https://user-images.githubusercontent.com/47779642/97066228-b6657900-1581-11eb-9b6a-a90aa5f5119e.gif" width=250><br>

### Notes
Unforunately, I had trouble loading the poster images from the URL. I installed the installed cocoapods, added AlamofireImage as a pod, was able to import 
AlamofireImage into my project, and using UIImgView.af.setImage(url: imgURL!), however the poster would not load. I also printed the URL of each image to the console to make
sure there was not an error when parsing the baseURL with the imageURL. When checking the URL printed on a web browser, the correct movie poster would display.
I am unsure what the issue is, and will be addressing this issue with one of the tech gurus. <br><br>
Code Snippet for changing the poster image: <br>
<img src="https://user-images.githubusercontent.com/47779642/97066217-a188e580-1581-11eb-9a92-d166f4c6f0af.png"><br>
