
# argocd 서비스 포트포워드
kubectl port-forward -n argocd svc/argocd-server 8080:443

# admin 비밀번호 가져오기
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo

# 'runbyme' 로 비밀번호 설정
kubectl -n argocd patch secret argocd-secret \                        
  -p '{"stringData": {
    "admin.password": "$2a$10$5gJ82qSF2p5TwCX1ICVAyeevY94YZaf6/yWLctmeE74upIs7bk/ly"
  }}'

  