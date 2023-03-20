trigger duplic on Contact (before insert, before update) 
{
  if(trigger.isBefore && (trigger.isUpdate || trigger.isInsert))
  {
      duplicHandler.methodName(trigger.new,trigger.oldMap);
  }
}