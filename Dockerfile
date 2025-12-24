FROM alpine:3.20

# Install tinyproxy and tini (for proper signal handling)
RUN apk add --no-cache tinyproxy tini

# Create runtime directories with correct ownership
RUN mkdir -p /var/log/tinyproxy /run/tinyproxy \
 && chown -R tinyproxy:tinyproxy /var/log/tinyproxy /run/tinyproxy

# Copy Tinyproxy configuration
COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf

# Expose proxy port
EXPOSE 8888

# Run as non-root user
USER tinyproxy

# Use tini as PID 1 to handle signals correctly
ENTRYPOINT ["/sbin/tini", "--", "tinyproxy"]

# Run in foreground (required for containers)
CMD ["-d"]
