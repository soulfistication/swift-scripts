# swift-scripts

Swift scripts is a collection of small scripts or projects that I use for personal purposes or that I used for learning a specific Swift feature.

* Fun with Flags:  I am very used to NSString and the way to handle Strings in Objective-C. However there is a fundamental change that happened since Swift was created which is to account for Unicode code points. This renders  previous concepts and mental frameworks that we had about characters obsolete. I tried experimenting with these new concepts and also the new Substring in Swift 4.

* Hipster Architecture:  Prints out a random hipster architecture name on your console. The idea came out to be when a coworker suggested the following simple code to generate random architecture names in Swift:

```swift
let buzzWords = [
  "Model", "View", "Controller", "Entity", "Router", "Clean", "Reactive", 
  "Presenter", "Interactor", "Megatron", "Coordinator", "Flow", "Manager"
]
let architecture = buzzWords.shuffled().takeRandom()
let acronym = architecture.makeAcronym()
```

I tried to code the missing parts that were needed to run that kind of code and then it evolved to being a standalone script.

* Save Chrome tabs to a text file:  I have had the following problem since at least 10 years:  Don't you wish you were able to take your 10 000 Chrome tabs and automatically make a text file with all the URLs in it?

This script and the companion javscript Chrome extension are the first step towards that solution. I would like to have a more elegant solution to the problem but since I'm not a very skilled javascript developer this is what I came out with.

0. Download this repo as a zip and uncompress it. You will find a folder called tabs-chrome-extension (you will need it later).

1. Load the extension into Chrome: Click on the 3 dots -> More tools -> Extensions

2. Enable developer mode which will enable to load unpacked extensions.

3. Click on Load unpacked extension and select the folder tabs-chrome-extension that you previously unzipped. The new extension called tabSerialize should appear and be enabled.

4. Close the Chrome extension tab and you will see a purple button appeared on the right side of your Chrome URL bar.

5. Click the purple button and you will see a popup that says: "Save all your tabs! Finally!".

6. Right click inside the popup and click on Inspect.

7. A new Windows will open with the Developer Tools. At the top there is a bar that says Elements, Console, Sources, Network, Performance, etc.

8. Click on Console and then it will appear a small triangle and the word Array and a number to it's right side.

9. Click on the triangle.

10. Select all the text. The amount of text depends on how many tabs you had open. Select from the bottom (last url including quotes) to the first url excluding the number zero but including the quotes.

11. Copy that text to a file called input.txt in your Desktop Folder.

12. Open Terminal.app

13. Go to the 3 Save Chrome Tabs to a text file folder (uncompressed previously).

14. Type: ./process-tabs.swift

15. The script will generate an output.txt file in your Desktop with all your tabs.

This process is worthwhile if you have more than 20 tabs open (like I do) because the alternative is to select each url manually from the chrome url bar to a text editor which is I think what most people have been doing. 

Then you can mail the file or it's contents or do whatever you want.
