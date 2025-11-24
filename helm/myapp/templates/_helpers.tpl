{{- define "myapp.fullname" -}}
{{- printf "%s" .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- define "myapp.labels" -}}
app.kubernetes.io/name: myapp
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
{{- define "myapp.selectorLabels" -}}
app.kubernetes.io/name: myapp
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
