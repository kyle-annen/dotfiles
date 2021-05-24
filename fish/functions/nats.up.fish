# Defined interactively
function nats.up
    docker run --rm --name nats-main -d -p 4223:4222 -p 6222:6222 -p 8222:8222 nats
end
