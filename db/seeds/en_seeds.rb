puts "creating english seeds"

lang_en = Language.create!(name: "en")

# Category 1

category_1 = QuestionCategory.create!(
    name: "Pregnancy and birth",
    info: "Pregnancy and birth",
    sort_order: 1,
    language: lang_en
)

Question.create!(
    name: "risk pregnancy",
    question_text: "At risk pregnancy, medically assisted procreation or any other problem",
    valuation_factor: 1,
    sort_order: 1,
    question_category: category_1
)
Question.create!(
    name: "Unplanned pregnancy",
    question_text: "Unplanned pregnancy",
    valuation_factor: 1,
    sort_order: 2,
    question_category: category_1
)
Question.create!(
    name: "Difficult or complicated birth",
    question_text: "Difficult or complicated birth (premature birth, prolonged delivery, emergency caesarean section, vacuum birth, forceps birth, ...)",
    valuation_factor: 1,
    sort_order: 3,
    question_category: category_1
)
Question.create!(
    name: "Traumatic birth",
    question_text: "Traumatic birth for the mother and/or the father",
    valuation_factor: 1,
    sort_order: 4,
    question_category: category_1
)
Question.create!(
    name: "Separation of the infant",
    question_text: "Separation of the infant from the mother after birth",
    valuation_factor: 1,
    sort_order: 5,
    question_category: category_1
)

# Category 2

category_2 = QuestionCategory.create!(
    name: "Personal stress factors",
    info: "Personal stress factors",
    sort_order: 2,
    language: lang_en
)

Question.create!(name: "Immigration background",
    question_text: "Immigration background",
    valuation_factor: 1,
    sort_order: 1,
    question_category: category_2
)

Question.create!(name: "Neglect",
    question_text: "Neglect",
    valuation_factor: 1,
    sort_order: 2,
    question_category: category_2
)
Question.create!(name: "Addiction",
    question_text: "Addiction, alcohol or drug abuse for the mother or/and the father",
    valuation_factor: 6,
    sort_order: 3,
    question_category: category_2
)

Question.create!(name: "violence/abuse",
    question_text: "Experience of violence/abuse",
    valuation_factor: 1,
    sort_order: 4,
    question_category: category_2
)
Question.create!(name: "Experiences of war and/or fleeing a country",
    question_text: "Experiences of war and/or fleeing a country",
    valuation_factor: 1,
    sort_order: 5,
    question_category: category_2
)
Question.create!(name: "Physical or psychological issues",
    question_text: "Physical or psychological issues: chronic diseases, disabilities, depression, eating disorders, blindness, deafness, ...)",
    valuation_factor: 6,
    sort_order: 6,
    question_category: category_2
)
Question.create!(name: "Compulsory education not completed",
    question_text: "Compulsory education not completed/ no further studies or education",
    valuation_factor: 1,
    sort_order: 7,
    question_category: category_2
)
Question.create!(name: "Recent death or profound grief",
    question_text: "Recent death or profound grief",
    valuation_factor: 1,
    sort_order: 8,
    question_category: category_2
)
Question.create!(name: "Age of parents",
    question_text: "Age of parents < 20 at birth or > 40 at first child's birth",
    valuation_factor: 1,
    sort_order: 9,
    question_category: category_2
)
Question.create!(name: "Difficulties in planning",
    question_text: "Difficulties in daily life planning (repeatedly forgetting  appointments, difficulties in keeping daily routines, lack of tidiness, ...)",
    valuation_factor: 1,
    sort_order: 10,
    question_category: category_2
)


# Category 3

category_3 = QuestionCategory.create!(
    name: "Family stress factors",
    info: "Family stress factors",
    sort_order: 3, language: lang_en
)

