
# Central Seeds file

puts "Seeding the database..."
puts "------------------------"
puts "Remove all existing records..."
Question.destroy_all
QuestionCategory.destroy_all
Address.destroy_all
AddressCategory.destroy_all
Language.destroy_all
Severity.destroy_all

# Run files under seeds directory
Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each do |seed|
  puts "loading #{seed}"
  load seed
end

# Severity.create!(name: "standard", value: 1)
# Severity.create!(name: "medium", value: 2)
# Severity.create!(name: "high", value: 3)

# AddressCategory.create!(name: "Medici", description: "Medici. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse ullam voluptatibus, corrupti neque nihil? Aspernatur ad cumque culpa deserunt velit provident, facere corporis iste odio delectus molestias, porro cupiditate minus!", sort_order: 1, language: Language.where(name: "it").first)
# AddressCategory.create!(name: "Attorno alla nascita", description: "Attorno alla nascita. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse ullam voluptatibus, corrupti neque nihil? Aspernatur ad cumque culpa deserunt velit provident, facere corporis iste odio delectus molestias, porro cupiditate minus!", sort_order: 2, language: Language.where(name: "it").first)
# AddressCategory.create!(name: "Consultori", description: "Consultori für Kategorie. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse ullam voluptatibus, corrupti neque nihil? Aspernatur ad cumque culpa deserunt velit provident, facere corporis iste odio delectus molestias, porro cupiditate minus!", sort_order: 3, language: Language.where(name: "it").first)
# AddressCategory.create!(name: "Educazione", description: "Educazione für Kategorie. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse ullam voluptatibus, corrupti neque nihil? Aspernatur ad cumque culpa deserunt velit provident, facere corporis iste odio delectus molestias, porro cupiditate minus!", sort_order: 4, language: Language.where(name: "it").first)
# AddressCategory.create!(name: "Incontri per bambini", description: "Incontri per bambini. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse ullam voluptatibus, corrupti neque nihil? Aspernatur ad cumque culpa deserunt velit provident, facere corporis iste odio delectus molestias, porro cupiditate minus!", sort_order: 5, language: Language.where(name: "it").first)

# # standard risk
# Address.create!(name: "Consultorio Genitori-Bambino SACD", extra: "", street: "Via Vallemaggia 18", postcode: "6600", city: "Locarno", phone: "+41 91 756 22 76-74", email: "icmp@alvad.ch", website: "https://www.alvad.ch/", address_category: AddressCategory.where(name: "Consultori").first, severity: Severity.where(name: "standard").first)

# Address.create!(name: "Associazione Progetto Genitori", extra: "", street: "Via Soldini 25", postcode: "6830", city: "Chiasso", phone: "+41 79 866 29 55", email: "info@associazioneprogettogenitori.com", website: "https://www.associazioneprogettogenitori.com/", address_category: AddressCategory.where(name: "Educazione").first, severity: Severity.where(name: "standard").first)

# Address.create!(name: "Associazione Ticinoperbambini", extra: "", street: "via Pedevilla 58a", postcode: "6512", city: "Giubiasco", phone: "", email: "info@ticinoperbambini.ch", website: "https://www.ticinoperbambini.ch/", address_category: AddressCategory.where(name: "Incontri per bambini").first, severity: Severity.where(name: "standard").first)

# Address.create!(name: "Associazione Nascere Bene Ticino", extra: "", street: "Via Guglielmo Canevascini 4", postcode: "6900", city: "Lugano", phone: "+41 77 438 29 58", email: "segreteria@nascerebene.ch", website: "https://www.nascerebene.ch/", address_category: AddressCategory.where(name: "Attorno alla nascita").first, severity: Severity.where(name: "standard").first)
# Address.create!(name: "Federazione Ticinese delle Levatrici", extra: "", street: "I Runch da Vigana 21", postcode: "6528", city: "Camorino", phone: "+41 79 602 26 20", email: "fsl.ti@hotmail.com", website: "http://levatrici-ti.ch/", address_category: AddressCategory.where(name: "Attorno alla nascita").first, severity: Severity.where(name: "standard").first)

# Address.create!(name: "Ginecologici", extra: "OMCT - Ordine dei medici del Cantone Ticino", street: "", postcode: "", city: "", phone: "", email: "", website: "https://www.omct.ch/omct/medici/Membri-OMCT.html", address_category: AddressCategory.where(name: "Medici").first, severity: Severity.where(name: "standard").first)
# Address.create!(name: "Pediatri", extra: "", street: "", postcode: "", city: "", phone: "", email: "", website: "https://www.pediatriaticino.ch/", address_category: AddressCategory.where(name: "Medici").first, severity: Severity.where(name: "standard").first)

# #medium and high risk
# Address.create!(name: "SCUDO - Consultori genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", address_category: AddressCategory.where(name: "Consultori").first, severity: Severity.where(name: "medium").first)
# Address.create!(name: "SCUDO - Consultori genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", address_category: AddressCategory.where(name: "Medici").first, severity: Severity.where(name: "medium").first)
# Address.create!(name: "SCUDO - Consultori genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", address_category: AddressCategory.where(name: "Attorno alla nascita").first, severity: Severity.where(name: "medium").first)
# Address.create!(name: "SCUDO - Consultori genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", address_category: AddressCategory.where(name: "Educazione").first, severity: Severity.where(name: "high").first)
# Address.create!(name: "SCUDO - Consultori genitore e bambino", extra: "", street: "Via Brentani 11", postcode: "6904", city: "Lugano", phone: "+41 91 973 18 27", email: "scudoicmplugano@scudo.ch", website: "https://www.scudo.ch", address_category: AddressCategory.where(name: "Consultori").first, severity: Severity.where(name: "high").first)

