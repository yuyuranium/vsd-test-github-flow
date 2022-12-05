# GitHub Flow Tutorial for VSD 2022

## Why GitHub flow?

![](https://i.imgur.com/5nhfuV9.png)

GitHub flow is a lightweight, branch-based workflow, which is popular for numerous collaborators working on a single repository.

See the reference [here](https://docs.github.com/en/get-started/quickstart/github-flow).

## Key points

1. Files in the master (or main) branch are what we have consensus about and will finally be what we are going to submit as final project delivery.
2. Never edit the master branch directly.
3. Create a branch, make some changes on it and need not worry about file pollution.
4. After finishing editing, create a **Pull Request** to ask other collaberators review your code.
5. Until the reviewer approve your code, then it can be merged into master.

## Following the GitHub flow

Practice [here](https://github.com/yuyuranium/vsd-test-github-flow)

1. **Create a branch**

   Whenever we want to *add or modify something*, we should first create a branch.

   - Make sure we have the latest update of `main`

     ```bash
     git checkout main
     git pull origin main
     ```
   - Create and checkout a new branch from `main`

     ```bash
     # On branch main
     git checkout -b <the-branch-name>
     ```

   - `checkout` means we want to checkout another branch

   - The `-b` flags means that we also want to create a new branch with the name `<the-branch-name>`
   
    - **How to name the branch**
      
      Let's follow the format

     ```
     <branch-type>/<branch-name>
     ```

     - `<branch-type>` can be one of the following:

       - `wip`: work in progress, meaning that the work is in progress, and I am aware *it will not finish soon*.
       - `bug`: the bug which needs to be fixed as soon as possible.
       - `feat`: feature, meaning that some features are added to our work.
       
     - `<branch-name>` should simply summarize what we are going to do.

       For example, if you are working on the top module, you could name the branch like

       ```
       wip/add-top-module
       ```
       
       Or say, if you are fixing AXI bugs, you could name the branch like
       
       ```
       bug/fix-axi-bugs
       ```

   - After that, you should now on your own branch. (Use `git status` to check that)
   
2. **Make changes**

   Once we're on our own branch, we may add and commit whatever we've added or altered as usual.

   ```bash
   git add .
   git commit -m "Commit message"
   ```
   
   Please write meaningful commit messages. :+1:

3. **Push changes to GitHub**

   We push our commits to GitHub so that we can see each other's work.

   ```shell
   git push origin <the-branch-name>
   ```

   - `origin` simply means the remote repo on **GitHub**
   - Make sure that we pushed to the branch with the same name, i.e. `<the-branch-name>`, as that we created on our local repo.
   - **Never push to `main` directly**.

   Continue to make, commit, and push changes to your branch until you are ready to ask for feedback (i.e., Create a *pull request*).

4. **Create a *pull request (PR)***

   - **Pull request** is to ask other collaborators checkout our work, give us some feedbacks and finally include our work into `main`.

   - Once we pushed our commits to GitHub, we can see the button like this

     ![](https://imgur.com/64e3ZVg.png)

   - Press **Compare & pull request**.

     ![](https://imgur.com/ofzZDBi.png)

   - Here we can simply summarize what we have done by leaving a comment.

   - Make sure to **request all the teammates to be the reviewers** so that we can review each other's work.

   - After that, press **Create pull request**.

     ![](https://imgur.com/aZrbsiJ.png)

   - Then the **pull request** would look like the figure above.

   - If we are reviewers (we should receive an email from GitHub asking us to review the PR), click **Files changed** to see what contents were changed in this PR.

     ![](https://imgur.com/2gYT3Jd.png)

   - We can even add comment to a single line of code by clicking blue `+` button beside the line number.

     ![](https://imgur.com/1YfDrXm.png)
     
   - We can think of GitHub as a **social media** platform where we can collaborate together, leave comments, ask for help, and communicate with one another.

5. **Merge your *pull request***

   - **We should wait until at least 2 reviewers approve our PR. (i.e., got 2 approvals)**

   - We can merge it by ourselves or the *second reviewer* can directly approve and help the author merge the PR.

     ![](https://imgur.com/NKe9JUi.png)

6. **Delete your branch**

   After the branch is merged into `main`, our work have been successfully included in the `main` branch. We can now safely delete the branch by clicking **Delete branch**, which indicates that the work on the branch is complete and prevents you or others from accidentally reusing old branches.

   ![](https://imgur.com/j36nn6O.png)

   - We should not use the merged branch again, unless we just want to do a hot-fix (small changes that are in a hurry).
   - If we continue to work on other things (like adding another module, fixing some bugs), **create a new branch** instead.
   
7. **Follow up the main branch**

   When someone's PR is merged into main, we could follow up the update by

   ```shell
   git checkout main     # Go back to the main branch
   git pull origin main  # Pull the latest commits on the main branch of the remote repo
   ```
