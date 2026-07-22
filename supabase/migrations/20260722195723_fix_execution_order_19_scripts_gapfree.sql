-- Re-map execution_order for the 19 scripts actually present in the database
-- core_ssh.sh (7) and core_agent.sh (20) do not exist yet; close the gaps
UPDATE scripts SET execution_order = CASE filename
    WHEN 'core_dns.sh'             THEN 1
    WHEN 'core_repositories.sh'    THEN 2
    WHEN 'core_packages.sh'        THEN 3
    WHEN 'core_legados.sh'         THEN 4
    WHEN 'core_apps.sh'            THEN 5
    WHEN 'core_domain.sh'          THEN 6
    WHEN 'core_browser.sh'         THEN 7
    WHEN 'core_inventory.sh'       THEN 8
    WHEN 'core_printers.sh'        THEN 9
    WHEN 'core_vnc.sh'             THEN 10
    WHEN 'core_conky.sh'           THEN 11
    WHEN 'core_config.sh'          THEN 12
    WHEN 'core_branding.sh'        THEN 13
    WHEN 'core_logon.sh'           THEN 14
    WHEN 'core_logoff.sh'          THEN 15
    WHEN 'core_session_lightdm.sh' THEN 16
    WHEN 'core_session_gdm3.sh'    THEN 17
    WHEN 'core_session_sddm.sh'    THEN 18
    WHEN 'core_proxy.sh'           THEN 19
    ELSE execution_order
END
WHERE is_core = TRUE;
