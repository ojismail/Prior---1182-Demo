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
  question_1: "When did the diarrhea start?",
  question_1_options: ["Today", "Yesterday", "A few days ago", "A week ago", "More than a week ago"],
  question_2: "How frequent are the bowel movements?",
  question_2_options: ["Less than 3 times per day", "3-4 times per day", "5-6 times per day", "7-8 times per day", "More than 8 times per day"],
  question_3: "How has the consistency of your stool changed since the diarrhea started?",
  question_3_options: ["No change", "Looser than usual", "Watery", "Mucusy", "Containing blood"],
  question_4: "Are you experiencing any abdominal pain or discomfort?",
  question_4_options: ["No", "Mild", "Moderate", "Severe", "Excruciating"],
  question_5: "Have you noticed any other symptoms, such as fever or dehydration?",
  question_5_options: ["No", "Mild fever", "High fever", "Feeling thirsty", "Feeling weak or dizzy"],
  question_6: "Have you eaten any unusual or spoiled food recently?",
  question_6_options: ["No", "Yes, at home", "Yes, at a restaurant", "Yes, at a party", "Yes, while traveling"],
  question_7: "Any recent foreign travel?",
  question_7_options: ["No", "Yes, within the country", "Yes, to a neighboring country", "Yes, to a different continent", "Yes, to a tropical area"],
)

Symptom.create(
  name: "Chest Pain",
  archive: nil,
  question_1: "When did the pain start?",
  question_1_options: ["Today", "Yesterday", "A few days ago", "A week ago", "More than a week ago"],
  question_2: "How severe is the pain?",
  question_2_options: ["Mild", "Moderate", "Severe", "Very severe", "Worst pain imaginable"],
  question_3: "Does the pain radiate to other areas?",
  question_3_options: ["No", "To the left arm", "To the right arm", "To both arms", "To the back"],
  question_4: "Is the pain worsened by physical activity or stress?",
  question_4_options: ["No", "Yes, physical activity", "Yes, emotional stress", "Yes, both", "Not sure"],
  question_5: "Have you had similar pain before?",
  question_5_options: ["No, never", "Yes, but not as severe", "Yes, similar severity", "Yes, more severe", "Not sure"],
  question_6: "Have you recently had a cold or flu-like illness?",
  question_6_options: ["No", "Within the last week", "Within the last month", "Within the last 3 months", "More than 3 months ago"],
  question_7: "Do you have a family history of heart disease?",
  question_7_options: ["No", "Yes, immediate family member", "Yes, extended family member", "Not sure", "Prefer not to answer"]
)

Symptom.create(
  name: "Breathlessness",
  archive: nil,
  question_1: "When did you start experiencing shortness of breath?",
  question_1_options: ["Today", "Yesterday", "A few days ago", "A week ago", "More than a week ago"],
  question_2: "How severe is the shortness of breath?",
  question_2_options: ["Mild", "Moderate", "Severe", "Very severe", "Unable to catch breath"],
  question_3: "Does the shortness of breath occur at rest or with exertion?",
  question_3_options: ["Only with exertion", "At rest and with exertion", "Only at rest", "Not sure", "Prefer not to answer"],
  question_4: "Have you ever experienced similar symptoms before?",
  question_4_options: ["No", "Yes, but not as severe", "Yes, similar severity", "Yes, more severe", "Not sure"],
  question_5: "Have you recently been exposed to any irritants or allergens?",
  question_5_options: ["No", "Yes, irritants", "Yes, allergens", "Not sure", "Prefer not to answer"],
  question_6: "Are you experiencing any other symptoms?",
  question_6_options: ["No", "Cough", "Chest pain", "Fever", "Fatigue"],
  question_7: "Have you ever smoked?",
  question_7_options: ["No, never", "Yes, currently smoke", "Yes, former smoker", "Not sure", "Prefer not to answer"]
)

Symptom.create(
  name: "Abdominal Pain",
  archive: nil,
  question_1: "When did the abdominal pain start?",
  question_1_options: ["Today", "Yesterday", "Few days ago", "Weeks ago", "Months ago"],
  question_2: "Where is the abdominal pain in relation to your belly button?",
  question_2_options: ["Above belly button", "Below belly button", "All around belly button", "Right side of belly button", "Left side of belly button"],
  question_3: "Is the abdominal pain constant or does it come and go?",
  question_3_options: ["Constant", "Intermittent", "Only after eating", "Only at night", "Only during exercise"],
  question_4: "Does the abdominal pain occur after eating?",
  question_4_options: ["Yes, every time", "Sometimes", "No"],
  question_5: "Do you have any other associated symptoms, such as nausea or vomiting?",
  question_5_options: ["Yes", "No"],
  question_6: "Have you had a recent change in bowel habits?",
  question_6_options: ["Yes", "No"],
  question_7: "How severe is the pain?",
  question_7_options: ["Mild", "Moderate", "Severe", "Unbearable", "Unable to rate"]
  )

