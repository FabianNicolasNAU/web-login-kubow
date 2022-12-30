module kubow.strategies;
import model "LoginExample:Acme" { LoginExampleSystem as M, KubernetesFam as K };
import lib "tactics.s";

define boolean canAddReplica = M.kubernetesD.maxReplicas > M.kubernetesD.desiredReplicas;

define boolean highTraffic = M.kubeZnnS.traffic >= 50;
define boolean lowTraffic = M.kubeZnnS.traffic < 50;

strategy blockTraffic [ highTraffic ] {
  t0: (highTraffic) -> blockIncomingTraffic() @[10000 /*ms*/] {
    t0a: (success) -> done;
  }
  t1: (default) -> TNULL;
}

strategy allowTraffic [ lowTraffic ] {
  t0: (lowTraffic) -> allowIncomingTraffic() @[10000 /*ms*/] {
    t0a: (success) -> done;
  }
  t1: (default) -> TNULL;
}
