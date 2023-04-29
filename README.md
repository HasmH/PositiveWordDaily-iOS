# PositiveWordDaily-iOS

## Positive Word of the Day 
Single page app generating a quote of the day in a nice format which can be saved as an image and shared and played with english audio. 

The app called an azure function written in Node js, with the help of free dictionary API that would return something like: 

```json
{
    "word": "recommended",
    "definition": "To bestow commendation on; to represent favourably; to suggest, endorse or encourage as an appropriate choice.",
    "example": "The board recommends Philips, given his ample experience in similar positions.",
    "pronunciation": "/ˌɹɛkəˈmɛndɪd/",
    "type": "verb",
    "audio": "https://api.dictionaryapi.dev/media/pronunciations/en/recommended-us.mp3"
}
```

Current implementation fetches this data from local flask API for development purposes. 

Rationale behind the app was to serve an end user a positive word from a list of pre-generated words using ML - a Naive Bayes Classifier model, and using a free dictionary API to get other elements such as `definiton` and `audio` for the app to display. 

The app is still a work in progress, however has now turned into a SwiftUI/Swift playground.

WIP:
- Share button rendering a screenshot of the top level view controller such that it does not capture the share button itself, and passing this down to `ShareLink` so it previews what the screenshot will look like 
- Dark Mode
- Make production ready by connecting to azure function and call new API keys once rolled i.e. via azure key vault 
- Attempt to publish on app store
