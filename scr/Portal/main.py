import streamlit as st


cache = st.session_state

main_pg_cadastro = { "hidden": [st.Page(r".\login.py", title="SIPA Brasil")]}

pg = st.navigation(main_pg_cadastro, position='hidden')

pg.run()