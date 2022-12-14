# Created by Alex Kardash at 24/07/2021
@regression
Feature: Проверка формы на странце контактов emk24

  Scenario Outline: контакты emk24
    Given open <url> page
    When open url: "<url>/about/contacts/"
    When enter "generated_test_automation_email_contacts" in company field
    When enter "test_automation_user_name" in name field
    When enter "+70000000000" in standard phone field
    When enter "automation.emk@gmail.com" in standard email field
    When enter "automation_message" in standard message field
    When click on standard send button
    Then text "Ваше сообщение отравлено" is displayed
    Then email with "generated_test_automation_email_contacts" contains "<url>;[NAME]: test_automation_user_name;[PHONE]: +70000000000;[EMAIL]: automation.emk@gmail.com" in 900 sec

    Examples:
      | url          |
      | emk24.ru     |
      | emk24.by     |
      | emk24.kz     |
      | emk24.com.ua |
