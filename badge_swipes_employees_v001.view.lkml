view: badge_swipes_employees_v001 {
  sql_table_name: dbo.BadgeSwipes_Employees_v001 ;;

  dimension: card_num {
    type: string
    sql: ${TABLE}.CardNum ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  dimension: facilitycustomer_code {
    type: string
    sql: ${TABLE}."Facility/Customer Code" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."First Name" ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}."Full Name" ;;
  }

  dimension_group: ids_date_logged {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ids_date_logged ;;
  }

  dimension: ids_id {
    type: number
    sql: ${TABLE}.ids_id ;;
  }

  dimension: ids_plaintiff_id {
    type: number
    sql: ${TABLE}.ids_plaintiff_id ;;
  }

  dimension: ids_source {
    type: string
    sql: ${TABLE}.ids_source ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."Last Name" ;;
  }

  dimension: namedopt_in_plaintiffputative_class_member {
    type: string
    sql: ${TABLE}."Named/Opt In Plaintiff/Putative Class Member" ;;
  }

  dimension: what {
    type: string
    sql: ${TABLE}.What ;;
  }

  dimension_group: when {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."When" ;;
  }

  dimension: where {
    type: string
    sql: ${TABLE}."Where" ;;
  }

  dimension: who {
    type: string
    sql: ${TABLE}.Who ;;
  }

  measure: count {
    type: count
    drill_fields: [last_name, first_name, full_name]
  }
}
