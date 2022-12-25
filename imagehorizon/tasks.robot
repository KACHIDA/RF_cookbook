*** Settings ***
Documentation       Template robot main suite.

Library             ImageHorizonLibrary    reference_folder=img
Library             RPA.Browser


*** Tasks ***
Click Image
    Click Image    rfswarm_BG
    Take A Screenshot
    Click Image    btn_new
    Take A Screenshot
