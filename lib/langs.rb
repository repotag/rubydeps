require 'ostruct'

module LanguageHelpers
  # Return a mock construct that mimicks Gem::Dependency for depedencies we tried to parse, but weren't valid.
  def unknown_dependency(name, type = :runtime)
    OStruct.new(name: name, type: type, requirement: 'unknown')
  end

  # For each dependency, find its latest version and return the two together. Takes account of invalid or dependencies (see #unknown_dependency)
  #
  # results - Array of Gem::Dependencies and unknown dependencies.
  #
  # Returns an Array of tuples of each dependency and its latest version: e.g., [[<Gem::Dependency>, <Gem::Version>]]
  def dependency_with_latest(results)
    results.map do |dependency|
      [dependency, dependency.requirement.to_s == 'unknown' ? nil : latest_version(dependency.name)]
    end
  end
end

Dir[File.expand_path('../langs/*.rb', __FILE__)].each { |f| require f }