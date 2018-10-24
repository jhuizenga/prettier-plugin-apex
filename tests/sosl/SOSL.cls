class SOSLClass {
  void simpleSOSL() {
    String a = 'Hello';
    List<List<SObject>> searchResult = [FIND 'FirstLastName'];
    searchResult = [FIND :a];
  }
  void inClause() {
    List<List<SObject>> searchResult;
    searchResult = [FIND 'Hello' IN ALL FIELDS];
    searchResult = [FIND 'Hello' in all fields];
    searchResult = [FIND 'Hello' IN EMAIL FIELDS];
    searchResult = [FIND 'Hello' IN NAME FIELDS];
    searchResult = [FIND 'Hello' IN PHONE FIELDS];
    searchResult = [FIND 'Hello' IN SIDEBAR FIELDS];
  }
  void withDivisionClause() {
    List<List<SObject>> searchResult;
    String a = 'Local';
    searchResult = [FIND 'Hello' WITH Division = 'Global'];
    searchResult = [FIND 'Hello' WITH Division = :a];
  }
  void withDataCategory() {
    List<List<SObject>> searchResult;
    String a = 'Local';
    searchResult = [FIND 'Hello' WITH DATA CATEGORY Location__c AT America__c];
    searchResult = [FIND 'Hello' WITH DATA CATEGORY Geography__c ABOVE France__c AND Product__c AT mobile_phones__c];
    searchResult = [FIND 'Hello' WITH DATA CATEGORY Geography__c below Europe__c];
  }
  void withSnippet() {
    List<List<SObject>> searchResult;
    String a = 'Local';
    searchResult = [FIND 'Hello' WITH SNIPPET];
    searchResult = [FIND 'Hello' WITH SNIPPET (target_length=120)];
    searchResult = [FIND 'Hello' WITH SNIPPET (TARGET_LENGTH=120)];
  }
}