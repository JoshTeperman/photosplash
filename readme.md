# PhotoSplasher
a webapp to search and filter unsplash images using the unsplash API and Ruby backend

Controller: controller.rb
View: photosplasher.erb
Model: model.rb
---
Demo apps are limited to 50 requests per hour while in development mode.

Here's what needs to be done in order to gain access to production-level rate limits (5,000 requests/hour). Before applying, review the guidelines in full to ensure your application isn't rejected.

Checklist
Hotlink photos
Photos must be hotlinked to the original image URL on Unsplash
Trigger downloads
When a user in your application uses a photo, it triggers an event to the download endpoint
Your app does not use the Unsplash logo and is not named similarly to Unsplash
Your app must look visually dinstinct from Unsplash and not use ‘Unsplash’ in the name (ex: Unsplasher)
The application description and name included here are accurate
We should be able to know what you're building just by reading the name and description of your application
Attribute photographer and Unsplash
(Add screenshots below)
Photographer’s full name and Unsplash are properly attributed and linked (ex: Photo by Annie Spratt on Unsplash)


Unsplash API Usage Guidlines: https://help.unsplash.com/api-guidelines/unsplash-api-guidelines
