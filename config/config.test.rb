# frozen_string_literal: true

#
# This file is designed for used for unit testing
#
# All the defaults are set in
# https://github.com/ncbo/ontologies_linked_data/blob/master/lib/ontologies_linked_data/config/config.rb
###
GOO_HOST   = ENV.include?('GOO_HOST')   ? ENV['GOO_HOST']   : 'localhost'
GOO_PORT   = ENV.include?('GOO_PORT')   ? ENV['GOO_PORT']   : 9000
REDIS_HOST = ENV.include?('REDIS_HOST') ? ENV['REDIS_HOST'] : 'localhost'
REDIS_PORT = ENV.include?('REDIS_PORT') ? ENV['REDIS_PORT'] : 6379
SOLR_HOST  = ENV.include?('SOLR_HOST')  ? ENV['SOLR_HOST']  : 'localhost'
MGREP_HOST = ENV.include?('MGREP_HOST') ? ENV['MGREP_HOST'] : 'localhost'
MGREP_PORT = ENV.include?('MGREP_PORT') ? ENV['MGREP_PORT'] : 55555

LinkedData.config do |config|
  config.goo_host                   = GOO_HOST.to_s
  config.goo_port                   = GOO_PORT.to_i
  config.ontology_analytics_redis_host = REDIS_HOST.to_s
  config.ontology_analytics_redis_port = REDIS_PORT.to_i
  config.search_server_url          = "http://#{SOLR_HOST}:8983/solr/term_search_core1".to_s
  config.property_search_server_url = "http://#{SOLR_HOST}:8983/solr/prop_search_core1".to_s
end
Annotator.config do |config|
  config.mgrep_host            = MGREP_HOST.to_s
  config.mgrep_port            = MGREP_PORT.to_i
  config.mgrep_dictionary_file = './test/data/dictionary.txt'
  config.annotator_redis_host  = REDIS_HOST.to_s
  config.annotator_redis_port  = REDIS_PORT.to_i
end

OntologyRecommender.config do |config|
  config.input_type = 1
  config.output_type = 1
  config.delimiter = ','
  # Coverage evaluation
  config.wc = 0.55
  config.pref_score = 10
  config.syn_score = 5
  config.multiterm_score = 4
  # Specialization evaluation
  config.ws = 0.15
  # Acceptance evaluation
  config.wa = 0.15
  config.w_bp = 0.34
  config.w_umls = 0.33
  config.w_pmed = 0.33
  config.bp_data_file = 'config/acceptance_evaluation/sources/bp_data.dat'
  config.umls_data_file = 'config/acceptance_evaluation/sources/umls_data.dat'
  config.pmed_data_file = 'config/acceptance_evaluation/sources/pmed_data.dat'
  config.bp_scores_file = 'config/acceptance_evaluation/scores/bp_scores.dat'
  config.umls_scores_file = 'config/acceptance_evaluation/scores/umls_scores.dat'
  config.pmed_scores_file = 'config/acceptance_evaluation/scores/pmed_scores.dat'
  # Detail evaluation
  config.wd = 0.15
  config.top_defs = 1
  config.top_syns = 3
  config.top_props = 17
  # Other parameters
  config.max_elements_set = 3
  config.max_results_single = 25
  config.max_results_sets = 25
end
