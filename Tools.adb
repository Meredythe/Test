WITH Ada.Text_IO,Ada.Integer_Text_IO;
USE Ada.Text_IO,Ada.Integer_Text_IO;

PACKAGE BODY tools IS

-- COUCOU CA VA
   ------------------------------------- PROCEDURE pour saisie string securise ------------------

   PROCEDURE Saisie_String (
         S :    OUT T_Mot) IS

   BEGIN
      S(1..30) := (OTHERS => ' ');
      LOOP
         BEGIN
            Get_Line(S, K);
            S(K+1..30) :=(OTHERS => ' ');
            IF S(1) = ' ' THEN
               Put(" Veuillez mettre quelque chose ");
               New_Line;
            ELSE
               EXIT;
            END IF;
         EXCEPTION
            WHEN Data_Error =>
               Skip_Line;
               Put ("erreur sur la saisie");
               New_Line;

            WHEN Constraint_Error =>
               Skip_Line;
               Put ("erreur sur la saisie");
               New_Line;

         END;
      END LOOP;
   END Saisie_String;

   --------------------------------------- PROCEDURE pour saisie integer securise -----------

   PROCEDURE Saisie_Integer (
         K :    OUT Integer) IS
   BEGIN
      LOOP
         BEGIN
            Get(K);
            Skip_Line;
            EXIT;
         EXCEPTION
            WHEN Data_Error =>
               Skip_Line;
               Put ("erreur sur la saisie");
               New_Line;

            WHEN Constraint_Error =>
               Skip_Line;
               Put ("erreur sur la saisie");
               New_Line;

         END;
      END LOOP;
   END Saisie_Integer;

   ----------------------------------------------------------------------------

END tools;
