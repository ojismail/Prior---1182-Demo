# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Consultation.destroy_all
Symptom.destroy_all

Symptom.create(
  name: "Diarrhoea",
  archive: nil,
  question_1: "When did the diarrhoea start?",
  question_2: "How frequent are the bowel movements?",
  question_3: "How has the consistency of your stool changed since the diarrhoea started?",
  question_4: "Are you experiencing any abdominal pain or discomfort?",
  question_5: "Have you noticed any other symptoms, such as fever or dehydration?",
  question_6: "Have you eaten any unusual or spoiled food recently?",
  question_7: "Any recent foreign travel?"
)

Symptom.create(
  name: "Chest Pain",
  archive: nil,
  question_1: "When did the pain start?",
  question_2: "How severe is the pain?",
  question_3: "Does the pain radiate to other areas?",
  question_4: "Is the pain worsened by physical activity or stress?",
  question_5: "Have you had similar pain before?",
  question_6: "Have you recently had a cold or flu-like illness?",
  question_7: "Do you have a family history of heart disease?"
)

Symptom.create(
  name: "Breathlessness",
  archive: nil,
  question_1: "When did you start experiencing shortness of breath?",
  question_2: "How severe is the shortness of breath?",
  question_3: "Does the shortness of breath occur at rest or with exertion?",
  question_4: "Have you ever experienced similar symptoms before?",
  question_5: "Have you recently been exposed to any irritants or allergens?",
  question_6: "Are you experiencing any other symptoms?",
  question_7: "Have you ever smoked?"
)

Symptom.create(
  name: "Abdominal pain",
  archive: nil,
  question_1: "When did the pain start?",
  question_2: "Where is the pain in relation to your belly button?",
  question_3: "Is the pain constant or does it come and go?",
  question_4: "Does the pain occur after eating?",
  question_5: "Do you have any other associated symptoms, such as nausea or vomiting?",
  question_6: "Have you had a recent change in bowel habits?",
  question_7: "How severe is the pain?"
)

Symptom.create(
  name: "Headache",
  archive: nil,
  question_1: "When did the headache start?",
  question_2: "How severe is the headache?",
  question_3: "Is the pain localized to a specific area or does it cover the whole head?",
  question_4: "Did the headache begin over a period of seconds, minutes, or hours?",
  question_5: "Are you experiencing any other symptoms, such as dizziness or visual changes?",
  question_6: "Have you ever had a similar headache before?",
  question_7: "Have you recently had any head trauma or injury?"
)



Symptom.create(
  name: "Dizziness",
  archive: nil,
  question_1: "When did the dizziness start?",
  question_2: "Do you feel unsteady as if on the deck of a ship or is the room spinning?",
  question_3: "Is the dizziness constant or does it come and go?",
  question_4: "Are you experiencing any other symptoms, such as nausea or headache?",
  question_5: "What brings the dizziness on?",
  question_6: "Have you had any recent ear infections or ear surgery?",
  question_7: "Have you recently started or changed any medication?"
)

Symptom.create(
  name: "Back pain",
  archive: nil,
  question_1: "When did the pain start?",
  question_2: "Do you have any weakness or numbness in your arms or legs?",
  question_3: "Does the pain radiate to other areas?",
  question_4: "Is the pain worsened by physical activity or sitting? ",
  question_5: "Have you had any episodes of incontinence or struggling to pass urine or open your bowels?",
  question_6: "Have you had any recent trauma or injury to your back?",
  question_7: "Have you ever had a similar pain before?"
)


Symptom.create(
  name: "Joint pain",
  archive: nil,
  question_1: "When did the pain start?",
  question_2: "Which joints are affected by the pain?",
  question_3: "Does the pain improve with rest or activity?",
  question_4: "Are you experiencing any swelling, redness or stiffness in the joints?",
  question_5: "Have you had any recent injuries or falls that may have contributed to the pain?",
  question_6: "Is the pain worse in the morning or at night?",
  question_7: "Have you noticed any limitations in your mobility or ability to perform daily activities?"
)

Symptom.create(
  name: "Nausea or Vomiting",
  archive: nil,
  question_1: "When did the symptoms start?",
  question_2: "How severe is the nausea or vomiting?",
  question_3: "Are you experiencing any abdominal pain or discomfort?",
  question_4: "Have you recently eaten any unusual or spoiled food?",
  question_5: "Any recent travel?",
  question_6: "Any change in your bowel habit?",
  question_7: "Have you had any other symptoms?"
)


Symptom.create(
  name: "Fever",
  archive: nil,
  question_1: "When did the fever start?",
  question_2: "What is the highest temperature you have recorded?",
  question_3: "Are you experiencing any other symptoms?",
  question_4: "Are you experiencing any pain or discomfort, such as headache or body aches?",
  question_5: "Have you been in contact with anyone who is unwell?",
  question_6: "Any recent foreign travel?",
  question_7: "Have you taken any fever-reducing medications?"
)


Symptom.create(
   name: "Cough",
  archive: nil,
  question_1: "When did the cough start?",
  question_2: "Is the cough productive or dry?",
  question_3: "Are you experiencing any chest pain or shortness of breath?",
  question_4: "Have you ever had a similar cough before?",
  question_5: "Have you recently been exposed to any irritants or allergens?",
  question_6: "Are you currently taking any medications for the cough?",
  question_7: "Have you noticed any other symptoms, such as fever or fatigue?"
)

Symptom.create(
  name: "Sore throat",
  archive: nil,
  question_1: "When did the sore throat start?",
  question_2: "Is the soreness localized or widespread?",
  question_3: "Are you experiencing any difficulty swallowing or speaking?",
  question_4: "Any associated cough?",
  question_5: "Have you noticed any other symptoms, such as fever or swollen glands?",
  question_6: "Any unwell contacts?",
  question_7: "Any recent foreign travel?"
)

Symptom.create(
  name: "Rash",
  archive: nil,
  question_1: "When did the rash start?",
  question_2: "Is the rash localized or widespread?",
  question_3: "Are you experiencing any itching or pain with the rash?",
  question_4: "Have you recently used any new skincare products or detergents?",
  question_5: "Have you ever had a similar rash before?",
  question_6: "Are you currently taking any medications for the rash?",
  question_7: "Have you noticed any other symptoms, such as fever or joint pain?"
)

Symptom.create(
  name: "Painful urination",
  archive: nil,
  question_1: "When did the pain start?",
  question_2: "How severe is the pain?",
  question_3: "Does the pain occur before, during or after urination?",
  question_4: "Have you noticed any increase in urgency or frequency of passing urine?",
  question_5: "Are you experiencing any fever or chills?",
  question_6: "Have you noticed any changes in the color or odor of your urine?",
  question_7: "Do you have any abdominal or lower back pain?"
)

Symptom.create(
  name: "Blood in urine",
  archive: nil,
  question_1: "When did you first notice blood in your urine?",
  question_2: "Have you noticed any pain or discomfort with urination?",
  question_3: "Any associated abdominal pain?",
  question_4: "Are you experiencing any fever or chills?",
  question_5: "Any recent unexplained weight loss?",
  question_6: "Any recent trauma?",
  question_7: "Have you ever had blood in your urine before?"
)
