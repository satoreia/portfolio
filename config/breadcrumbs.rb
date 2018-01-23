crumb :root do
  link "Site Top", root_path
end

crumb :about do
	link "About", about_path
	parent :root
end

crumb :access do
	link "Access", access_path
	parent :root
end

crumb :price do
	link "Price", price_path
	parent :root
end

crumb :qanda do
	link "Q & A", qanda_path
	parent :root
end

crumb :news_index do
	link "News Index", news_index_path
end

crumb :news do
	link "News Show", news_path
	parent :news_index
end

crumb :blogs do
	link "Blog Index", blogs_path
end

crumb :blog do
	link "Blog Show", blog_path
	parent :blogs
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).