public with sharing class DeeplyNestedIfStatement {
    public void DeeplyNestedIfStatement(Integer x, Integer y, Integer z) {
        if (x>y) {
          if (y>z) {
            if (z==x) {
             //Bad: This is too deep!
             if (z>y) {  
                Integer u = x+y+z;
              }
            }
          }
        }
      }
}