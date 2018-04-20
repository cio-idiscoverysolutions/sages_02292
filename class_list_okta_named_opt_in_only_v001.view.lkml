view: class_list_okta_named_opt_in_only_v001 {
  sql_table_name: dbo.ClassList_Okta_NamedOptInOnly_v001 ;;

  dimension: ids_actor_display_name {
    type: string
    sql: ${TABLE}.ids_actor_display_name ;;
  }

  measure: count {
    type: count
    drill_fields: [ids_actor_display_name]
  }
}
