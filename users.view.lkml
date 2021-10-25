view: distribution_centers {
  sql_table_name: public.distribution_centers ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    value_format_name: id

  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: locations {
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
  }

  dimension: names {
    type: string
    sql: ${TABLE}.names ;;
  }
  dimension: areaName {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.name ;;

  }
}
