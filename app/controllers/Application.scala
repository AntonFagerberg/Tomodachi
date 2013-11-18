package controllers

import play.api._
import play.api.mvc._
import models.{Category, Vocable}
import play.api.libs.json.Json

object Application extends Controller {
  def index = Action {
    Ok(views.html.main())
  }

  def getByCategory(categoryId: Int) = Action {
    val jsonVocabulary =
      models.Vocable.getByCategory(categoryId) map { vocable: Vocable =>
        s"""{"id": "${vocable.id}", "question": "${vocable.question}", "answer": "${vocable.answer}"}"""
      }

    Ok(jsonVocabulary.mkString("[", ",", "]"))
  }
}