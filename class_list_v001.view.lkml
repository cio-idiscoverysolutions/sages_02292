view: class_list_v001 {
  sql_table_name: dbo.ClassList_v001 ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: additional_name {
    type: string
    sql: ${TABLE}."Additional Name" ;;
  }


  dimension: Okta_name {
    type: string
    sql: ${TABLE}.okta_name ;;
  }

  dimension: BadgeSwipes_name {
    type: string
    sql: ${TABLE}.BadgeSwipes_name ;;
  }


  dimension: Verint_v10_id_v1 {
    type:  string
    sql:  ${TABLE}.Verint_v10_id_v1 ;;
  }


  dimension: Verint_v15_id_v1 {
    type:  string
    sql:  ${TABLE}.Verint_v15_id_v1 ;;
  }


  dimension: Verint_v10_id_v2 {
    type:  string
    sql:  ${TABLE}.Verint_v10_id_v2 ;;
  }


  dimension: Verint_v15_id_v2 {
    type:  string
    sql:  ${TABLE}.Verint_v15_id_v2 ;;
  }

  dimension:Cisco_id {
    type:  string
    sql:  ${TABLE}.Cisco_id ;;
  }


  dimension: companycode {
    type: number
    sql: ${TABLE}.companycode ;;
  }

  dimension: companyname {
    type: string
    sql: ${TABLE}.companyname ;;
  }

  dimension: Okta_Email {
    type:  string
    sql:  ${TABLE}.Okta_Email ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: ids_name {
    type: string
    sql: ${TABLE}.ids_name ;;
  }

  dimension: name_norm_ind {
    type: string
    sql: ${TABLE}.name_norm_ind ;;
  }


  dimension_group: ids_date_created {
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
    sql: ${TABLE}.ids_date_created ;;
  }

  dimension: ids_plaintiff_id {
    type: number
    sql: ${TABLE}.ids_plaintiff_id ;;
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


  dimension: Badge_swipes_prod_date {
    type: date
    sql: ${TABLE}.badge_swipes_prod_date ;;
  }

  dimension: Okta_prod_date {
    type: date
    sql: ${TABLE}.Okta_prod_date ;;
  }

  dimension: Cisco_prod_date {
    type: date
    sql: ${TABLE}.Cisco_prod_date ;;
  }


  dimension: Verint_prod_date {
    type: date
    sql: ${TABLE}.Verint_prod_date ;;
  }


  dimension: SAP_prod_date {
    type: date
    sql: ${TABLE}.SAP_prod_date ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, additional_name, companyname]
  }
}