Question.create!(name: "Unkown and/or unregistered paternity",
    question_text: "Unkown and/or unregistered paternity",
    valuation_factor: 1,
    sort_order: 1,
    question_category: category_3
)
Question.create!(name: "Single parent family",
    question_text: "Single parent family",
    valuation_factor: 1,
    sort_order: 2,
    question_category: category_3
)
Question.create!(name: "Stressful couple conflicts, separation",
    question_text: "Stressful couple conflicts, separation",
    valuation_factor: 1,
    sort_order: 3,
    question_category: category_3
)
Question.create!(name: "Domestic abuse",
    question_text: "Domestic abuse",
    valuation_factor: 1,
    sort_order: 4,
    question_category: category_3
)
Question.create!(name: "Absence",
    question_text: "Absence of one of the two parents (work, hospitalization, residency issues, incarceration",
    valuation_factor: 1,
    sort_order: 5,
    question_category: category_3
)
Question.create!(name: "Parents rarely available as a couple (only as a parenting couple)",
    question_text: "Parents rarely available as a couple (only as a parenting couple)",
    valuation_factor: 1,
    sort_order: 6,
    question_category: category_3
)
Question.create!(name: "Little age difference between siblings",
    question_text: "Little age difference between siblings: less than 18 months or twins",
    valuation_factor: 1,
    sort_order: 7,
    question_category: category_3
)
Question.create!(name: "Older siblings with challenging issues",
    question_text: "Older siblings with challenging issues (behavioural issues, physical or mental illness such as autism or disabilities)",
    valuation_factor: 1,
    sort_order: 8,
    question_category: category_3
)
Question.create!(name: "Physical distance from relatives",
    question_text: "Physical distance from relatives, difficult relationship or family conflicts",
    valuation_factor: 1,
    sort_order: 9,
    question_category: category_3
)

# Category 4

category_4 = QuestionCategory.create!(
    name: "Social stress factors",
    info: "Social stress factors",
    sort_order: 4, language: lang_en
)

Question.create!(name: "Living in the current location for less than 6 months",
    question_text: "Living in the current location for less than 6 months",
    valuation_factor: 1,
    sort_order: 1,
    question_category: category_4
)
Question.create!(name: "Little social integration",
    question_text: "Little social integration, few contacts outside of the family, little contacts with families with children of the same age",
    valuation_factor: 1,
    sort_order: 2,
    question_category: category_4
)
Question.create!(name: "Little support outside the family",
    question_text: "Little support outside the family: lack of help from relatives or neighbors",
    valuation_factor: 1,
    sort_order: 3,
    question_category: category_4
)
Question.create!(name: "Poor or little knowledge of local language",
    question_text: "Poor or little knowledge of local language ",
    valuation_factor: 1,
    sort_order: 4,
    question_category: category_4
)
Question.create!(name: "Both parents are foreign",
    question_text: "Both parents are foreign",
    valuation_factor: 1,
    sort_order: 5,
    question_category: category_4
)

# Category 5

category_5 = QuestionCategory.create!(
    name: "Material stress factors",
    info: "Material stress factors",
    sort_order: 5,
    language: lang_en
)

Question.create!(
    name: "Cramped living condition",
    question_text: "Cramped living condition",
    valuation_factor: 1,
    sort_order: 1,
    question_category: category_5
)
Question.create!(
    name: "Living with parents or parents-in-law",
    question_text: "Living with parents or parents-in-law",
    valuation_factor: 1,
    sort_order: 2,
    question_category: category_5
)
Question.create!(
    name: "One or both parents unemployed",
    question_text: "One or both parents unemployed",
    valuation_factor: 1,
    sort_order: 3,
    question_category: category_5
)
Question.create!(
    name: "Precarious financial situation, debts",
    question_text: "Precarious financial situation, debts",
    valuation_factor: 1,
    sort_order: 4,
    question_category: category_5
)
Question.create!(
    name: "Income support",
    question_text: "Income support",
    valuation_factor: 1,
    sort_order: 5,
    question_category: category_5
)

# Category 6

category_6 = QuestionCategory.create!(
    name: "protection",
    info: "Protective factors",
    sort_order: 6,
    language: lang_en
)

Question.create!(
    name: "Significant help from social network",
    question_text: "Significant help from social network",
    valuation_factor: -1,
    sort_order: 1,
    question_category: category_6
)
Question.create!(
    name: "Third party interested in the child (godmother, father, neighbours, ...)",
    question_text: "Third party interested in the child (godmother, father, neighbours, ...)",
    valuation_factor: -1,
    sort_order: 2,
    question_category: category_6
)
Question.create!(
    name: "Positive family atmosphere",
    question_text: "Positive family atmosphere",
    valuation_factor: -1,
    sort_order: 3,
    question_category: category_6
)
Question.create!(
    name: "seeking help",
    question_text: "Accepting and/ or seeking help (therapies, counseling centers, daycare, ...) existing support network for the family",
    valuation_factor: -1,
    sort_order: 4,
    question_category: category_6
)
