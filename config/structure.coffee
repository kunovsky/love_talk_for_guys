# Read more about app structure at http://docs.appgyver.com

module.exports =

  # See styling options for tabs and other native components in app/common/native-styles/ios.css or app/common/native-styles/android.css
  tabs: [
    {
      title: "Home"
      id: "index"
      location: "welcome#index"
    }
    {
      title: "Additional Apps"
      id: "resources"
      location: "resources#index"
    }
    {
      title: "Our Blog"
      id: "blog"
      location: "http://www.gottmanblog.com/"
    }
  ]

  preloads: [
    {
      id: "begin-questions"
      location: "questions#index"
    }
    {
      id: "love-maps"
      location: "resources#loveMaps"
    }
    {
      id: "open-ended-questions"
      location: "resources#openEndedQuestions"
    }
    {
      id: "give-appreciation"
      location: "resources#giveAppreciation"
    }
    {
      id: "fun-and-play"
      location: "resources#funAndPlay"
    }
    {
      id: "sex-questions-to-ask-men"
      location: "resources#sexQuestionsToAskMen"
    }
    {
      id: "sex-questions-to-ask-women"
      location: "resources#sexQuestionsToAskWomen"
    }
    {
      id: "expressing-needs"
      location: "resources#expressingNeeds"
    }
    {
      id: "affection-and-lovemaking"
      location: "resources#affectionAndLoveMaking"
    }
    {
      id: "i-feel"
      location: "resources#iFeel"
    }
    {
      id: "your-childs-love-maps"
      location: "resources#yourChildsLoveMaps"
    }
  ]

  # drawers:
  #   left:
  #     id: "leftDrawer"
  #     location: "example#drawer"
  #     showOnAppLoad: false
  #   options:
  #     animation: "swingingDoor"
  
  # initialView:
  #   id: "initialView"
  #   location: "example#initial-view"
#