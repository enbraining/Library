# TL;DR

Headless Service는 CluterIP가 없는 서비스로, `kubectl get svg`를 통해서 서비스를 조회해보면
CluterIP가 none으로 표기되어있는 것을 볼 수 있다. 이는 kube-proxy가 처리하지 않아서 Service를
이용한 로드 밸런싱을 사용할 수 없다.

일반 컨트롤러라면 kube-proxy를 이용해서 로드 밸런싱하지만, Headless Service는 kube-proxy를
통하지 않고 바로 pod에 접근한다.
