FROM nginx:latest

# Install dependencies for Cortex
RUN apt-get update && apt-get install -y openssl libcurl4 jq && rm -rf /var/lib/apt/lists/*

# Copy installer from the GH Action
COPY cortex_agent.sh /tmp/cortex_agent.sh

# Install agent (installer usually starts the service automatically)
RUN chmod +x /tmp/cortex_agent.sh && \
    /tmp/cortex_agent.sh && \
    rm /tmp/cortex_agent.sh

# Copy your entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
