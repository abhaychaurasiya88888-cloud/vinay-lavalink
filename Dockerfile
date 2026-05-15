cat > Dockerfile << 'EOF'
FROM eclipse-temurin:21-jre

WORKDIR /app

COPY . .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
EOF
