===

# Hello Cooking!
 
## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
1. [Models](#Models)
1. [Networking](#Networking)

## Overview
### Description
Many young people with a low budget have limited knowledge of how to cook for themselves. They either cook similar meals every day or get grab-and-go meals, which are considered unhealthy. 
We want to develop a mobile app that will provide its users with functionalities to learn how to cook and track their progress. The app will give recipe recommendations based on user's present ingredients, dietary restrictions, time commitment and other personal preferences. 
Our target audience is college students who want to learn how to cook healthy meals for themselves.

### App Evaluation
- **Category:** Cooking / Social Media
- **Mobile:** This app would be primarily developed for mobile but would perhaps be just as viable on a computer, such as tinder or other similar apps. Functionality wouldn't be limited to mobile devices, however mobile version could potentially have more features.
- **Story:** The app generates recipes based on user's dietary restrictions, present ingredients, and time commitment. User can earn points by cooking a recommended meal and track their own progress over time. User can like other people's posts and comment on them.
- **Market:** Any individual could choose to use this app; however, we focus on college students who are 17-22 years old and do not use their universities' meal plans.
- **Habit:** This app could be used whenever user wants to cook for themselves. Typically, user will open the app at least once per day to get learn new recipes.
- **Scope:** First, we would start with generating recipe recommendations for NYU students. Users would give kudos to each other for learning new recipes. This could evolve into a gamified social media application where users can achieve different culinary levels, send messages, create groups, and organize cooking events in their neighborhood. 

## Product Spec
### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can register a new account.
* User can specify dietary restrictions and other information while creating an account.
* User can login / logout.
* User can stay logged in across restarts.
* User can input new ingredients to the list.
* The system will recommend relevant recipes based on user's current ingredients, dietary restrictions, and time commitment.

**Optional Nice-to-have Stories**

* User can create a post with photo and caption it
* User can comment on other users' posts
* User can like other users' posts
* User can mark what kind of recipes they made and get "points" for it
* User has a level (XP) based on the number of points they have
* User can track their progress based on the points they accumulated over time

### 2. Screen Archetypes

* Login Screen
   * User can login
   * User can stay logged in across restarts
* Registration Screen
   * User can register a new account.
* Recipe Section Result Screen
   * User can view recipes of a certain dietary restriction
* Recipe Detail Screen 
   * User can see more information about a certain recipe (list of ingredients, step by step process of cooking a meal, photo of the final meal)
* Recipe Feed 
   * User can see different recipes
   * User can filter the recipes based on their dietary restrictions, courses.
* Recipe Search Result Screen
   * User can view the list of recipes that were generated after they clicked the Search button.
* Recipe Generate Result Screen
   * User can view the list of recipes that were generated after they clicked the Generate by Ingredients button.
* Profile Screen
   * Allows user to upload a photo and fill in "bio" information that is interesting to them and others
   * User can select their dietary restrictions, nutrition goals, time commitment, current ingredients.
   * User can track their progress based on the points they accumulated over time.
* Fridge List Screen
   * User can edit and save the list of ingredients they possess.

* Social Media Feed (Optional)
   * User can see other users' posts
   * User can comment on other users' posts
   * User can like other users' posts
* Creation Screen
   * User can create a post with the photo of the meal and caption it.


### 3. Navigation

**Tab Navigation** (Tab to Screen)
* Recipe Feed
* Social Media Feed
* Fridge List
* Profile


**Flow Navigation** (Screen to Screen)
* Login Screen with two choices --> Sign in or Register
* Login Screen -> Register -> Recipe Feed
* or
* Login Screen -> Recipe Feed
* Segway into Recipe Section Screen ( A feed of all of your interesting recipes grouped by courses)
* Segway into Recipe Feed if you choose a particular course on Recipe Section (breakfast / lunch / dinner / dessert, etc.)
* Segway to Recipe Detail Screen if you choose one of buttons on Recipe Feed

* Recipe Feed -> Recipe Detail Result (you choose an arbitrary recipe)
* Recipe Feed -> Recipe Search Result (you search for a recipe)
* Fridge List -> Save Button
* Recipe Feed -> Recipe Generate Result
* Recipe Feed -> Recipe Section
* Social Media Feed -> Creation Screen


### 4. Models

#### User
| Property             | Type   | Description                                                             |
|----------------------|--------|-------------------------------------------------------------------------|
| user_first_name      | string | User’s first name.                                                      |
| user_last_name       | string | User’s last name.                                                       |
| username             | string | A username that the user will use to log in.                            |
| user_password        | string | Password to access user’s account.                                      |
| userID               | int    | Unique id for every user.                                               |
| user_phone_number    | string | User’s phone number.                                                    |
| user_email           | string | User’s email address.                                                   |
| isLoggedIn           | bool   | Tells whether a user is currently logged in or logged out.              |
| user_profile_picture | file   | User’s profile picture which is uploaded from the user’s photo gallery  |
| user_bio_info        | string | User’s short self-description. Max 100 characters long.                 |
| user_xp              | int    | User’s number of points that they accumulate for unlocking new recipes. |


#### Recipe
| Property                | Type       | Description                                                                                                                                                                      |
|-------------------------|------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| recipe_image            | file       | The recipe’s image                                                                                                                                                               |
| recipe_title            | string     | The recipe’s name                                                                                                                                                                |
| recipe_course           | string     | Tells which type of course the recipe belongs to (breakfast/lunch/dinner/appetizer/salad/dessert)                                                                                |
| recipe_time             | int        | The time needed to cook the meal from the recipe (measured in minutes)                                                                                                           |
| recipe_diet_dict        | dictionary | The dictionary contains the names of the dietary restrictions that are satisfied by the recipe (kosher/halal/vegetarian/vegan/low carb/dairy-free/keto/gluten-free/lactose free) |
| recipe_ingredients_dict | dictionary | The dictionary contains the recipe’s ingredients                                                                                                                                 |
| recipe_directions       | string     | The recipe step by step description                                                                                                                                              |

#### Fridge_List
| Property                | Type       | Description                                                                                          |
|-------------------------|------------|------------------------------------------------------------------------------------------------------|
| firdge_list_id          | int        | Unique id to access a certain fridge list.                                                           |
| fridge_ingredients_dict | dictionary | The dictionary contains ingredients and their corresponding quantities. Ex. {“egg”:10, “potato”: 15} |


#### Post
| Property            | Type            | Description                                |
|---------------------|-----------------|--------------------------------------------|
| postID              | int             | Post’s unique id                           |
| post_image          | file            | Post’s image                               |
| post_author         | pointer to User | Pointer to the user who published the post |
| post_caption        | string          | Post’s caption                             |
| post_created_at     | dateTime        | Date and time when the post was created.   |
| post_likes_count    | int             | Number of post’s likes                     |
| post_comments_count | int             | Number of post’s comments                  |


#### Like
| Property    | Type                | Description                              |
|-------------|---------------------|------------------------------------------|
| likeID      | int                 | Like’s unique id                         |
| isLikeOn    | bool                | Tells whether the like is enabled or not |
| like_author | pointer to the User | Pointer to the user who gave the like.   |


#### Comment 
| Property          | Type                | Description                                 |
|-------------------|---------------------|---------------------------------------------|
| commentID         | int                 | Comment’s unique id                         |
| comment_text      | string              | Comment’s content                           |
| comment_author    | pointer to the User | Pointer to the user who wrote the comment.  |
| comment_createdAt | dateTime            | Date and time when the comment was created. |



### 5. Networking
* Login Screen
  * (Read/GET) Query logged in user object (if already logged in)
  * (Read/GET) Check if user already exists in database
* Registration Screen
  * (Create/POST) Create a new user that information will be associated with
* Recipe Section Result Screen
  * (Read/GET) Query recipes of a specific section of food according to a diety retsriction
* Recipe Detail Screen 
  * (Read/GET) Query title, picture, ingredients, and steps about a specific recipe
* Recipe Feed 
  * (Read/GET) Query different section thumbnails and text about different recipes
* Recipe Search Result Screen
  * (Read/GET) Search for all recipes that has given search phrase in title of meal
* Recipe Generate Result Screen
  * (Read/GET) Query different recipes based on list of ingredients from fridge list
* Profile Screen
  * (Read/GET) Query information about logged in user object
  * (Read/GET) Query information about user XP level and points
  * (Update/PUT) Update user profile image
  * (Update/PUT) Update user bio
    let query = PFQuery(className:"User")
query.getObjectInBackground(withId: "xWMyZEGZ") { (User: PFObject?, error: Error?) in
    if let error = error {
        print(error.localizedDescription)
    } else if let User = User {
        User["bio"] = cell.bioLabel.text
        User.saveInBackground()
    }
}
  * (Update/PUT) Update user dietary restrictions, nutrition goals, time commitment
    let query = PFQuery(className:"User")
query.getObjectInBackground(withId: "xWMyZEGZ") { (User: PFObject?, error: Error?) in
    if let error = error {
        print(error.localizedDescription)
    } else if let User = User {
        User["dietRestrict"] = cell.dietaryRestrictions.text
        User["nutritionGoal"] = cell.nutritionGoal.text
        User["timeCommitement"] = cell.timeCommit.text
        User.saveInBackground()
    }
}
* Fridge List Screen
  * (Read/GET) Query list of ingredient and quantity user has
  * (Update/PUT) User can add a new ingredient and/or change the quantity
      let query = PFQuery(className:"User")
query.getObjectInBackground(withId: "xWMyZEGZ") { (User: PFObject?, error: Error?) in
    if let error = error {
        print(error.localizedDescription)
    } else if let User = User {
        User["ingredients"].append([cell.newIngredient.text, cell.quantity.text])
        User.saveInBackground()
    }
}
* Social Media Feed (Optional)
  * (Read/GET) Query all posts by all users
  * (Create/POST) Create a new like on a post
  * (Delete) Delete existing like on post
  * (Create/POST) Create a new comment on a post
  * (Delete) Delete existing comment 
* Creation Screen
  * (Create/POST) Create a new post object with caption



## Wireframes
<img src="https://i.imgur.com/2vFN8hC.gif" width=400><br>

