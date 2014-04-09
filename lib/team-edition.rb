require "team-edition/version"
require "team-edition/tracker_api"
require "team-edition/bulk"
require "thor"
require "net/https"
require "uri"
require "yaml"
require "json"

module TeamEdition
  class CLI < Thor
    desc "bulk", "Adds all members in the team file to all the projects in the projects file"
    method_option :team, required: true, aliases: '-t', desc: 'A yaml file containing a hash of users'
    method_option :projects, required: true, aliases: '-p', desc: 'A yaml file containing a list of projects'
    method_option :api_key, required: true, aliases: '-a', desc: 'a Pivotal Tracker API key'
    def bulk
      Bulk.new(tracker_api, options[:projects], options[:team]).run!
    end

    no_tasks do
      def tracker_api
        TrackerApi.new(options[:api_key])
      end
    end
  end
end
