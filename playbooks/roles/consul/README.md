#To deploy 
ansible-playbook -i inventory/ lxd.yml -e "{lxd_container_names: [c1, c2, c3]}" -vv
#To deploy client
ansible-playbook -i inventory/ lxd.yml -e "{lxd_container_names: [c1, c2, c3,c4], consul_client: c4}" -vv
