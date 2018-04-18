connection: "sages-02292_cdf"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: sages_02292_cdf_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sages_02292_cdf_default_datagroup

explore: badge_swipes_employees_v001 {
  label: "badge_swipes_employees_v001"
  from:  badge_swipes_employees_v001 }
