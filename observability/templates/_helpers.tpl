{{/*
Create a default app name.
Truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "observability.label" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 50 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s" .Chart.Name | trunc 50 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "prometheus.label" -}}
{{- default .Chart.Name .Values.prometheus.name | trunc 10 | trimSuffix "-" }}
{{- end -}}

{{- define "grafana.label" -}}
{{- default .Chart.Name .Values.grafana.name | trunc 10 | trimSuffix "-" }}
{{- end -}}
