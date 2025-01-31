# Psychiatry-API

## Major libraries/frameworks used

- **express** - A web framework for Node.js. It is widely used for building web and API servers due to its simplicity and flexibility.

- **mysql2** - MySQL client for Node.js. It provides an easy-to-use API for interacting with MySQL databases.

- **cors** - Middleware to enable Cross-Origin Resource Sharing (CORS). It allows your server to handle requests from different origins, which is essential for frontend-backend integration, especially when they are hosted on different domains or ports.

- **bcryptjs** - Used for hashing passwords. It is a JavaScript library for bcrypt, allowing you to securely store user passwords.

- **express-validator** - This offers handy validations and sanitizations of incoming request data. It helps ensure the data integrity and security of user inputs.

- **multer** - Middleware for handling multipart/form-data, which is primarily used for uploading files. It makes it easy to handle file uploads within your express applications.

## Database

- [Dump and DB Schema](/database/DumpPsychiatrists.sql)

## API

- [Postman Collection JSON](postman_collection.json)
- [Postman Documentation](https://documenter.getpostman.com/view/35035389/2sA3QngZLb)
- [Postman Collection](https://www.postman.com/mohit-289/workspace/psychiatry-api/request/35035389-09ecad07-83b9-4341-a818-9323b0625727)

## API Endpoints

- **POST /api/patients/register**
  - Description - register a new patient.
  - Body
    ```json
    {
      "name": "string",
      "address": "string",
      "email": "string",
      "phone_number": "string",
      "password": "string",
      "psychiatrist_id": "number",
      "photo": "file_object"
    }
    ```
- **POST /api/hospitals/psychiatrists**
  - Description - get the count of patients, psychiatrists in a hospital, along with the details of those psychiatrists.
  - Body
    ```json
    {
      "hospital_id": "number"
    }
    ```
