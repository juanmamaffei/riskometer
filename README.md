# Riskometer

Riskometer is a web application that helps estimate the warranty risk level of product categories.

<!--Insert image from public folder:-->

![riskometer](public/riskometer_logo.png)

## Getting Started

To get started with the project, follow these steps:

1. Clone the repository
2. Install dependencies with `bundle install`
3. Set up the database with `./setup.sh`

  Then, you've to create the user and the database in Docker terminal.

	  createuser -U postgres riskometer
    createdb -U postgres -O riskometer riskometer_production
    createdb -U postgres -O riskometer riskometer_test
    createdb -U postgres -O riskometer riskometer_development

4. Start the server with `rackup`

## Usage

Once the server is running, navigate to `http://localhost:9292` to access the application. The main functionality of the application is to estimate the warranty risk level of a product category based on a set of questions. Users can answer the questions to get an estimation of the risk level.

## Technologies

The following technologies are used in this project:

- Roda
- Sequel
- PostgreSQL
- Tailwind CSS
- Hotwire (if necessary)

## Contributing

Contributions to this project are welcome. To contribute, follow these steps:

1. Fork the repository
2. Create a new branch
3. Make your changes and commit them
4. Push to your fork and submit a pull request

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
