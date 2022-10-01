puts "creating german seeds"

lang_de = Language.create!(name: "de")

# Category 1

category_1 = QuestionCategory.create!(
    name: "Schwangerschaft und Geburt",
    info: "Schwangerschaft und Geburt",
    sort_order: 1,
    language: lang_de
)

Question.create!(
    name: "Risikoschwangerschaft",
    question_text: "Risikoschwangerschaft, medizinisch unterstützte Fortpflanzung",
    valuation_factor: 1,
    sort_order: 1,
    question_category: category_1
)
Question.create!(
    name: "Schwangerschaft",
    question_text: "Ungewollte/ungeplante Schwangerschaft",
    valuation_factor: 1,
    sort_order: 2,
    question_category: category_1
)
Question.create!(
    name: "komplizierte ",
    question_text: "Erschwerte oder komplizierte Geburt (Frühgbeburt, lange Geburt, Notfallkaiserschnitt, Vakum-, Zangengeburt,…)",
    valuation_factor: 1,
    sort_order: 3,
    question_category: category_1
)
Question.create!(
    name: "Traumatische Geburt für Mutter oder Vater ",

    question_text: "Traumatische Geburt für Mutter oder Vater ",
    valuation_factor: 1,
    sort_order: 4,
    question_category: category_1
)
Question.create!(
    name: "Trennung des Säuglings",
    question_text: "Trennung des Säuglings von der Mutter nach der Geburt",
    valuation_factor: 1,
    sort_order: 5,
    question_category: category_1
)

# Category 2

category_2 = QuestionCategory.create!(
    name: "Persönliche Belastungen",
    info: "Persönliche Belastungen",
    sort_order: 2,
    language: lang_de
)

Question.create!(name: "Migrationshintergrund",
    question_text: "Migrationshintergrund",
    valuation_factor: 1,
    sort_order: 1,
    question_category: category_2
)

Question.create!(name: "Zustand der Verwahrlosung",
    question_text: "Zustand der Verwahrlosung",
    valuation_factor: 1,
    sort_order: 2,
    question_category: category_2
)
Question.create!(name: "Suchtprobleme",
    question_text: "Sucht-, Alkohol- oder Drogenprobleme von Mutter und Vater",
    valuation_factor: 6,
    sort_order: 3,
    question_category: category_2
)

Question.create!(name: "Gewalt-/Missbrauchserfahrung",
    question_text: "Gewalt-/Missbrauchserfahrung",
    valuation_factor: 1,
    sort_order: 4,
    question_category: category_2
)
Question.create!(name: "Flucht-/Kriegserfahrung",
    question_text: "Flucht-/Kriegserfahrung",
    valuation_factor: 1,
    sort_order: 5,
    question_category: category_2
)
Question.create!(name: "Physische und psychische Gesundheitsprobleme",
    question_text: "Physische und psychische Gesundheitsprobleme: chronische Erkrankungen, Behinderungen, Depression, Essstörung, Blindheit, Gehörlosigkeit,...)",
    valuation_factor: 6,
    sort_order: 6,
    question_category: category_2
)
Question.create!(name: "Obligatorische Schulpflicht nicht abgeschlossen",
    question_text: "Obligatorische Schulpflicht nicht abgeschlossen/ nach der obligatorischen Schulpflicht keine Ausbildung",
    valuation_factor: 1,
    sort_order: 7,
    question_category: category_2
)
Question.create!(name: "Aktueller oder einschneidender Todesfall",
    question_text: "Aktueller oder einschneidender Todesfall",
    valuation_factor: 1,
    sort_order: 8,
    question_category: category_2
)
Question.create!(name: "Alter der Eltern",
    question_text: "Alter der Eltern < 20 bei der Geburt oder > 40 bei der Geburt des ersten Kindes",
    valuation_factor: 1,
    sort_order: 9,
    question_category: category_2
)
Question.create!(name: "Schwierigkeiten bei der Planung",
    question_text: "Schwierigkeiten bei der Planung und/oder Organisation des Alltages (wiederholtes Vergessen von Terminen, Schwierigkeiten bei der Einhaltung von Rhythmus und Ordnung,…)",
    valuation_factor: 1,
    sort_order: 10,
    question_category: category_2
)


# Category 3

category_3 = QuestionCategory.create!(
    name: "Familiäre Belastungen",
    info: "Familiäre Belastungen",
    sort_order: 3, language: lang_de
)