Symptom.create(
  name: "Headache",
  archive: nil,
  question_1: "When did the headache start?",
  question_1_options: ["Today", "Yesterday", "A few days ago", "A week ago", "More than a week ago"],
  question_2: "How severe is the headache?",
  question_2_options: ["Mild", "Moderate", "Severe", "Very severe", "Worst headache ever"],
  question_3: "Is the pain localized to a specific area or does it cover the whole head?",
  question_3_options: ["Localized", "Frontal", "Temporal", "Occipital", "Whole head"],
  question_4: "Did the headache begin over a period of seconds, minutes, or hours?",
  question_4_options: ["Seconds", "Minutes", "Hours", "Not sure"],
  question_5: "Are you experiencing any other symptoms, such as dizziness or visual changes?",
  question_5_options: ["Dizziness", "Nausea", "Vomiting", "Sensitivity to light or sound", "Visual changes"],
  question_6: "Have you ever had a similar headache before?",
  question_6_options: ["Yes, same type of headache", "Yes, different type of headache", "No"],
  question_7: "Have you recently had any head trauma or injury?",
  question_7_options: ["Yes, I have had head trauma or injury in the past 24 hours", "Yes, I have had head trauma or injury in the past week", "Yes, I have had head trauma or injury in the past month", "Yes, I have had head trauma or injury in the past year", "No, I have not had any head trauma or injury recently"]
  )

  Symptom.create(
  name: "Dizziness",
  archive: nil,
  question_1: "When did the dizziness start?",
  question_1_options: ["Today", "Yesterday", "A few days ago", "A week ago", "More than a week ago"],
  question_2: "Do you feel unsteady as if on the deck of a ship or is the room spinning?",
  question_2_options: ["Unsteady", "Room spinning", "Not sure"],
  question_3: "Is the dizziness constant or does it come and go?",
  question_3_options: ["Constant", "Comes and goes", "Not sure"],
  question_4: "Are you experiencing any other symptoms, such as nausea or headache?",
  question_4_options: ["Nausea", "Headache", "None"],
  question_5: "What brings the dizziness on?",
  question_5_options: ["Standing up", "Turning head", "Moving around", "Not sure"],
  question_6: "Have you had any recent ear infections or ear surgery?",
  question_6_options: ["Yes, I have had an ear infection or ear surgery in the past 24 hours", "Yes, I have had an ear infection or ear surgery in the past week", "Yes, I have had an ear infection or ear surgery in the past month", "Yes, I have had an ear infection or ear surgery in the past year", "No, I have not had any recent ear infections or ear surgery"],
  question_7: "Have you recently started or changed any medication?",
  question_7_options: ["Yes, I have started or changed medication in the past 24 hours", "Yes, I have started or changed medication in the past week", "Yes, I have started or changed medication in the past month", "Yes, I have started or changed medication in the past year", "No, I have not started or changed any medication recently"]
  )

  Symptom.create(
    name: "Back Pain",
    archive: nil,
    question_1: "When did the pain start?",
    question_1_options: ["Today", "Yesterday", "Last week", "Last month", "More than a month ago"],
    question_2: "Do you have any weakness or numbness in your arms or legs?",
    question_2_options: ["Yes", "No", "I'm not sure", "Sometimes", "Occasionally"],
    question_3: "Does the pain radiate to other areas?",
    question_3_options: ["Yes, to my legs", "Yes, to my arms", "No, it stays in my back", "It varies", "I'm not sure"],
    question_4: "Is the pain worsened by physical activity or sitting? ",
    question_4_options: ["Yes, physical activity makes it worse", "Yes, sitting makes it worse", "Both", "No, it doesn't affect the pain", "It varies"],
    question_5: "Have you had any episodes of incontinence or struggling to pass urine or open your bowels?",
    question_5_options: ["Yes, I've had incontinence", "Yes, I've struggled to pass urine", "Yes, I've struggled to open my bowels", "No, I haven't had any of these issues", "I'm not sure"],
    question_6: "Have you had any recent trauma or injury to your back?",
    question_6_options: ["Yes, I had a recent trauma/injury", "No, I haven't had any recent injuries", "I'm not sure", "I don't remember", "I prefer not to say"],
    question_7: "Have you ever had a similar pain before?",
    question_7_options: ["Yes, I've had this pain before", "No, this is the first time", "I'm not sure", "I don't remember", "I prefer not to say"]
    )


    Symptom.create(
      name: "Joint Pain",
      archive: nil,
      question_1: "When did the joint pain start?",
      question_1_options: ["Today", "Yesterday", "Last week", "Last month", "More than a month ago"],
      question_2: "Which joints are affected by the pain?",
      question_2_options: ["Knees", "Hips", "Shoulders", "Elbows", "Multiple joints"],
      question_3: "Does the joint pain improve with rest or activity?",
      question_3_options: ["Rest improves the pain", "Activity improves the pain", "It varies", "Neither rest nor activity improve the pain", "I'm not sure"],
      question_4: "Are you experiencing any swelling, redness or stiffness in the joints?",
      question_4_options: ["Yes, I have swelling", "Yes, I have redness", "Yes, I have stiffness", "No, I don't have any of these symptoms", "I'm not sure"],
      question_5: "Have you had any recent injuries or falls that may have contributed to the pain?",
      question_5_options: ["Yes, I've had recent injuries/falls", "No, I haven't had any recent injuries", "I'm not sure", "I don't remember", "I prefer not to say"],
      question_6: "Is the pain worse in the morning or at night?",
      question_6_options: ["Worse in the morning", "Worse at night", "It varies", "It's the same throughout the day", "I'm not sure"],
      question_7: "Have you noticed any limitations in your mobility or ability to perform daily activities?",
      question_7_options: ["Yes I have noticed limitations", "No I haven't noticed any limitations", "I'm not sure", "I don't remember", "I prefer not to say"]
)

