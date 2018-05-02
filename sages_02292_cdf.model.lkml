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


explore: verint_named_opt_in_only_v001 {
  label: "verint_named_opt_in_only_v001"
  from:  verint_named_opt_in_only_v001 }

explore: badge_swipes_employees_day_in_the_life_v001 {
  label: "badge_swipes_employees_day_in_the_life_v001"
  from:  badge_swipes_employees_day_in_the_life_v001 }

explore: class_list_v001 {
  label: "class_list_v001"
  from:  class_list_v001 }

explore: class_list_named_opt_in_only_v001 {
  label: "class_list_named_opt_in_only_v001"
  from:  class_list_named_opt_in_only_v001 }

explore: okta_employees_v001 {
  label: "okta_employees_v001"
  from:  okta_employees_v001 }

explore: verint_employees_v001 {
  label: "verint_employees_v001"
  from:  verint_employees_v001 }


explore: class_list_okta_named_opt_in_only_v001 {
  label: "class_list_okta_named_opt_in_only_v001"
  from:  class_list_okta_named_opt_in_only_v001 }

  explore: cisco_v001 {
    label: "cisco_v001"
    from:  cisco_v001 }
