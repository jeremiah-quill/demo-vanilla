#!/bin/bash

# Check if a folder name was provided as an argument
if [ $# -eq 0 ]
  then
    echo "No folder name provided"
    exit 1
fi

# Create the new folder
mkdir $1

# Change into the new folder
cd $1

# Run npm init
npm init -y

# Create the index.html file with boilerplate content
echo -e '
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>$1 demo</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@900&family=Merriweather:wght@300&display=swap"
      rel="stylesheet" />
    <link rel="stylesheet" href="./style.css" />
  </head>
  <body>
    <div class="container">
      <h1>Go off and build something cool.</h1>
      <div class="card">
        <p>
          Thanks for using my demo setup script. Drop me a line
          <a href="mailto:jcq5010@gmail.com">@jcq5010@gmail.com</a>. If you have a minute please
          star this repo, or at least check out some of the other cool things I work on!
        </p>
      </div>
    </div>
    <script src="script.js"></script>
  </body>
</html>
' > index.html

# Create the style.css file with boilerplate content
echo "
* {
  box-sizing: border-box;
  margin: 0px;
  padding: 0px;
}
html {
  font-size: 16px;
}
h1 {
  font-family: "Inter", sans-serif;
  margin-bottom: 2rem;
  font-size: 3rem;
  color: white;
}
body {
  margin: 0;
  padding: 0;
  font-family: "Merriweather", serif;
  background: linear-gradient(45deg, #ff5599, #ff5500);
}
.container {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100vh;
}
.card {
  background-color: rgba(255, 255, 255, 0.7);
  border-radius: 4px;
  padding: 1rem;
  max-width: 700px;
  width: 100%;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
" > style.css

# Create the script.js file with boilerplate content
echo "console.log('Hello world from $1!');" > script.js

echo "Successfully created new folder $1 with index.html, style.css, and script.js"