Feature: Create Project and Tasks

  @smoke
  Scenario Outline: Kullanici card create edebilmeli
    When Kullanici project create edebilmek icin ilgili url e POST metodu ile request atar "idPath","1.0","projectPath","projects","<projectName>"
    And Kullanici project gid yi alir
    Then Kullanici project create edildigini verify eder
    And Olusturulan projelerin varligini Get methodu ile kontrol eder
    When Kullanici task create edebilmek icin ilgili url e POST metodu ile request atar "idPath","1.0","taskPath","tasks","<taskName>"
    And Kullanici task gid yi alir
    Then Kullanici task create edildigini verify eder
    And Kullanici olusturdugu taskleri silebilmek icin DELETE request atar "idPath","1.0","taskPath","tasks", "taskidPath","taskgid"
    And Kullanici olusturdugu projeleri silebilmek icin DELETE request atar "idPath","1.0","projePath","projects", "projectidPath","projectgid"
    Then Olusturulan tasklerin silindigini Get methodu ile kontrol eder "idPath","1.0","taskPath","tasks", "taskidPath","taskgid"
    Then Olusturulan projelerin silindigini Get methodu ile kontrol eder "idPath","1.0","projePath","projects", "projectidPath","projectgid"
    Examples:
      | projectName | taskName   |
      | bekirPro    | bugTask    |
      | bekirProo   | bugFixTask |
      | bekirProoj  | fixTask    |