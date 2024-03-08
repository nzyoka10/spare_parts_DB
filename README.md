# Toyota Car Spare Parts Database

This repository contains SQL scripts for creating and populating a normalized database schema for managing Toyota car spare parts, along with sample data and example queries.

## Overview

The database schema is designed to efficiently store information about Toyota car models, their associated spare parts, and quantities required. It includes three main tables:

1. **CarModels**: Stores information about different Toyota car models including their model name, year, and engine type.
2. **Parts**: Stores information about spare parts such as part name, description, and price.
3. **CarParts**: Associative table linking car models to the parts they require along with the quantity needed.

## Usage

1. **Clone the Repository**: Clone this repository to your local machine using the following command:

    ```bash
    git clone https://github.com/your-username/toyota-car-spare-parts-db.git
    ```

2. **Execute SQL Scripts**: Use a database management tool (e.g., MySQL Workbench, pgAdmin, SQLiteStudio) to execute the SQL scripts provided in the `sql` directory in the following order:
    - `create_schema.sql`: Creates the database schema.
    - `insert_data.sql`: Inserts sample data into the tables.
    - `example_queries.sql`: Contains example queries for retrieving information from the database.

## Example Query

To retrieve the parts needed for a specific Toyota car model (e.g., Camry), execute the following query:

```sql
SELECT CarModels.ModelName, Parts.PartName, Parts.Description, CarParts.Quantity
FROM CarModels
JOIN CarParts ON CarModels.ModelID = CarParts.CarModelID
JOIN Parts ON CarParts.PartID = Parts.PartID
WHERE CarModels.ModelName = 'Camry';
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
