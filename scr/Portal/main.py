import streamlit as st
import os

from streamlit_router import StreamlitRouter

from login import tela_login
from SIPA import teste_main


cache = st.session_state

router = StreamlitRouter()


router.register(tela_login, "/")
router.register(teste_main, "/main")


router.serve()