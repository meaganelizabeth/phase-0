###How does tracking and adding changes make developers' lives easier?

Tracking and adding changes makes developers' lives easier by allowing for the existence of a log of every version of a project. Using this log developers can track a projects growth and, in the event of a bug, revert back to previous iterations of a project.


###What is a commit?

A commit is a collection of changes made to a project that have been tracked by version control systerm. When a developer logs this collection as a single item that later be referenced in a project's history it is known as a commit.


###What are the best practices for commit messages?

Git commit messages should begin with a short, capitalized summary that generally stay under 50 characters. If more detail is necessary, a body of text wrapped to 72 characters may be placed one line under the summary. If there are multiple paragraphs they should also be separated by a line. Bullet points are allowable and may be marked with either an asterisk or a dash.

###What does the HEAD^ argument mean?

The HEAD^ argument refers to the most recent commit on a current branch.


###What are the 3 stages of a git change and how do you move a file from one stage to the other?

The 3 stages of a git change are "working", when chenges are being made to a repository, "stage", when changes to a project are logged and tracked in preparation for a commit, and "commit", when the collection of changes is noted. To stage, type "git add [relevent files]" or simply "git add ." in the terminal. To commit, type "git commit -m "commit message"" or "git commit -v".

###Write a handy cheatsheet of the commands you need to commit your changes?

git add . or git add (relevent files)
git commit -m "message" OR git commit -v


###What is a pull request and how do you create and merge one?

A pull request is a review that occurs before a branch can be merged onto a master branch in GitHub. Branches are first pushed to GitHub from a remote repository. Once the branch appears on the repository page on GitHub, a green "Compare & pull request" link may be selected that will bring the user to a page in which comments about the changes may be made. Then click the green "Compare pull request" button. This creates a linkable pull request page. To merge the pull request, click the "Merge pull request" button that appears in the "Conversation" tab of the pull request page. 


###Why are pull requests preferred when working with teams?
Pull requests are preferred when working in teams so that changes made by multiple individuals to a project can be easily tracked and the integrity of the master repository is kept intact as these changes are made.  