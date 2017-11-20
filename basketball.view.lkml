view: basketball {
  sql_table_name: fantasy.Basketball ;;

  measure: 3_pointers {
    type: number
    sql: ${TABLE}.3PM ;;
  }

  measure: assists {
    type: number
    sql: ${TABLE}.AST ;;
  }

  measure: blocks {
    type: number
    sql: ${TABLE}.BLK ;;
  }

  measure: field_goal_pct {
    type: number
    value_format_name: percent_2
    sql: ${TABLE}.`FG%` ;;
  }

  measure: free_throw_pct {
    type: number
    value_format_name: percent_2
    sql: ${TABLE}.`FT%` ;;
  }

  measure: points {
    type: number
    sql: ${TABLE}.PTS ;;
  }

  measure: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  measure: rebounds {
    type: number
    sql: ${TABLE}.REB ;;
  }

  measure: steals {
    type: number
    sql: ${TABLE}.STL ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.Team ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
