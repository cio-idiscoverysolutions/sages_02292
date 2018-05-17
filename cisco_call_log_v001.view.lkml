view: cisco_call_log_v001 {
  sql_table_name: dbo.Cisco_CallLog_v001 ;;

  dimension: ad_domain_logon {
    type: string
    sql: ${TABLE}.AD_DomainLogon ;;
  }

  dimension: ad_fullname {
    type: string
    sql: ${TABLE}.AD_Fullname ;;
  }

  dimension: ad_fullname_match {
    type: string
    sql: ${TABLE}.AD_Fullname_Match ;;
  }

  dimension: bar_unique_id {
    type: string
    sql: ${TABLE}.BAR_UniqueID ;;
  }

  dimension: cisco_call_end_call_date_time {
    type: string
    sql: ${TABLE}.Cisco_Call_EndCallDateTime ;;
  }

  dimension: cisco_call_end_date {
    type: string
    sql: ${TABLE}.Cisco_Call_EndDate ;;
  }

  dimension: cisco_call_end_time {
    type: string
    sql: ${TABLE}.Cisco_Call_EndTime ;;
  }

  dimension: cisco_call_start_call_date_time {
    type: string
    sql: ${TABLE}.Cisco_Call_StartCallDateTime ;;
  }

  dimension: cisco_call_start_date {
    type: string
    sql: ${TABLE}.Cisco_Call_StartDate ;;
  }

  dimension: cisco_call_start_time {
    type: string
    sql: ${TABLE}.Cisco_Call_StartTime ;;
  }

  dimension: cisco_phone_ext {
    type: string
    sql: ${TABLE}.Cisco_PhoneExt ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.FullName ;;
  }

  dimension: hr_email_address {
    type: string
    sql: ${TABLE}.HR_EmailAddress ;;
  }

  dimension: hr_email_address_match {
    type: string
    sql: ${TABLE}.HR_EmailAddress_Match ;;
  }

  dimension: hr_employee_location {
    type: string
    sql: ${TABLE}.HR_EmployeeLocation ;;
  }

  dimension: hr_employee_number {
    type: string
    sql: ${TABLE}.HR_EmployeeNumber ;;
  }

  dimension: hr_employee_number_match {
    type: string
    sql: ${TABLE}.HR_EmployeeNumber_Match ;;
  }

  dimension: hr_employee_title {
    type: string
    sql: ${TABLE}.HR_EmployeeTitle ;;
  }

  dimension: hr_full_name {
    type: string
    sql: ${TABLE}.HR_FullName ;;
  }

  dimension: hr_full_name_alt {
    type: string
    sql: ${TABLE}.HR_FullName_Alt ;;
  }

  dimension: hr_full_name_alt_match {
    type: string
    sql: ${TABLE}.HR_FullName_Alt_Match ;;
  }

  dimension: hr_full_name_match {
    type: string
    sql: ${TABLE}.HR_FullName_Match ;;
  }

  dimension: hr_inactive_date {
    type: string
    sql: ${TABLE}.HR_InactiveDate ;;
  }

  dimension: hr_manager {
    type: string
    sql: ${TABLE}.HR_Manager ;;
  }

  dimension: hr_position_start_date {
    type: string
    sql: ${TABLE}.HR_PositionStartDate ;;
  }

  dimension: hr_record_created {
    type: string
    sql: ${TABLE}.HR_Record_Created ;;
  }

  dimension: hr_sage_people_id {
    type: string
    sql: ${TABLE}.HR_SagePeople_ID ;;
  }

  dimension: hr_termination_date {
    type: string
    sql: ${TABLE}.HR_TerminationDate ;;
  }

  dimension_group: ids_cisco_call_end_call_date {
    type: time
    timeframes: [
      raw,
      time,
      time_of_day,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ids_Cisco_Call_EndCallDateTime ;;
  }

  dimension_group: ids_cisco_call_start_call_date {
    type: time
    timeframes: [
      raw,
      time,
      time_of_day,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ids_Cisco_Call_StartCallDateTime ;;
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

  measure: count {
    type: count
    drill_fields: [full_name, ad_fullname, hr_full_name]
  }
}
