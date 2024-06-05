#  iOS Developer Candidate Code Challenge

Congratulations on making it to the next phase of the interview process. We’ve developed this code
challenge to help us evaluate where you are on your iOS developer journey.
We’d like you to spend no more than 3 hours on this. We understand this is a serious time
commitment, and we appreciate your willingness to help ensure you’ll be a great fit with our iOS
development team.
We’d like for you to create a simple application from scratch. At a follow-up interview, we’ll ask you
to show your app to a small group of iOS developers (a code review). You’ll demonstrate the
working app and then walk them through the code. They’ll ask questions about your approach to
solving the coding challenges faced while developing this application.
Good luck!

## The Rules

• We expect you to write all of the code (excluding open-source libraries or auto-generated
code) for this challenge. We’ll know you wrote the code if you can clearly explain it during
the code review.
• We’ll need you to write this app in Swift. Objective-C experience is highly valued, but Swift
language experience is required. React Native and other hybrid solutions are not acceptable.
• Use SwiftUI for the user interface.
• Use any architectures, patterns, or techniques that you feel are appropriate for this task. Play
to your skillset.
• You may use the internet for help just as you normally would to find answers and code
examples.
• You can use any open-source libraries in your project.
• You can ask for help or clarification at any time. Contact the person who sent you this code
challenge and we’ll do our best to respond quickly. But if you don’t hear from us, keep
coding so we have an example of your work to discuss during the review.
• There is a 3-hour time limit.

## The Task

Create an iPhone application that allows a user to search Flickr for images.
Create the UI with a search bar at the top and a grid below it to display thumbnail images.
The user should be able to enter text into the search bar and see a grid of images whose tags match
the search string. The search string can be a single word (such as “porcupine”) or comma-separated
words (such as “forest, bird”).
Fetch the list of images using this API from Flickr:
https://api.flickr.com/services/feeds/photos_public.gne?format=json&nojsoncallback=1&tags=por
cupine
You’ll replace “porcupine” in that URL with the search word(s) typed by the user.
This is a free public feed. No API key is required. You can learn more about this API here: The App
Garden
When you’ve finished, create a public repository for your project and email the link to us. GitHub
will let you create public repositories for free, but any repository we can access is fine.

## Acceptance Criteria

• The search results should come from the API listed above (replace the word “porcupine”
with the one typed by the user).
• The search results should be updated after each keystroke or change to the search string.
• When performing the search, show a progress indicator without blocking the UI.
• Tapping on an image should display an image detail view that contains the following details:
o The image
o Text element that displays the title
o Text element that displays the description
o Text element that displays the author
o Text element that displays a formatted version of the published date
• Add at least one unit test that covers some portion of your code.

## Extra Credit

Once again, there’s little value in spending more than three hours on this project. It’s more
important that you demonstrate the basics well. If you complete the initial acceptance criteria with
time left over, consider some of these optional tasks:
• Accessibility support such as
o VoiceOver support
o Dynamic text support
• Additional unit tests
• UI tests
• Support landscape orientation
• Add a button in the detail view to share the image and metadata
• Animate the image transition from the grid view to the detail view
• Add a text element that displays the width and height of the image to the detail page
o Note: This can be parsed from the description field

## What We’re Looking For
During the code review, we’ll be looking for certain things that might indicate you have the skills
we’re looking for. These things include:
• Excellent communication skills.
• Safe Swift code: Safety In Swift
• Good coding practices. Industry-standard patterns and techniques.
• Well-formatted source code, a clean and consistent style, and proper naming.
• API calls and other routines that never block the main thread.
• Code without retain cycles or other memory leaks.
• Proper error handling.
• An understanding of Apple’s Human Interface Guidelines.

We expect you to fully understand every line of code in the app and be able to explain exactly how it
works and why it’s the best choice if asked.
