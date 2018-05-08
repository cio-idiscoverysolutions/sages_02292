view: cisco_ids {
  sql_table_name: dbo.Cisco_IDs ;;

  dimension: cisco_id {
    type: string
    sql: ${TABLE}.cisco_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
