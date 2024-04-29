run:
    ansible-playbook init.yml

[no-exit-message]
lint:
    ansible-lint -p
    ansible-playbook init.yml --syntax-check

[no-exit-message]
setup *ARGS:
    ansible all -m "ansible.builtin.setup" {{ARGS}}
