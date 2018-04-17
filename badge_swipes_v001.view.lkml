view: badge_swipes_v001 {
  sql_table_name: dbo.BadgeSwipes_v001 ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: additional_name {
    type: string
    sql: ${TABLE}."Additional Name" ;;
  }

  dimension: card_num {
    type: string
    sql: ${TABLE}.CardNum ;;
  }

  dimension: companycode {
    type: number
    sql: ${TABLE}.companycode ;;
  }

  dimension: companyname {
    type: string
    sql: ${TABLE}.companyname ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.Date ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
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

  dimension: ids_source {
    type: string
    sql: ${TABLE}.ids_source ;;
  }

  dimension_group: last_day_worked {
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
    sql: ${TABLE}."Last Day Worked" ;;
  }

  dimension_group: last_hire {
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
    sql: ${TABLE}."Last Hire Date" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."Last Name" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: namedopt_in_plaintiffputative_class_member {
    type: string
    sql: ${TABLE}."Named/Opt In Plaintiff/Putative Class Member" ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension_group: original_hire_date_ {
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
    sql: ${TABLE}."Original Hire Date " ;;
  }

  dimension: recent_location {
    type: string
    sql: ${TABLE}.recent_location ;;
  }

  dimension: recent_title {
    type: string
    sql: ${TABLE}.recent_title ;;
  }

  dimension_group: termination {
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
    sql: ${TABLE}."Termination Date" ;;
  }

  dimension: what {
    type: string
    sql: ${TABLE}.What ;;
  }

  dimension: when {
    type: date_time
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      last_name,
      first_name,
      full_name,
      name,
      additional_name,
      companyname
    ]
  }
}