Question.create!(name: "Ungeklärte Vaterschaft",
    question_text: "Ungeklärte Vaterschaft",
    valuation_factor: 1,
    sort_order: 1,
    question_category: category_3
)
Question.create!(name: "Alleinerziehend / getrennterziehend",
    question_text: "Alleinerziehend / getrennterziehend",
    valuation_factor: 1,
    sort_order: 2,
    question_category: category_3
)
Question.create!(name: "belastende Paarkonflikte, drohende Trennung, Trennung",
    question_text: "belastende Paarkonflikte, drohende Trennung, Trennung",
    valuation_factor: 1,
    sort_order: 3,
    question_category: category_3
)
Question.create!(name: "Häusliche Gewalt",
    question_text: "Häusliche Gewalt",
    valuation_factor: 1,
    sort_order: 4,
    question_category: category_3
)
Question.create!(name: "Abwesenheit",
    question_text: "Abwesenheit eines Elternteils (Arbeit, ohne Aufenthaltsbewilligung, Spitalaufenthalt, stationäre Behandlungen / Spital, Psychiatrie, Strafvollzug)",
    valuation_factor: 1,
    sort_order: 5,
    question_category: category_3
)
Question.create!(name: "Eltern als Paar kaum verfügbar",
    question_text: "Eltern als Paar kaum verfügbar",
    valuation_factor: 1,
    sort_order: 6,
    question_category: category_3
)
Question.create!(name: "Geringer Altersunterschied zwischen Geschwistern",
    question_text: "Geringer Altersunterschied zwischen Geschwistern: weniger als 18 Monate und Mehrlinge",
    valuation_factor: 1,
    sort_order: 7,
    question_category: category_3
)
Question.create!(name: "Ältere Geschwister mit Besonderheiten",
    question_text: "Ältere Geschwister, die in der Familie leben mit Besonderheiten (erzieherisch anspruchsvoll--> SPF involviert, physisch oder psychische Krankheit, wie Autismus oder andere körperliche Einschränkungen,...)",
    valuation_factor: 1,
    sort_order: 8,
    question_category: category_3
)
Question.create!(name: "Beziehungen zur Herkunftsfamilie",
    question_text: "Ambivalente oder distanzierte Beziehungen zur Herkunftsfamilie",
    valuation_factor: 1,
    sort_order: 9,
    question_category: category_3
)

# Category 4

category_4 = QuestionCategory.create!(
    name: "Soziale Belastungen",
    info: "Soziale Belastungen",
    sort_order: 4, language: lang_de
)

Question.create!(name: "Lebt seit weniger als 6 Monate in dieser Gemeinde",
    question_text: "Lebt seit weniger als 6 Monate in dieser Gemeinde",
    valuation_factor: 1,
    sort_order: 1,
    question_category: category_4
)
Question.create!(name: "Geringe soziale Integration",
    question_text: "Geringe soziale Integration, wenige Kontakte außerhalb der Familie, wenige Kontakte zu Familien mit gleichaltrigen Kindern",
    valuation_factor: 1,
    sort_order: 2,
    question_category: category_4
)
Question.create!(name: "Geringe Unterstützung außerhalb der Familie",
    question_text: "Geringe Unterstützung außerhalb der Familie: wenig Hilfe von Verwandten oder Nachbarn",
    valuation_factor: 1,
    sort_order: 3,
    question_category: category_4
)
Question.create!(name: "Verständigung auf deutsch nicht/kaum möglich",
    question_text: "Verständigung auf deutsch nicht/kaum möglich",
    valuation_factor: 1,
    sort_order: 4,
    question_category: category_4
)
Question.create!(name: "Beide Elternteile Ausländer",
    question_text: "Beide Elternteile Ausländer",
    valuation_factor: 1,
    sort_order: 5,
    question_category: category_4
)
Question.create!(name: "Dissoziales Umfeld",
    question_text: "Dissoziales Umfeld: Gewalt, Drogen, Prostitution, Kriminalität,…",
    valuation_factor: 6,
    sort_order: 6,
    question_category: category_4
)

# Category 5

category_5 = QuestionCategory.create!(
    name: "Materielle Belastungen",
    info: "Materielle Belastungen",
    sort_order: 5,
    language: lang_de
)

Question.create!(name: "Beengte Wohnverhältnisse (belastend für die Familie)",
    question_text: "Beengte Wohnverhältnisse (belastend für die Familie)",
    valuation_factor: 1,
    sort_order: 1,
    question_category: category_5
)
Question.create!(name: "Zusammenleben mit den Eltern oder Schwiegereltern",
    question_text: "Zusammenleben mit den Eltern oder Schwiegereltern",
    valuation_factor: 1,
    sort_order: 2,
    question_category: category_5
)
Question.create!(name: "Arbeitslosigkeit",
    question_text: "Arbeitslosigkeit",
    valuation_factor: 1,
    sort_order: 3,
    question_category: category_5
)
Question.create!(name: "Prekäre finanzielle Situation, Schulden",
    question_text: "Prekäre finanzielle Situation, Schulden",
    valuation_factor: 1,
    sort_order: 4,
    question_category: category_5
)
Question.create!(name: "Sozialhilfe / Rente",
    question_text: "Sozialhilfe / Rente",
    valuation_factor: 1,
    sort_order: 5,
    question_category: category_5
)

# Category 6

category_6 = QuestionCategory.create!(
    name: "protection",
    info: "Schutzfaktoren",
    sort_order: 6,
    language: lang_de
)

Question.create!(
    name: "Wichtige Hilfe im sozialen Kontext",
    question_text: "Wichtige Hilfe im sozialen Kontext",
    valuation_factor: -1,
    sort_order: 1,
    question_category: category_6
)
Question.create!(
    name: "Aufmerksame, interessierte Drittpersonen",
    question_text: "Aufmerksame, interessierte Drittpersonen für das Kind (Gotti, Götti, Nachbarn,…)",
    valuation_factor: -1,
    sort_order: 2,
    question_category: category_6
)
Question.create!(
    name: "Positives Familienklima",
    question_text: "Positives Familienklima",
    valuation_factor: -1,
    sort_order: 3,
    question_category: category_6
)
Question.create!(
    name: "sucht Hilfe",
    question_text: "Akzeptiert und / oder sucht Hilfe (Therapien, Beratungsstellen, Kita, ...) es gibt ein vorhandenes Netzwerk für die Familie",
    valuation_factor: -1,
    sort_order: 4,
    question_category: category_6
)
