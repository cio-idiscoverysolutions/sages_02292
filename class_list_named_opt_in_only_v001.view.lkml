view: class_list_named_opt_in_only_v001 {
  sql_table_name: dbo.ClassList_NamedOptInOnly_v001 ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: additional_name {
    type: string
    sql: ${TABLE}."Additional Name" ;;
  }

  dimension: companycode {
    type: number
    sql: ${TABLE}.companycode ;;
  }

  dimension: companyname {
    type: string
    sql: ${TABLE}.companyname ;;
  }

  dimension: ids_name {
    type: string
    sql: ${TABLE}.ids_name ;;
  }

  dimension: Okta_Email {
    type:  string
    sql:  ${TABLE}.Okta_Email ;;
  }


  dimension: Verint_v10_id {
    type:  string
    sql:  ${TABLE}.Verint_v10_id ;;
  }


  dimension: Verint_v15_id {
    type:  string
    sql:  ${TABLE}.Verint_v15_id ;;
  }

  dimension:Cisco_id {
    type:  string
    sql:  ${TABLE}.Cisco_id ;;
  }




  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
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

  measure: count {
    type: count
    drill_fields: [id, name, additional_name, companyname]
  }
}
