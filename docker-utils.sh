#!/bin/false
function docker_get_container_ip {
	set -eu
	local container_id=$1
	docker inspect -format='{{.NetworkSettings.IPAddress}}' ${container_id}
}