Symptom.create(
  name: "Vomiting",
  archive: nil,
  question_1: "When did the symptoms start?",
  question_1_options: ["Today", "Yesterday", "Few days ago", "Weeks ago", "Months ago"],
  question_2: "How severe is the nausea or vomiting?",
  question_2_options: ["Mild", "Moderate", "Severe", "Unbearable", "Unable to rate"],
  question_3: "Are you experiencing any abdominal pain or discomfort?",
  question_3_options: ["Yes, I have mild abdominal pain or discomfort", "Yes, I have moderate abdominal pain or discomfort", "Yes, I have severe abdominal pain or discomfort", "No, I am not experiencing any abdominal pain or discomfort", "I am not sure"],
  question_4: "Have you recently eaten any unusual or spoiled food?",
  question_4_options: ["Yes, I have eaten unusual or spoiled food in the past 24 hours", "Yes, I have eaten unusual or spoiled food in the past week", "Yes, I have eaten unusual or spoiled food in the past month", "No, I have not eaten any unusual or spoiled food recently", "I am not sure"],
  question_5: "Any recent travel?",
  question_5_options: ["Yes, I have traveled internationally in the past 24 hours", "Yes, I have traveled internationally in the past week", "Yes, I have traveled internationally in the past month", "Yes, I have traveled domestically in the past 24 hours", "No, I have not traveled recently"],
  question_6: "Any change in your bowel habit?",
  question_6_options: ["Yes, I have had a change in my bowel habit in the past 24 hours", "Yes, I have had a change in my bowel habit in the past week", "Yes, I have had a change in my bowel habit in the past month", "No, I have not had any change in my bowel habit recently", "I am not sure"],
  question_7: "Have you had any other symptoms?",
question_7_options: ["Yes, I have abdominal pain or cramping", "Yes, I have diarrhea", "Yes, I have a fever", "Yes, I have dizziness or lightheadedness", "No, I have not had any other symptoms"]
  )


  Symptom.create(
    name: "Fever",
    archive: nil,
    question_1: "When did the fever start?",
    question_1_options: ["Today", "Yesterday", "Few days ago", "Weeks ago", "Months ago"],
    question_2: "What is the highest temperature you have recorded?",
    question_2_options: ["Less than 100°F", "Between 100°F to 102°F", "Between 102°F to 104°F", "Greater than 104°F", "Unable to measure"],
    question_3: "Are you experiencing any other symptoms?",
    question_3_options: ["Yes", "No"],
    question_4: "Are you experiencing any pain or discomfort, such as headache or body aches?",
    question_4_options: ["Yes", "No"],
    question_5: "Have you been in contact with anyone who is unwell?",
    question_5_options: ["Yes", "No"],
    question_6: "Any recent foreign travel?",
    question_6_options: ["Yes", "No"],
    question_7: "Have you taken any fever-reducing medications?",
    question_7_options: ["Yes", "NO"]
)


