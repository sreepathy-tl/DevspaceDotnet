{{/*
    Builds the image path.
*/}}
{{- define "common.image" -}}
{{- $registryName := .imageRoot.registry -}}
{{- $repositoryName := .imageRoot.repository -}}
{{- $separator := ":" -}}
{{- $termination := .imageRoot.tag | toString -}}
{{- if .environment.localDev -}}
    {{- $registryName = .registries.localRegistry -}}
{{- end -}}
{{- if .imageRoot.digest -}}
    {{- $separator = "@" -}}
    {{- $termination = .imageRoot.digest | toString -}}
{{- end -}}
{{- printf "%s/%s%s%s" $registryName $repositoryName $separator $termination -}}
{{- end -}}

{{/*
   Provides full name of the object
*/}}
{{- define "common.fullname" -}}
{{- if contains .Chart.Name .Release.Name -}}
{{- printf "%s" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{/*
   Provides default labels
*/}}
{{- define "common.labels" -}}
    app: fs-dotnet
{{- end -}}
