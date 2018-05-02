view: verint_employees_v001 {
  sql_table_name: dbo.Verint_Employees_v001 ;;

  dimension: activity {
    type: string
    sql: ${TABLE}.Activity ;;
  }

  dimension: app_ver {
    type: string
    sql: ${TABLE}.AppVer ;;
  }

  dimension: application {
    type: string
    sql: ${TABLE}.Application ;;
  }

  dimension: basewintext {
    type: string
    sql: ${TABLE}.Basewintext ;;
  }

  dimension: computer {
    type: string
    sql: ${TABLE}.Computer ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}.Duration ;;
  }

  dimension: frame_date {
    type: string
    sql: ${TABLE}.FrameDate ;;
  }

  dimension: frame_time {
    type: string
    sql: ${TABLE}.FrameTime ;;
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

  dimension: ids_name {
    type: string
    sql: ${TABLE}.ids_name ;;
  }

  dimension: ids_plaintiff_type {
    type: string
    sql: ${TABLE}.ids_plaintiff_type ;;
  }

  dimension: ids_source {
    type: string
    sql: ${TABLE}.ids_source ;;
  }

  dimension: key_count {
    type: string
    sql: ${TABLE}.KeyCount ;;
  }

  dimension: locallogdatetime {
    type: string
    sql: ${TABLE}.locallogdatetime ;;
  }

  dimension: log_time {
    type: string
    sql: ${TABLE}.LogTime ;;
  }

  dimension: logid {
    type: string
    sql: ${TABLE}.logid ;;
  }

  dimension: mouse {
    type: string
    sql: ${TABLE}.Mouse ;;
  }

  dimension: msec {
    type: string
    sql: ${TABLE}.Msec ;;
  }

  dimension: pc_user {
    type: string
    sql: ${TABLE}.PcUser ;;
  }

  dimension: productivity {
    type: string
    sql: ${TABLE}.Productivity ;;
  }

  dimension: protocol {
    type: string
    sql: ${TABLE}.Protocol ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.Site ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.Url ;;
  }

  dimension: utc {
    type: string
    sql: ${TABLE}.Utc ;;
  }

  dimension: utclogdatetime {
    type: string
    sql: ${TABLE}.utclogdatetime ;;
  }

  dimension: web_flag {
    type: string
    sql: ${TABLE}.WebFlag ;;
  }

  dimension: weeknumber {
    type: string
    sql: ${TABLE}.weeknumber ;;
  }

  dimension: win_text {
    type: string
    sql: ${TABLE}.WinText ;;
  }

  measure: count {
    type: count
    drill_fields: [ids_name]
  }
}
