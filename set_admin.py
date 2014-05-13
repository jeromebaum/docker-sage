from sagenb.notebook.notebook import load_notebook
nb = load_notebook("/")
user_manager = nb.user_manager()
user_manager.set_accounts(True)
user_manager.add_user("admin", "password", "admin@none.test", "user")
nb.save()
