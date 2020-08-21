FROM ruby:2.5

# set working dir
WORKDIR /theme

# Install Node Version Manager (nvm)
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs

# install scss-lint gem
RUN gem install scss-lint

# install Stencil and Grunt
RUN npm -g config set user root
RUN npm install -g @bigcommerce/stencil-cli
RUN npm install -g grunt-cli

# publish cli default port
EXPOSE 3000
