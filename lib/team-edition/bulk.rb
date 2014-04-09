module TeamEdition
  class Bulk
    def initialize(tracker_api, project_file, team_file)
      @tracker_api = tracker_api
      @project_file = project_file
      @team_file = team_file
    end

    def projects
      YAML.load(File.read(@project_file))["projects"]
    end

    def team
      YAML.load(File.read(@team_file))["team"]
    end

    def run!
      projects.each do |project|
        project_members = @tracker_api.members(project["id"])

        team.each do |member|
          unless project_members.include?(member["email"])
            @tracker_api.add_to_project(project["id"], member["name"], member["initials"], member["email"], member["role"])
            puts "Added #{member["name"]} to #{project["name"]}"
          end
        end
      end
    end
  end
end