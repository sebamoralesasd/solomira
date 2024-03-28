# Use an official Ruby runtime as a parent image
FROM ruby:3.2.1

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed dependencies specified in Gemfile
# Note: Make sure you have Gemfile and Gemfile.lock in your project directory
RUN bundle install

# Make port 4567 available to the world outside this container
# Sinatra defaults to port 4567 unless specified otherwise
EXPOSE 4567

# Define environment variable
ENV RACK_ENV=production

# Run app.rb when the container launches
CMD ["ruby", "app.rb"]
