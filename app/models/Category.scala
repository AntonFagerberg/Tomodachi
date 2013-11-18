package models

import play.api.Play.current
import play.api.db._
import anorm._
import anorm.SqlParser._

case class Category(
  id: Int,
  title: String
)

object Category {
  lazy val categoryParser =
    get[Int]("category.id") ~
    get[String]("category.title") map {
      case id ~ title => Category(id, title)
    }

  /** Get all categories from the database.
    *
    * @return All categories.
    */
  def all(): Seq[Category] = {
    DB.withConnection { implicit connection =>
      SQL(
        """
          |SELECT
          | category.id,
          | category.title
          |FROM
          | category
        """.stripMargin
      ).as(
        categoryParser *
      )
    }
  }
}