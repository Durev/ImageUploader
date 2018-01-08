# Image Uploader

This is a simple Rails application made up of 2 pages :
- The home page, in which you can upload any PNG or JPG image.
- The display page, showing a random image from your selection, changing every 7 seconds.

## Getting started

### ImageMagick

To run the app in a local server, you are going to need the [ImageMagick](https://www.imagemagick.org) program.
If you're using some Unix OS, ImageMagick may already be installed on your computer. To find out :
```
$ identify -version
```
If you already have a version of ImageMagick installed, jump to the next step to run the app locally.

If it isn't installed :
- You can use Homebrew on a Mac :
Install it with Homebrew :
```
brew install imagemagick
```
- Otherwise, on any OS, follow this link :
[https://www.imagemagick.org/script/install-source.php]


### Run the app on your computer

First, clone the repo and then install the needed gems:

```
$ bundle install
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

You're ready to go : [Open the app](http://localhost:3000/)
