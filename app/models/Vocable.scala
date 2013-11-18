package models

import play.api.Play.current
import play.api.db._
import anorm._
import anorm.SqlParser._

case class Vocable(
  id: Int,
  question: String,
  answer: String
)

object Vocable {
  lazy val vocableParser =
    get[Int]("vocable.id") ~
    get[String]("vocable.question") ~
    get[String]("vocable.answer") map {
      case id ~ question ~ answer => Vocable(id, question, answer)
    }

  /** Get all vocables which belongs to a category.
    *
    * @param categoryId Id-number of the category the vocable belongs to.
    * @return           All vocables which belongs to the category.
    */
  def getByCategory(categoryId: Int): Seq[Vocable] = {
    DB.withConnection { implicit connection =>
      SQL(
        """
          |SELECT
          | vocable.id,
          | vocable.question,
          | vocable.answer
          |FROM
          | vocable
          |INNER JOIN
          | category
          |ON
          | category.id = vocable.category_id
          |WHERE
          | category.id = {categoryId}
        """.stripMargin
      ).on(
        'categoryId -> categoryId
      ).as(
        vocableParser *
      )
    }
  }
}