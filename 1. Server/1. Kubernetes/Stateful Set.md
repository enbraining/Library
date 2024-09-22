# TL;DR

Replica Set나 Deployment는 Stateless한 컨트롤러로 즉, 파드가 재시작되면 기존의 상태가
유지되지 않기 때문에 꺼져도 문제가 없는 서버 애플리케이션 등에서 사용될 수 있다. 하지만 데이터베이스와 같이 기존의 상태, 데이터가
유지되어야 하는 경우에는 StatefulSet과 같은 컨트롤러를 사용해야한다.

## Stateless Application

Apache, Spring Boot, Nest.js와 같은 애플리케이션을 구동하는 경우에 사용할 수 있고, 애플리케이션이 여러개 배포되더라도
모두 같은 서비스의 역할을 하며, 레플리카 수 유지를 위해서 언제는 애플리케이션이 복제될 수 있다.

- Stateless한 컨트롤러로 ReplicaSet이 있다.
- 볼륨이 반드시 필요하지 않다.
- 트래픽이 여러 애플리케이션으로 분산된다.

## Stateful Application

MongoDB, PostgreSQL과 같은 애플리케이션을 구동하는 경우에 사용할 수 있고, 각각의 애플리케이션마다 역할이 있기 때문에 함부로
복제될 수는 없고, 기존의 애플리케이션이 죽었을 경우에는 동일한 기능을 하는 애플리케이션이 만들어져야 한다.

- Stateful한 컨트롤러로 StatefulSet이 있다.
- 각각의 애플리케이션마다 역할이 다르기 때문에 볼륨도 따로 나눠져 있어야한다.
- Ex. 메인 DB와 서브 DB, Read & Write

### StatefulSet

Stateful 애플리케이션이 될 수 있도록 관리해주는 컨트롤러이다. 목적에 따라 그룹에 포함된 Pod에 접근하기 위해서
Headless Service를 사용한다.

- replicas에 따라 Ordinary Index 방식으로 파드가 생성된다. (pod-0, pod-1, pod-2 ...)
- 기존의 파드를 지우고 재생성한다면, 기존 이름으로 생성된다.
- replicas가 0이라면, 마지막 인덱스 파드부터 순차적으로 지워진다. (pod-8, pod-7, pod-6 ...)

![Headless Diagram](/x.%20images/k8s%20headless%20diagram.png)
