connection: "fantasy"


# include all the views
include: "*.view"

# include all the dashboards
# include: "*.dashboard"

explore: basketball {
  join: basketball_pts_steals {
    relationship: many_to_one
    type: left_outer
    sql_on: ${basketball.team} = ${basketball_pts_steals.team} ;;
  }
  join: basketball_pts_rebounds {
    relationship: many_to_one
    type: left_outer
    sql_on: ${basketball.team} = ${basketball_pts_rebounds.team} ;;
  }
  join: basketball_pts_points {
    relationship: many_to_one
    type: left_outer
    sql_on: ${basketball.team} = ${basketball_pts_points.team} ;;
  }
  join: basketball_pts_assists {
    relationship: many_to_one
    type: left_outer
    sql_on: ${basketball.team} = ${basketball_pts_assists.team} ;;
  }
  join: basketball_pts_3_pointers {
    relationship: many_to_one
    type: left_outer
    sql_on: ${basketball.team} = ${basketball_pts_3_pointers.team} ;;
  }
  join: basketball_pts_blocks {
    relationship: many_to_one
    type: left_outer
    sql_on: ${basketball.team} = ${basketball_pts_blocks.team} ;;
  }
  join: basketball_pts_fg_pct {
    relationship: many_to_one
    type: left_outer
    sql_on: ${basketball.team} = ${basketball_pts_fg_pct.team} ;;
  }
  join: basketball_pts_ft_pct {
    relationship: many_to_one
    type: left_outer
    sql_on: ${basketball.team} = ${basketball_pts_ft_pct.team} ;;
  }
}
