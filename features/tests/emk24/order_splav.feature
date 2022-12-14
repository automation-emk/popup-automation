# Created by Alex Kardash at 24/07/2021
@regression
Feature: Проверка Заказ сплава emk24

  Scenario Outline: Заказ сплава emk24
    Given open <url> page
    When open url: "<url>/wiki/vidy_stalei/"
    When click on first splav button
    When enter "generated_test_automation_email_order_splav" in name field
    When enter "+70000000000" in phone field
    When enter "automation.emk@gmail.com" in email field
    When click on standard send button
    Then text "Ваше сообщение отравлено" is displayed
    Then email with "generated_test_automation_email_order_splav" contains "<url>;[LINK]: https://<url>/wiki;[FORM]: Оставить заявку;[PHONE]: +70000000000;[EMAIL]: automation.emk@gmail.com" in 900 sec

    Examples:
      | url          |
      | emk24.ru     |
      | emk24.by     |
      | emk24.kz     |
      | emk24.com.ua |
