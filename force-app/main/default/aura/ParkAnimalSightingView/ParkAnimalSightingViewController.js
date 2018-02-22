({
    doInit : function(component,event,handler) {
        var action = component.get("c.findAnimalImages");
        var recordId = component.get("v.recordId");
        action.setParams({'parkId':recordId});
        action.setCallback(this, function(actionResult) {
            var state = actionResult.getState();
            if (component.isValid() && state === "SUCCESS") {
                component.set("v.animals", actionResult.getReturnValue());
            }            
        });
        $A.enqueueAction(action);
    }
})