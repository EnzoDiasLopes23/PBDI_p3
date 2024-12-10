CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    student_id VARCHAR(25) NOT NULL,
    grade INT,
    mother_edu INT,
    father_edu INT,
);

DO $$
CREATE PROCEDURE AprovadosPaisPhd
    @AprovadosPaisPhd INT OUTPUT
AS
BEGIN
    SELECT @AprovadosPaisPhd = COUNT(*)
    FROM students_id
    WHERE grade > 0
    AND mother_edu = 6 OR father_edu = 6
END;
$$;
