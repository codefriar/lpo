public with sharing class ParkAnimalSightingController {

  //translates Park ID into list of Sighted Known Animals
  @AuraEnabled
  static public List<Animal__c> findAnimalImages(id parkId) {
    List<Animal_Sighting__c> sas = [SELECT ID, Animal__c, Animal__r.Name, Animal__r.Image_Link__c from Animal_Sighting__c where Park__c =: parkID];
    List<Animal__c> kas = new List<Animal__c>();
    for(Animal_Sighting__c a : sas) {
      kas.add(new Animal__c(name = a.Animal__r.Name, Image_Link__c = a.Animal__r.Image_Link__c));
    }
        
      return kas;
    }
}