# Simple Calculator API

> API that that returns the answers to simple arithmetic expressions.

### Requests

This api receives Get requests from a react front end .

### Params

The params that are sent to this api through the url are:

- firstInt: string
- operation: string
- secondInt: string

The params that are sent back as json are:

- firstInt: string
- operation: string
- secondInt: string
- result: string

## Built With

- Ruby on Rails

## Live Demo

[Movie API]()


## Getting Started

### Prerequisites

- Ruby 2.7.2
- Rails 5.2.4.5
- Yarn
- PostgreSQL

### Setup

- At the top of this repo click the button labeled "Clone".
- Copy the HTTP URL or SSH.
- In your terminal, type `git clone <copied-value>` replace '<copied-value>' with the HTTP, URL, or SSH that you copied from the last step.
- In the terminal, `cd` to the folder you cloned.

### Install

- Open the file named 'config/database.yml' filer.
- Under 'default: &default' change the values of username: and password: to the username and password of your local postgres server.
- In your terminal, type the following commands in the same order as they are presented here:
`rails db:create`
`rails db:schema:load`
`rails db:migrate`
`rails db:seed`

### Usage

- In your terminal type `rails s`
- In your browser type `localhost:3000`

## Author

👤 **Paul Clue**

- GitHub: [@PaulClue](https://github.com/Paul-Clue)
- LinkedIn: [Paul Clue](https://www.linkedin.com/in/paul-clue/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!


## Show your support

Give a ⭐️ if you like this project!


## 📝 License

This project is [MIT](./LICENSE) licensed.

* ...
