import bcrypt from "bcryptjs";
import db from "../database.js";

export const createPatient = async (req, res) => {
  const { name, address, email, phone_number, password, psychiatrist_id } =
    req.body;
  const photo = req.file ? req.file.path : null;

  try {
    const hashedPassword = await bcrypt.hash(password, 10);
    const [result] = await db.execute(
      "INSERT INTO patients (name, address, email, phone, password, photo, psychiatrist_id) VALUES (?, ?, ?, ?, ?, ?, ?)",
      [
        name,
        address,
        email,
        phone_number,
        hashedPassword,
        photo,
        psychiatrist_id,
      ]
    );
    res.status(201).json({
      message: "Patient registered successfully",
      patientId: result.insertId,
    });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};
