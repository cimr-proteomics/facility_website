# Contributions  

### Audience  
It's anticipated that most contributions to the main repository will come from whomever is in charge of this project after the principal developer's (github.com/tempeparsons) fixed-term contract ended. It is also possible that students and post-docs at CIMR with an interest in programming and/or web-development may want to do a pull request for learning material, or may even want to contribute to one of the smaller tasks outlines below. 

Finally, an external contributor with no connection to CIMR proteomics may have come across this and want to use it as a template with which to set up, and improve, a similar webapp for their own purposes. This type of contributor might be a manager of or bioinformatician in any scientific service facility, who wanted to implement a bespoke (and free) simple Laboratory Integrated Management System with corresponding website.

Before contributing to this project, it is recommended that you consult the README.md file to install and run the app locally, and investigate the accompanying facility_website_testing_protocol.docx file. This will give you a grounding in the scope and purpose of this proteomics facility webapp. 

### Contribution workflow  
If you are completely new to web-development or collaborative programming, and are wanting to use this project as learning material, first make sure you have your own GitHub account, then follow the first two steps below.  

1) Fork and rename the repository, following the example provided at: https://github.com/octocat/Spoon-Knife  
2) Navigate to wherever you want the repository on your local machine and clone it as follows:  

```
git clone https://github.com/YOUR-USERNAME/facility_website  
```

3) For those interested in contributing to this webapp, continue following the Spoon-Knife example instructions at  
https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo#configuring-git-to-sync-your-fork-with-the-upstream-repository  
to create a new branch and commit your changes.  

### Specific tasks 

There will a wide range of additions and improvements to be made according to the contributor and their needs. Assuming this app is to be used for the purposes for which is was originally written, the following tasks (listed from most to least ambitious), would make for useful contributions: 

1) From Facility Home > Query DB > <em>any table viewer page </em>, make buttons on table viewer page that enabling sorting by column(s)-of-interest (current default is first col, A-Z).  
2) optimise page response layouts for different screen sizes. This is currently <em>somewhat</em> enabled, but could be better.  
3) A separate functions file, that holds all the functions currently near the top of routes.py, needs to be created and imported into routes.py. 
4) If the request form at User Home > Experiment Request  is reloaded e.g. due to input error before data is sent to the server, the contents of the sample-benchwork tabular section of form is, annoyingly, not reloaded. 
5) The current add-delete row function in the request form could be simplified with the use of javascript. 
6) Each row for bench and instrument methods in Facility Home > Add Methods would benefit from a delete button.  
7) Selections are passed over multiple pages with over-reliance on the RESTful API method the JSON-JQuery-AJAX methods were unknown to the main author at the time. Several split pages e.g. facility_stats_1, facility_stats_2, could be aggregated using these, or similar, methods.  
8) The contents of <style></style> sections in html pages could be incorporated into a CSS style sheet.  
9) In anticipation of expanding the web app, Acquisition and Instrument tables were created but have not yet been incorporated into the app. This needs to be done.  

### Development guidelines  

With the exception of tasks requiring JQuery and/or AJAX, please keep to the languages outlined in README.md - and only use JQuery in conjunction with e.g. AJAX calls, otherwise stick to javascript for consistency.  

For consistency, name new template pages descriptively but concisely, and use the same name for the route. 

It is very strongly recommended to run this app locally and go through the tutorial before embarking on any contributions.  

Please write clear commit messages explaining the purpose of your changes to the functioning of the webapp in its intended context, or describe the new context for which you have written the addition. 


