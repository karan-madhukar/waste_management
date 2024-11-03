# Use the official Elixir image
FROM elixir:1.16

# Set the working directory
WORKDIR /app

# Install hex and rebar
RUN mix local.hex --force && mix local.rebar --force

# Copy the mix.exs and mix.lock files
COPY mix.exs mix.lock ./

# Install dependencies
RUN mix deps.get

# Copy the rest of the application
COPY . .

# Compile the application
RUN mix compile

EXPOSE 4000

# Command to run the application
CMD ["mix", "phx.server"]
