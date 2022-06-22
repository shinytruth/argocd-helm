#! /bin/zsh

if [ ! $1 ]
  then
    echo "삭제하고자하는 환경을 입력하세요 (dev|stg|prd)"
    exit
  fi

helm uninstall -n argocd rbm-argocd-$1