#Feature: OpenDesa.io Features
#
#  Scenario: Get main Page
#    Given I go to home "/"
#    When Locate on home page
#    Then Get web version based grateher than "20.0"
#
#  Scenario: Login as admin with valid account in Admin page
#    Given I go to login page "/index.php/siteman"
#    When I enter username "admin"
#    And I enter password "sid304"
#    And I check show password "Tamplikan kata sandi"
#    Then Locate on admin page
#
##  Scenario: Login with invalid account in Admin page
##    Given I go to login page "/index.php/siteman"
##    When I enter username "Wrong123"
##    And I enter password "It'sWrong"
##    And I check show password "Tamplikan kata sandi"
##    And I click button login "Masuk"
##    Then validate failed message
##
##  Scenario: Try SQL Injection in Admin page
##    Given I go to login page "/index.php/siteman"
##    When I enter username '" or ""="'
##    And  I enter password '" or ""="'
##    And I check show password "Tamplikan kata sandi"
##    And I click button login "Masuk"
##    Then validate failed message
###
##  Scenario: Only click button login in Admin page
##    Given I go to login page "/index.php/siteman"
##    When I click button login "Masuk"
##    Then validate failed message
##
##  Scenario: Login as admin with valid account in Layanan Mandiri
##    Given I go to login page "/index.php/layanan-mandiri/masuk"
##    When I enter NIK "8810083472314322"
##    And I enter PIN "881008"
##    And I check show PIN "Tampilkan PIN"
##    And I click button login "Masuk"
##    Then Locate on layanan mandiri page
##
##  Scenario: Login with invalid account in Layanan Mandiri
##    Given I go to login page "/index.php/layanan-mandiri/masuk"
##    When I enter NIK "Wrong123"
##    And I enter PIN "It's Wrong"
##    And I check show PIN "Tamplikan kata sandi"
##    And I click button login "Masuk"
##    Then validate failed message
##
##  Scenario: Try SQL Injection in Layanan Mandiri
##    Given I go to login page "/index.php/layanan-mandiri/masuk"
##    When I enter username '" or ""="'
##    And I enter password '" or ""="'
##    And I check show password "Tamplikan kata sandi"
##    And I click button login "Masuk"
##    Then validate failed message
##
##  Scenario: Only click button login in Layanan Mandiri
##    Given I go to login page "/index.php/layanan-mandiri/masuk"
##    When I click button login "Masuk"
##    Then validate failed message
##
##  Scenario: Only click button login in login with E-KTP
##    Given I go to login page "/index.php/layanan-mandiri/masuk-ektp"
##    When I click button login "Masuk"
##    Then validate failed message
##
##  Scenario: Only click button Buat Akun in Daftar page layanan mandiri
##    Given I go to register page "/index.php/layanan-mandiri/daftar"
##    When I click button login "Masuk"
##    Then validate failed message
##
##  Scenario: Catch length error validation
##    Given I go to register page "/index.php/layanan-mandiri/daftar"
##    When I fill 357 in NIK Field
##    And I fill 456 in KK Field
##    And I fill 123 in PIN Field
##    And I fill 123 in Konfirmasi PIN field
##    Then validate failed message
