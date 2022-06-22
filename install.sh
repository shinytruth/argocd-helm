#! /bin/zsh

if [ ! $1 ]
  then
    echo "배포하고자하는 환경을 입력하세요 (dev|stg|prd)"
    exit
  fi

helm install rbm-argocd-$1 -n argocd ./rbm-argocd --values rbm-argocd/$1/values.yaml