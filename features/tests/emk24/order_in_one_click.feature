# Created by Alex Kardash at 24/07/2021
@regression
Feature: Проверка кнопки Заказать в 1 клик emk24

  Scenario Outline: Заказать в 1 клик emk24
    Given open <url> page
    When click on order in 1 click button
    When enter "generated_test_automation_email_order_1_click" in message field
#    When click on Continue button
    When enter "test_automation_user_name" in name field
    When enter "test_company_name" in company field
    When enter "+70000000000" in phone field
    When enter "automation.emk@gmail.com" in email field
    When click on Send button
    Then text "Спасибо за заявку!" is displayed

    Then email with "<url> Заказ в 1 клик" contains "<url>;test_automation_user_name;test_company_name;[PHONE]: +70000000000;[EMAIL]: automation.emk@gmail.com" in 900 sec

    Examples:
      | url          |
      | emk24.ru     |
      | emk24.by     |
      | emk24.kz     |
      | emk24.com.ua |
