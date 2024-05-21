import db from "../database.js";

export const getPsychiatrists = async (req, res) => {
  const { hospital_id } = req.body;

  try {
    const [hospitalResults] = await db.execute(
      `
            SELECT h.name AS hospital_name, COUNT(p.id) AS total_patients_count, COUNT(DISTINCT ps.id) AS total_psychiatrists_count
            FROM hospitals h
            LEFT JOIN psychiatrists ps ON h.id = ps.hospital_id
            LEFT JOIN patients p ON ps.id = p.psychiatrist_id
            WHERE h.id = ?
            GROUP BY h.id;
        `,
      [hospital_id]
    );

    if (hospitalResults.length === 0) {
      return res.status(404).json({ message: "Hospital not found" });
    }

    const hospitalInfo = hospitalResults[0];

    const [psychiatristResults] = await db.execute(
      `
            SELECT ps.id, ps.name, COUNT(p.id) AS patients_count
            FROM psychiatrists ps
            LEFT JOIN patients p ON ps.id = p.psychiatrist_id
            WHERE ps.hospital_id = ?
            GROUP BY ps.id;
        `,
      [hospital_id]
    );

    res.json({
      hospital_name: hospitalInfo.hospital_name,
      total_psychiatrists_count: hospitalInfo.total_psychiatrists_count,
      total_patients_count: hospitalInfo.total_patients_count,
      psychiatrists: psychiatristResults,
    });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};
