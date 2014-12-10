json.id user.id
json.first_name user.first_name
json.last_name user.last_name
json.email user.email
json.website user.website
json.twitter user.twitter
json.address user.address
json.city user.city
json.zip_code user.zip_code
json.phone user.phone
json.educations user.educations.each do |education|
	json.school education.school
	json.year education.year
end

json.experiences user.experiences.each do |experience|
	json.title experience.title
	json.year experience.year
	json.category experience.category
end
json.images user.images.each do |image|
	json.image image.image
	json.title image.title
	json.medium image.medium
	json.year image.year
	json.description image.description
	json.size image.size
end
json.statements user.artist_statements.each do |statement|
	json.description statement.description
	json.statement statement.statement
end


json.opportunities user.opportunities.each do |opportunity|
	json.opportunity opportunity.projectname
	json.project_scope opportunity.project_scope
	json.category opportunity.category
	json.fee opportunity.fee
	json.prereq opportunity.prereq
	json.deadline opportunity.deadline
	json.entity_name opportunity.entity_name
	json.entity_contact opportunity.entity_contact
	json.entity_phone opportunity.entity_phone
	json.entity_email opportunity.entity_email
	json.url opportunity.url
	json.deadlines opportunity.deadlines.each do |deadline|
		json.name deadline.name
		json.date deadline.date
		json.active deadline.active
	end
end