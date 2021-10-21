### Ansible

# Configuration management

Ansible was built (and continues to be improved) by developers and
sysadmins who know the command line—and want to make a tool that helps them
manage their servers exactly the same as they have in the past, but in a repeatable
and centrally managed way. Ansible also has other tricks up its sleeve, making it a
true Swiss Army knife for people involved in DevOps (not just the operations side).

One of Ansible’s greatest strengths is its ability to run regular shell commands
verbatim, so you can take existing scripts and commands and work on converting
them into idempotent playbooks as time allows. For someone (like me) who was
comfortable with the command line, but never became proficient in more complicated
tools like Puppet or Chef (which both required at least a slight understanding
of Ruby and/or a custom language just to get started), Ansible was a breath of fresh
air.

Ansible works by pushing changes out to all your servers (by default), and requires
no extra software to be installed on your servers (thus no extra memory footprint,
and no extra daemon to manage), unlike most other configuration management tools.



# Idempotence

Idempotence is the ability to run an operation which produces the same
result whether run once or multiple times.
An important feature of a configuration management tool is its ability to
ensure the same configuration is maintained whether you run it once or
a thousand times. Many shell scripts have unintended consequences if run
more than once, but Ansible deploys the same configuration to a server over
and over again without making any changes after the first deployment.
In fact, almost every aspect of Ansible modules and commands is idempotent,
and for those that aren’t, Ansible allows you to define when the
given command should be run, and what constitutes a changed or failed
command, so you



- Apply patches and `updates` via `yum` (centos), `apt`(ubuntu), and other package managers.  package(any)
- Check resource usage (disk space, memory, CPU, swap space, network).
- Check log files.
- Manage system users and groups.
- Manage DNS settings, hosts files, etc.
- Copy files to and from servers.
- Deploy applications or run application maintenance.
- Reboot servers.
- Manage cron jobs.




# Ansible Galaxy
Why reinvent the cosmic wheel, search the galaxy far and wide for your favorite playbook.yml

