import { body } from "express-validator";

export const validatePatient = [
  body("name").notEmpty().withMessage("Name is required"),
  body("address")
    .isLength({ min: 10 })
    .withMessage("Address should be at least 10 characters"),
  body("email").isEmail().withMessage("Email should be a valid email address"),
  body("phone_number").custom((value) => {
    const phoneRegex = /^[+]{1}(?:[0-9\-\(\)\/\.]\s?){10,}[0-9]{1}$/;
    if (!phoneRegex.test(value)) {
      throw new Error("Phone number is not valid");
    }
    return true;
  }),
  body("password")
    .isLength({ min: 8, max: 29 })
    .matches(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)/)
    .withMessage(
      "Password must contain one upper character, one lower character, and a number"
    ),
];
