# afraananrodoshi.github.io

Personal site for Afra Anan Rodoshi, MBBS — ERAS 2027 US residency applicant.
Jekyll static site, deployed with GitHub Pages.

## Layout

    _config.yml          site title, url, exclude list
    index.html           the single page; composed from _includes/
    404.html             not-found page
    sitemap.xml
    _includes/           head, navigation, about, education, experience,
                         research, service, contact, footer, tail-scripts
    css/academic.css     vendored Academic theme stylesheet (do not edit)
    css/custom.css       all site-specific styling and overrides
    js/academic.min.js   vendored theme JavaScript
    img/afra.jpg         profile photo
    cv.pdf               the published CV
    push.sh              commit-and-push helper

## Running locally

Needs Ruby 3.x (`brew install ruby`) and the `jekyll` gem:

    export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
    gem install jekyll
    jekyll serve --port 4321

Then open http://127.0.0.1:4321/.

## Common edits

**Replace the profile photo** — overwrite `img/afra.jpg`. A square image of at
least 440x440 works best; it is displayed as a circle. No code change needed.

**Update the CV** — overwrite `cv.pdf`. It is linked from the nav, the About
section, and Contact.

**Change page content** — edit the matching file in `_includes/`. Section ids
(`#about`, `#education`, `#experience`, `#research`, `#service`, `#contact`)
are what the nav links point at, so keep them in sync with
`_includes/navigation.html`.

**Styling** — put changes in `css/custom.css`. `css/academic.css` is vendored
and should stay untouched so it can be replaced wholesale.

## Deploying

GitHub Pages builds this repo on push to `main`. Publishing at
`afraananrodoshi.github.io` requires the repo to be named exactly
`afraananrodoshi.github.io` under the `afraananrodoshi` account.

    ./push.sh "your commit message"
