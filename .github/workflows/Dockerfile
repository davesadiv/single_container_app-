FROM nginx:stable-alpine

# Install dependencies for the agent (Alpine uses different libs than Ubuntu)
RUN apk add --no-cache bash curl openssl

# The workflow will place this file here during the build
COPY cortex_agent.sh /tmp/cortex_agent.sh

# Install the agent and cleanup
RUN chmod +x /tmp/cortex_agent.sh && \
    /tmp/cortex_agent.sh && \
    rm /tmp/cortex_agent.sh

EXPOSE 80
# Cortex usually runs as a background daemon; Nginx runs in foreground
CMD ["nginx", "-g", "daemon off;"]
