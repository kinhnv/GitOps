
{{- define "server.getVolumes" -}}
  {{- range $containerIndex, $containerValue := . -}}
    {{- range $volumeIndex, $volumeValue := $containerValue.volumes -}}
      {{- "volume" -}}-{{- $containerIndex -}}: "{{- $volumeIndex -}}"
    {{- end -}}
  {{- end -}}
{{- end -}}
{{- define "server.ports" -}}
  {{- range $containerIndex, $containerValue := . -}}
    {{- range $portIndex, $portValue := $containerValue.ports -}}
      {{- "port" -}}-{{- $containerIndex -}}: "{{- $portIndex -}}"
    {{- end -}}
  {{- end -}}
{{- end -}}
{{- define "server.exteralPorts" -}}
  {{- range $containerIndex, $containerValue := . -}}
    {{- range $portIndex, $portValue := $containerValue.ports -}}
      {{- if $portValue.exteralPort }}
      {{- "exteralPort" -}}-{{- $containerIndex -}}: "{{- $portIndex -}}"
      {{ end -}}
    {{- end -}}
  {{- end -}}
{{- end -}}