Symptom.create(
  name: "Cough",
  archive: nil,
  question_1: "When did the cough start?",
  question_1_options: ["Today", "Yesterday", "Few days ago", "Weeks ago", "Months ago"],
  question_2: "Is the cough productive or dry?",
  question_2_options: ["Productive", "Dry", "Intermittent"],
  question_3: "Are you experiencing any chest pain or shortness of breath?",
  question_3_options: ["Yes, I have mild chest pain or shortness of breath", "Yes, I have moderate chest pain or shortness of breath", "Yes, I have severe chest pain or shortness of breath", "No, I am not experiencing any chest pain or shortness of breath", "I am not sure"],
  question_4: "Have you ever had a similar cough before?",
  question_4_options: ["Yes, I have had a similar cough before", "No, I have not had a similar cough before", "I am not sure"],
  question_5: "Have you recently been exposed to any irritants or allergens?",
  question_5_options: ["Yes", "No"],
  question_6: "Are you currently taking any medications for the cough?",
  question_6_options: ["Yes, I am taking prescribed medication for the cough", "Yes, I am taking over-the-counter medication for the cough", "Yes, I am taking herbal or alternative medication for the cough", "No, I am not taking any medication for the cough", "I am not sure"],
  question_7: "Have you noticed any other symptoms, such as fever or fatigue?",
  question_7_options: ["Yes, I have a fever", "Yes, I have fatigue", "Yes, I have both fever and fatigue", "No, I have not noticed any other symptoms", "I am not sure"]
  )

  Symptom.create(
  name: "Sore throat",
  archive: nil,
  question_1: "When did the sore throat start?",
  question_1_options: ["Today", "Yesterday", "Few days ago", "Weeks ago", "Months ago"],
  question_2: "Is the soreness localized or widespread?",
  question_2_options: ["Localized", "Widespread"],
  question_3: "Are you experiencing any difficulty swallowing or speaking?",
  question_3_options: ["Yes, I have difficulty swallowing", "Yes, I have difficulty speaking", "Yes, I have both difficulty swallowing and speaking", "No, I am not experiencing any difficulty swallowing or speaking", "I am not sure"],
  question_4: "Any associated cough?",
  question_4_options: ["Yes, I have a cough that is associated with the difficulty swallowing or speaking", "Yes, I have a cough that is not associated with the difficulty swallowing or speaking", "No, I do not have a cough", "I am not sure", "N/A"],
  question_5: "Have you noticed any other symptoms, such as fever or swollen glands?",
  question_5_options: ["Yes, I have a fever", "Yes, I have swollen glands", "Yes, I have both fever and swollen glands", "No, I have not noticed any other symptoms", "I am not sure"],
  question_6: "Any unwell contacts?",
  question_6_options: ["Yes, I have been in close contact with someone who is unwell", "No, I have not been in close contact with anyone who is unwell", "I am not sure", "N/A", "I prefer not to answer"],
  question_7: "Any recent foreign travel?",
  question_7_options: ["Yes, I have traveled internationally in the past 14 days", "No, I have not traveled internationally recently", "I am not sure", "N/A", "I prefer not to answer"]
  )

  Symptom.create(
  name: "Rash",
  archive: nil,
  question_1: "When did the rash start?",
  question_1_options: ["Today", "Yesterday", "Few days ago", "Weeks ago", "Months ago"],
  question_2: "Is the rash localized or widespread?",
  question_2_options: ["Localized", "Widespread"],
  question_3: "Are you experiencing any itching or pain with the rash?",
  question_3_options: ["Yes", "No"],
  question_4: "Have you recently used any new skincare products or detergents?",
  question_4_options: ["Yes, I have used new skincare products", "Yes, I have used new detergents", "Yes, I have used both new skincare products and detergents", "No, I have not used any new skincare products or detergents", "I am not sure"],
  question_5: "Have you ever had a similar rash before?",
  question_5_options: ["Yes, I have had a similar rash before", "No, I have never had a similar rash before", "I am not sure", "N/A", "I prefer not to answer"],
  question_6: "Are you currently taking any medications for the rash?",
  question_6_options: ["Yes, I am taking prescribed medication for the rash", "Yes, I am taking over-the-counter medication for the rash", "Yes, I am taking herbal or alternative medication for the rash", "No, I am not taking any medication for the rash", "I am not sure"],
  question_7: "Have you noticed any other symptoms, such as fever or joint pain?",
  question_7_options: ["Yes, I have a fever", "Yes, I have joint pain", "Yes, I have both fever and joint pain", "No, I have not noticed any other symptoms", "I am not sure"]
  )

  Symptom.create(
    name: "Painful Urination",
    archive: nil,
    question_1: "When did the pain passing urine start?",
    question_1_options: ["Today", "Yesterday", "Few days ago", "Weeks ago", "Months ago"],
    question_2: "How severe is the pain?",
    question_2_options: ["Mild", "Moderate", "Severe", "Unbearable"],
    question_3: "Does the pain occur before, during or after urination?",
    question_3_options: ["Before", "During", "After", "All the time", "Never"],
    question_4: "Have you noticed any increase in urgency or frequency of passing urine?",
    question_4_options: ["Yes", "No"],
    question_5: "Are you experiencing any fever or chills?",
    question_5_options: ["Yes", "No"],
    question_6: "Have you noticed any changes in the color or odor of your urine?",
    question_6_options: ["Yes", "No"],
    question_7: "Do you have any abdominal or lower back pain?",
    question_7_options: ["Yes", "No"]
    )

    Symptom.create(
    name: "Blood in Urine",
    archive: nil,
    question_1: "When did you first notice blood in your urine?",
    question_1_options: ["Today", "Yesterday", "Few days ago", "Weeks ago", "Months ago"],
    question_2: "Have you noticed any pain or discomfort with urination?",
    question_2_options: ["Yes", "No"],
    question_3: "Any associated abdominal pain?",
    question_3_options: ["Yes", "No"],
    question_4: "Are you experiencing any fever or chills?",
    question_4_options: ["Yes", "No"],
    question_5: "Any recent unexplained weight loss?",
    question_5_options: ["Yes", "No"],
    question_6: "Any recent trauma?",
    question_6_options: ["Yes", "No"],
    question_7: "Have you ever had blood in your urine before?",
    question_7_options: ["Yes", "No"]
    )

    Symptom.create(
      name: "Palpitations",
      archive: nil,
      question_1: "When did the palpitations start?",
      question_1_options: ["Today", "Yesterday", "Few days ago", "Weeks ago", "Months ago"],
      question_2: "How often do you experience palpitations?",
      question_2_options: ["Occasionally", "Frequently", "Constantly"],
      question_3: "How long do the palpitations last?",
      question_3_options: ["Few seconds", "Few minutes", "More than 5 minutes"],
      question_4: "Are you experiencing any chest pain or discomfort?",
      question_4_options: ["Yes", "No"],
      question_5: "Do you have any history of heart disease?",
      question_5_options: ["Yes", "No"],
      question_6: "Are you currently taking any medications?",
      question_6_options: ["Yes", "No"],
      question_7: "Have you noticed any other symptoms?",
      question_7_options: ["Yes, I have chest pain or discomfort", "Yes, I have shortness of breath", "Yes, I have dizziness or lightheadedness", "Yes, I have fainting or near-fainting spells", "No, I have not noticed any other symptoms"],
      )

      Symptom.create(
      name: "Ear Pain",
      archive: nil,
      question_1: "When did the ear pain start?",
      question_1_options: ["Today", "Yesterday", "Few days ago", "Weeks ago", "Months ago"],
      question_2: "Which ear is affected?",
      question_2_options: ["Left", "Right", "Both"],
      question_3: "Are you experiencing any other symptoms such as fever, headache, or discharge from the ear?",
      question_3_options: ["Yes, I have a fever", "Yes, I have a headache", "Yes, I have discharge from the ear", "Yes, I have two or more of these symptoms", "No, I am not experiencing any other symptoms"],
      question_4: "Are you experiencing any hearing loss?",
      question_4_options: ["Yes, I have mild hearing loss", "Yes, I have moderate hearing loss", "Yes, I have severe hearing loss", "No, I am not experiencing any hearing loss", "I am not sure"],
      question_5: "Have you had any recent cold or flu symptoms?",
      question_5_options: ["Yes, I have had cold symptoms", "Yes, I have had flu symptoms", "Yes, I have had both cold and flu symptoms", "No, I have not had any cold or flu symptoms recently", "I am not sure"],
      question_6: "Have you had any recent trauma or injury to the ear?",
      question_6_options: ["Yes, I have had trauma or injury to the ear in the past 24 hours", "Yes, I have had trauma or injury to the ear in the past week", "Yes, I have had trauma or injury to the ear in the past month", "No, I have not had any recent trauma or injury to the ear", "I am not sure"],
      question_7: "Have you noticed any recent changes in your hearing or balance?",
      question_7_options: ["Yes, I have noticed a change in my hearing", "Yes, I have noticed a change in my balance", "Yes, I have noticed changes in both my hearing and balance", "No, I have not noticed any recent changes in my hearing or balance", "I am not sure"]
      )


      Symptom.create(
        name: "Constipation",
        archive: nil,
        question_1: "When did the constipation start?",
        question_1_options: ["Today", "Yesterday", "Few days ago", "Weeks ago", "Months ago"],
        question_2: "How often do you have a bowel movement?",
        question_2_options: ["Once a day", "Few times a week", "Once a week", "Less than once a week"],
        question_3: "Are you experiencing any abdominal pain or discomfort?",
        question_3_options: ["Yes", "No"],
        question_4: "Have you noticed any blood in your stool?",
        question_4_options: ["Yes", "No"],
        question_5: "Are you currently taking any medications that may cause constipation?",
        question_5_options: ["Yes", "No"],
        question_6: "Have you made any recent changes to your diet or lifestyle?",
        question_6_options: ["Yes", "No"],
        question_7: "Have you noticed any other symptoms?",
        question_7_options: ["Yes", "No"]
        )

        Symptom.create(
        name: "Tiredness",
        archive: nil,
        question_1: "When did the tiredness start?",
        question_1_options: ["Today", "Yesterday", "Few days ago", "Weeks ago", "Months ago"],
        question_2: "How would you rate your energy level?",
        question_2_options: ["Normal", "Low", "Very low"],
        question_3: "Are you getting enough sleep?",
        question_3_options: ["Yes", "No"],
        question_4: "Are you experiencing any mood changes such as irritability or depression?",
        question_4_options: ["Yes", "No"],
        question_5: "Have you had any recent changes in your diet or exercise habits?",
        question_5_options: ["Yes", "No"],
        question_6: "Are you currently taking any medications that may cause tiredness?",
        question_6_options: ["Yes", "No"],
        question_7: "Have you noticed any other symptoms?",
        question_7_options: ["Yes", "No"]
        )

        Symptom.create(
        name: "Fainting",
        archive: nil,
        question_1: "When did the fainting occur?",
        question_1_options: ["Today", "Yesterday", "Few days ago", "Weeks ago", "Months ago"],
        question_2: "How long did the fainting episode last?",
        question_2_options: ["Few seconds", "Few minutes", "More than 5 minutes"],
        question_3: "Did you experience any warning signs such as dizziness, lightheadedness, blurred vision, or nausea before fainting?",
        question_3_options: ["Yes, I experienced dizziness", "Yes, I experienced lightheadedness", "Yes, I experienced blurred vision", "Yes, I experienced nausea", "No, I did not experience any warning signs before fainting"],

        question_4: "Have you experienced fainting before? If yes, how many times?",
        question_4_options: ["Yes, I have experienced fainting once before", "Yes, I have experienced fainting multiple times before", "No, I have never experienced fainting before", "I am not sure", "I prefer not to answer"],

        question_5: "Do you have any history of heart disease, seizures, or low blood pressure?",
        question_5_options: ["Yes, I have a history of heart disease", "Yes, I have a history of seizures", "Yes, I have a history of low blood pressure", "No, I do not have a history of any of these conditions", "I am not sure"],

        question_6: "Are you currently taking any medications that may affect blood pressure or heart function?",
        question_6_options: ["Yes, I am taking medications that may affect blood pressure", "Yes, I am taking medications that may affect heart function", "Yes, I am taking medications that may affect both blood pressure and heart function", "No, I am not taking any medications that may affect blood pressure or heart function", "I am not sure"],

        question_7: "Have you noticed any other symptoms, such as chest pain, shortness of breath, or headache?",
        question_7_options: ["Yes, I have chest pain", "Yes, I have shortness of breath", "Yes, I have headache", "Yes, I have two or more of these symptoms", "No, I have not noticed any other symptoms"]
        )
