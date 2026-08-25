# Demonstração de escalabilidade

Serviço escolhido: *(a definir)*

## Antes

```
kubectl get pods -l app=...
```

## Escalando

```
kubectl scale deployment/... --replicas=3
```

## Evidência de distribuição de carga

Não basta mostrar 3 pods de pé — é preciso evidenciar que a carga **se distribui** entre eles.
Ex.: cada réplica loga seu `hostname` ao atender, e a saída mostra as três aparecendo.

Capturas em `evidencias/`.
