chrome.windows.getAll( { populate: true }, getAllOpenWindows);

function getAllOpenWindows(winData) {
  var tabs = [];

  for (var i in winData) {
    if (winData[i].focused === true) {
	  var winTabs = winData[i].tabs;
	  var totTabs = winTabs.length;
      for (var j=0; j<totTabs;j++) {
	    tabs.push(winTabs[j].url);
	  }
    }
  }

  const tabDivs = document.getElementById("tabDiv");
  tabDivs.innerHTML = tabs;
  console.log(tabs);
}
