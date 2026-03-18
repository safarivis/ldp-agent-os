# Fresh `_agent` Root Bootstrap Commands

Use this when another pi agent just needs the shortest copy-paste setup.

## Copy-paste block

```bash
USER_HOME="/home/test"
mkdir -p "$USER_HOME/_agent"/{memory,templates/cell,templates/memory,workspace,taste,knowledge}
cp /home/ldp/_agent/agent.md "$USER_HOME/_agent/agent.md"
cp /home/ldp/_agent/templates/memory/soul.md "$USER_HOME/_agent/memory/soul.md"
cp /home/ldp/_agent/templates/memory/user.md "$USER_HOME/_agent/memory/user.md"
cp /home/ldp/_agent/templates/memory/context.md "$USER_HOME/_agent/memory/context.md"
cp /home/ldp/_agent/templates/memory/telos.md "$USER_HOME/_agent/memory/telos.md"
cp /home/ldp/_agent/templates/cell/agent.md "$USER_HOME/_agent/templates/cell/agent.md"
cp /home/ldp/_agent/templates/cell/context.md "$USER_HOME/_agent/templates/cell/context.md"
cp /home/ldp/_agent/templates/cell/notes.md "$USER_HOME/_agent/templates/cell/notes.md"
cp /home/ldp/_agent/templates/cell/create-cell.sh "$USER_HOME/_agent/templates/cell/create-cell.sh"
chmod +x "$USER_HOME/_agent/templates/cell/create-cell.sh"
```

## Then adapt

Edit these first:
- `$USER_HOME/_agent/memory/user.md`
- `$USER_HOME/_agent/memory/context.md`
- `$USER_HOME/_agent/memory/telos.md`

Keep `soul.md` mostly stable unless the identity/philosophy truly differs.

## See also

- `templates/ROOT-BOOTSTRAP.md`
- `templates/org-starter-kit/README.md`
- `templates/memory/ROOT-SETUP.md`
