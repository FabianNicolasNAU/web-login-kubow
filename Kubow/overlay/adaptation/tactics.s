module kubow.strategies;
import model "LoginExample:Acme" { LoginExampleSystem as M, KubernetesFam as K };

tactic blockIncomingTraffic() {
  condition {
    M.nginxS.traffic >= 50;
  }
  action {
    M.blockIncomingTraffic();
  }
  effect @[10000] {
    M.nginxS.traffic == 0;
  }
}

tactic allowIncomingTraffic() {
  condition {
    M.nginxS.traffic < 50;
  }
  action {
    M.allowIncomingTraffic();
  }
  effect @[10000] {
    M.nginxS.traffic > 0;
  }
}