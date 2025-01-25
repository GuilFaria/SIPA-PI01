import streamlit as st


cache = st.session_state

teste = { "hidden": [st.Page(r".\login.py", title="SIPA Brasil")]}

pg = st.navigation(teste, position='hidden')

pg.run()