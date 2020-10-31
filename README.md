# Flix

Flix is an app that allows users to browse movies from the [The Movie Database API](http://docs.themoviedb.apiary.io/#).

## Flix Part 2

### User Stories
  From the previous week, the assignment was incomplete as I was unable to load images. The reason for this was when loading the image, the base URL I used started with "http://" however, the url must start with "https://"
#### REQUIRED (10pts)
- [x] (5pts) User can tap a cell to see more details about a particular movie.
- [x] (5pts) User can tap a tab bar button to view a grid layout of Movie Posters using a CollectionView.

#### BONUS
- [ ] (2pts) User can tap a poster in the collection view to see a detail screen of that movie.
- [ ] (2pts) In the detail view, when the user taps the poster, a new screen is presented modally where they can view the trailer.

### App Walkthrough GIF
<img src="https://user-images.githubusercontent.com/47779642/97770318-86c9ea00-1b08-11eb-9eba-2b181ac5e6f7.gif" width=250><br>

### Notes
This week, the challenges I faced was in editing the collection view layout. First the images were not displaying properly. It seemed the size of the collection view cell was too small, and the image would not fit in the cell. When attempting to resize the cell from the storyboard, changing the size of the cell itself did not affect the size of the cell when loading the program. To fix this, in the collection view settings, estimate size for the cell must be changed from "Automatic" to none. <br>
<img src="https://user-images.githubusercontent.com/47779642/97770374-0c4d9a00-1b09-11eb-8dcb-7c4a7d7d9025.png"><br>
I also had trouble removing the white space between the collection view cells. The following snippet of code seemed to have no effect on the space between the 
cells: <br> 
<img src="https://user-images.githubusercontent.com/47779642/97770331-a103c800-1b08-11eb-8993-e528be2ef256.png"><br>
With this snippet, the white space is still present when testing the app. I have circled this white space in light blue below: <br>
<img src="https://user-images.githubusercontent.com/47779642/97770567-dd382800-1b0a-11eb-9912-88a81835c03d.png"><br>

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
