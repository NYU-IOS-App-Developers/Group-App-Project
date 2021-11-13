===

# Hello Cooking! CHANGE THE TITLE
 
## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)

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
   * User can select their dietary restrictions, nutrition goals, time commitment, current ingredients.
* Recipe Section Screen
   * User can view recipes of a certain dietary restriction
* Recipe Detail Screen 
   * User can see more information about a certain recipe (list of ingredients, step by step process of cooking a meal, photo of the final meal)
   * User can mark what kind of recipes they made and get "points" for it
* Recipe Feed 
   * User can see different recipes
   * The system will recommend relevant recipes based on user's current ingredients, dietary restrictions, and time commitment.
   * User can see their number of points
   * User can logout
* Profile Screen
   * Allows user to upload a photo and fill in "bio" information that is interesting to them and others
   * User can mark what kind of recipes they made and get "points" for it.
   * User can track their progress based on the points they accumulated over time.
* Settings Screen
   * Lets people change language, and app notification settings.
* Fridge List Screen
   * User can input new ingredients to the list.
   * User can see their number of points and level.
   * User can logout

* Social Media Feed (Optional)
   * User can see other users' posts
   * User can comment on other users' posts
   * User can like other users' posts
   * User can logout
* Creation Screen
   * User can create a post with the photo of the meal and caption it


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

* Recipe Feed -> Recipe Detail Result (you choose an arbirtrary recipe)
* Recipe Feed -> Recipe Search Result (you search for a recipe)
* Fridge List -> Save Button
* Recipe Feed -> Recipe Generate Result
* Recipe Feed -> Recipe Section
* Social Media Feed -> Creation Screen

## Wireframes
<img src="https://i.imgur.com/9CrjH1K.jpg" width=800><br>

### [BONUS] Digital Wireframes & Mockups
<img src="https://i.imgur.com/lYHn37F.jpg" height=200>

### [BONUS] Interactive Prototype
<img src="https://i.imgur.com/AiKfE5g.gif" width=200>
