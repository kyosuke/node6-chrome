FROM node:6

# Install Chrome
RUN curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - 
RUN sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' 
RUN apt-get update && apt-get install -y google-chrome-stable
RUN rm /etc/apt/sources.list.d/google-chrome.list

ENV CHROME_BIN /usr/bin/google-chrome

# Install aws-cli
RUN apt-get update && apt-get install -y awscli
