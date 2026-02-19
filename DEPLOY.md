# Deploying this site on GitHub Pages

## 1. Create a GitHub repository

- Go to [github.com/new](https://github.com/new).
- **Repository name** (choose one):
  - **`<your-username>.github.io`** → site will be at `https://<your-username>.github.io`
  - **Any other name** (e.g. `academic-website`) → site will be at `https://<your-username>.github.io/academic-website`
- Set visibility to **Public**. Do **not** add a README, .gitignore, or license (you already have content).
- Click **Create repository**.

## 2. Set your site URL in `_config.yml`

Edit `_config.yml` and set:

- **If repo is `username.github.io`:**
  - `url: https://your-username.github.io`
  - `baseurl: ""`
  - `repository: "your-username/your-username.github.io"`

- **If repo has another name (e.g. `academic-website`):**
  - `url: https://your-username.github.io`
  - `baseurl: "/academic-website"`
  - `repository: "your-username/academic-website"`

Replace `your-username` with your GitHub username.

## 3. Push your code to GitHub

In a terminal, from your project folder (`d:\academicpages.github.io`):

```bash
# If you haven't added a remote yet (replace with YOUR repo URL):
git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPO-NAME.git

# Or if the repo already has the default "origin", update it:
git remote set-url origin https://github.com/YOUR-USERNAME/YOUR-REPO-NAME.git

# Push (use main if your default branch is main):
git push -u origin master
# or
git push -u origin main
```

## 4. Turn on GitHub Pages

- On GitHub, open your repository.
- Go to **Settings** → **Pages** (left sidebar).
- Under **Build and deployment**:
  - **Source:** Deploy from a branch
  - **Branch:** `master` or `main` (whichever you use) → **/ (root)** → **Save**

GitHub will build the Jekyll site. After a few minutes your site will be live at:

- `https://<your-username>.github.io` (if repo name is `username.github.io`)
- or `https://<your-username>.github.io/<repo-name>` (if you used a different repo name).

## 5. Future updates

After changing content or config:

```bash
git add .
git commit -m "Update site"
git push
```

GitHub Pages will rebuild automatically; changes can take 1–2 minutes to appear.
