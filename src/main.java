/*
 *
 * Author : fcbruce <fcbruce8964@gmail.com>
 *
 * Time : Fri 21 Oct 2016 23:09:31
 *
 */

import ml.dmlc.xgboost4j.java.*;

public class main {
  
  void solve() {

    try {
      XGBoost.loadModel("0001.model");
    } catch (Exception e) {
    }
    
    
    
  }
  
  void run() throws Exception {
    solve();
  }
  
  public static void main(String[] args) throws Exception { new main().run(); }
  
}
