-- Fix execution_order for all 21 core scripts
UPDATE scripts SET execution_order = CASE filename
    WHEN 'core_dns.sh'             THEN 1
    WHEN 'core_repositories.sh'    THEN 2
    WHEN 'core_packages.sh'        THEN 3
    WHEN 'core_legados.sh'         THEN 4
    WHEN 'core_apps.sh'            THEN 5
    WHEN 'core_domain.sh'          THEN 6
    WHEN 'core_ssh.sh'             THEN 7
    WHEN 'core_browser.sh'         THEN 8
    WHEN 'core_inventory.sh'       THEN 9
    WHEN 'core_printers.sh'        THEN 10
    WHEN 'core_vnc.sh'             THEN 11
    WHEN 'core_conky.sh'           THEN 12
    WHEN 'core_config.sh'          THEN 13
    WHEN 'core_branding.sh'        THEN 14
    WHEN 'core_logon.sh'           THEN 15
    WHEN 'core_logoff.sh'          THEN 16
    WHEN 'core_session_lightdm.sh' THEN 17
    WHEN 'core_session_gdm3.sh'    THEN 18
    WHEN 'core_session_sddm.sh'    THEN 19
    WHEN 'core_agent.sh'           THEN 20
    WHEN 'core_proxy.sh'           THEN 21
    ELSE execution_order
END
WHERE is_core = TRUE;
