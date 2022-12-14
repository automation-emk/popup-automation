# Created by Alex Kardash at 24/07/2021
@regression
Feature: Проверка вакансии emk24

  Scenario Outline: emk24
    Given open <url> page
    When open url: "<url>/about/vacancies/"
    When click on first vacancy button
    When click on respond vacancy button
    When wait 5 sec
    When enter "vacancy name" in vacancy name field
    When enter "+70000000000" in vacancy phone field
    When enter "automation.emk@gmail.com" in vacancy email field
    When enter "generated_test_automation_email_emk24_vacancy" in vacancy message field
    When click on vacancy send button
    Then text "Ваше сообщение отравлено" is displayed
    Then email with "generated_test_automation_email_emk24_vacancy" contains "<url>;Отклик на вакансию;[NAME]: vacancy name;[PHONE]: +70000000000;[EMAIL]: automation.emk@gmail.com" in 900 sec

    Examples:
      | url          |
      | emk24.ru     |
      | emk24.by     |
      | emk24.kz     |
      | emk24.com.ua |
