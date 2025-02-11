#!/bin/bash

# ---------------------------------------------------------------------------------------------------------------------------------------------------"
# ---------------------------------------------------------------------------------------------------------------------------------------------------"
# ---------------------------------------------------------------------------------------------------------------------------------------------------"
# Variables for install scripts
#
#  AI OPS
#
# ©2020 nikh@ch.ibm.com
# ---------------------------------------------------------------------------------------------------------------------------------------------------"
# ---------------------------------------------------------------------------------------------------------------------------------------------------"
# ---------------------------------------------------------------------------------------------------------------------------------------------------"
# ---------------------------------------------------------------------------------------------------------------------------------------------------"
  
  
  
    # ---------------------------------------------------------------------------------------------------------------------------------------------------"
    # Prerequisites
    # ---------------------------------------------------------------------------------------------------------------------------------------------------"

         # Create more output 
        export VERBOSE_INSTALL=false




    # ---------------------------------------------------------------------------------------------------------------------------------------------------"
    # Watson AIOps AI Manager
    # ---------------------------------------------------------------------------------------------------------------------------------------------------"


        # WAIOPS instance name
        export WAIOPS_NAME=ibm-aiops


        # WAIOPS AI Manager install namespace (default is aiops)
        export WAIOPS_NAMESPACE=aiops


        # WAIOPS Storage Class (ibmc-file-gold-gid, rook-cephfs, nfs-client, ...)
        #export WAIOPS_STORAGE_CLASS_FILE=rook-cephfs
        export WAIOPS_STORAGE_CLASS_FILE=ibmc-file-gold-gid
        #export WAIOPS_AI_MGR_STORAGE_CLASS_FILE=nfs-client
        

        # WAIOPS Large Storage Class (ibmc-file-gold-gid, rook-cephfs, nfs-client, ...)
        #export WAIOPS_STORAGE_CLASS_LARGE_BLOCK=rook-cephfs
        export WAIOPS_STORAGE_CLASS_LARGE_BLOCK=ibmc-file-gold-gid
        #export WAIOPS_STORAGE_CLASS_LARGE_BLOCK=nfs-client

     
        # Size of the install (small: PoC/Demo, medium, tall)
        export WAIOPS_SIZE=small


        # Minimum number of Pods for Namespace
        export WAIOPS_PODS_COUNT_EXPECTED=144
        export CS_PODS_COUNT_EXPECTED=32

    # ---------------------------------------------------------------------------------------------------------------------------------------------------"
    # Add-ons
    # ---------------------------------------------------------------------------------------------------------------------------------------------------"

        # Install Humio and Fluentbit (not implemented yet)
        export INSTALL_HUMIO=true

        # Install LDAP Server
        export INSTALL_LDAP=true

        # Demo Applications
        export INSTALL_DEMO=true