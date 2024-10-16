Git flow와 Github flow는 브랜치 전략의 일종이다. 여기서 브랜치 전략은 소프트웨어 개발 팀에서 코드를 커밋, 병합 등을 할 때 사용하는 전략이다.

# Git flow

Git flow는 `feature, develop, release, hotfix, master`, 5가지의 브랜치로 분류된다.

기능을 개발할 때 feature 브랜치를 만들고, 개발이 끝나면 develop 브랜치에 머지한다. 그리고 develop 브랜치에서 필요한 작업이 모두 끝났다면, release 브랜치로 분기를 나눈다.

release 브랜치에서 만약 문제가 생긴다면, 해당 브랜치에서 문제를 해결하고 develop 브랜치로 머지한다. release 브랜치의 배포까지 완료되었다면 최종 코드를 develop과 master 브랜치에 머지한다.

hotfix 브랜치는 이미 배포되고 운영되고 있는 소프트웨어에 급하게 해결해야 할 문제가 생겼을 때 사용한다. 다음 버전의 출시를 기다리지 않고 언제든 생길 수 있으며, 작업이 끝나면 hotfix에서 develop, master 순으로 머지된다.

## develop과 master의 차이

develop은 개발이 진행되는 브랜치로, 새로운 기능이 추가되고 수정되는 브랜치이다. master 브랜치는 제품이 안정된 버전으로 배포 가능하며 안정적이며, 테스트가 완료된 코드가 유지되어야 한다.

# Github flow

Github flow는 GitHub 기반의 유연한 개발 워크플로우로 신속한 배포와 효율적인 협업을 지원한다. Github flow는 Git flow와 달리 단일 브랜치를 사용하여 개발하는데, 이는 하나의 버전이 만들어지면 바로 배포될 수 있다는 의미이다.

## 과정

1. Branch 생성: 버그나 새로운 기능을 추가하기 위해서 브랜치를 생성한다.
2. Commit 작성: 브랜치에서 변경 사항을 커밋으로 저장한다.
3. Pull Request: 개발한 기능을 병합하기 위해서 PR을 생성한다.
4. Review: PR의 내용에 이상이 없는지 다른 개발자들이 검토하고 제안한다.
5. Approve & Merge: PR이 승인되면 원래 브랜치로 병합한다.
6. Deploy: 변경 사항은 원래의 브랜치에 반영되었으며, 배포하기 위해서 CI/CD 스크립트 등을 실행하거나, 수동으로 진행한다.
