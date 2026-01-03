# Use a imagem oficial do n8n como base. Atualizado 03/01/2026
FROM n8nio/n8n

# Mude para o usuário root para instalar pacotes
USER root

# Instale o ffmpeg
# O n8n é baseado em Alpine Linux, então usamos o gerenciador de pacotes apk
RUN apk add --no-cache ffmpeg

# Mude de volta para o usuário padrão do n8n
USER node
