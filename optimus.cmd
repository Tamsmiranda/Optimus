@ECHO OFF

SYSTEMINFO | findstr /c:"Total Physical Memory:" > totmem.out
for /f "tokens=4* delims=: " %%a in (totmem.out) do set TotalMemWithComma=%%a
set TotalMem=%TotalMemWithComma:,=%
if /i %Totalmem% lss 256 GOTO 256 else GOTO 1024

IF EXIST TOTMEM.OUT DEL TOTMEM.OUT

:256
:512
ECHO "256"
GOTO END
:1024
ECHO "1024"
GOTO END

REM #01 Bloquear acesso ao Painel de Controle
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoControlPanel /t REG_DWORD /d 0x00000001 /f

REM #02 Forçar o estilo clássico no Painel de Controle
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v ForceClassicControlPanel /t REG_DWORD /d 0x00000001 /f

REM #03 Bloquear a alteração do Papel de Parede
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoDesktopCleanupWizard /t REG_DWORD /d 0x00000001 /f

REM #04 Desabilitar a Limpeza da Área de Trabalho
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoDesktopCleanupWizard /t REG_DWORD /d 0x00000001 /f

REM #05 Remover a Lixeira da Área de Trabalho
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /v {645FF040-5081-101B-9F08-00AA002F954E} /t REG_DWORD /d 0x00000001 /f

REM #06 Remover Meus Documentos da Área de Trabalho
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /v {450D8FBA-AD25-11D0-98A8-0800361B1103} /t REG_DWORD /d 0x00000001 /f

REM #07 Remover Meu Computador da Área de Trabalho
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum" /v {20D04FE0-3AEA-1069-A2D8-08002B30309D} /t REG_DWORD /d 0x00000001 /f

REM #08 Remover "Propriedades" do Menu de Contexto de Meus Documentos
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoPropertiesMyDocuments /t REG_DWORD /d 0x00000001 /f

REM #09 Remover "Propriedades" do Menu de Contexto de Meu Computador
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoPropertiesMyComputer /t REG_DWORD /d 0x00000001 /f

REM #10 Remover "Propriedades" do Menu de Contexto da Lixeira
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoPropertiesRecycleBin /t REG_DWORD /d 0x00000001 /f

REM #11 Ocultar Meus Locais de Rede da Área de Trabalho
REM REG ADD"HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoNetHood /t REG_DWORD /d 0x00000001 /f

REM #12 Remover o Internet Explorer da Área de Trabalho
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoInternetIcon /t REG_DWORD /d 0x00000001 /f

REM #13 Não permitir que o usuário altere o caminho de Meus Documentos
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v DisablePersonalDirChange /t REG_DWORD /d 0x00000001 /f

REM #14 Não Permitir o Compartilhamento de arquivos recentemente abertos
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoRecentDocsNetHood /t REG_DWORD /d 0x00000001 /f

REM #15 Remover Logoff do Menu Iniciar
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoLogoff /t REG_DWORD /d 0x00000001 /f
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v ForceStartMenuLogOff /t REG_DWORD /d 0x00000000 /f

REM #16 Remover e Impedir Acesso a Opção "Desligar" do Menu Iniciar
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoClose /t REG_DWORD /d 0x00000001 /f

REM #17 Não manter Histórico de Documentos abertos recentemente
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoRecentDocHistory /t REG_DWORD /d 0x00000001 /f

REM #18 Limpar Histórico de Documentos abertos recentemente ao sair
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v ClearRecentDocsOnExit /t REG_DWORD /d 0x00000001 /f

REM #19 Remover Menus Personalizados
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v Intellimenus /t REG_DWORD /d 0x00000001 /f

REM #20 Desativar Rastreamento do Usuário
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoInstrumentation /t REG_DWORD /d 0x00000001 /f

REM #21 Bloquear "Barra de Tarefas"
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v LockTaskbar /t REG_DWORD /d 0x00000001 /f

REM #22 Forçar "Menu Iniciar" no estilo Clássico
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoSimpleStartMenu /t REG_DWORD /d 0x00000001 /f

REM #23 Remover as dicas dos balões nos itens do "Menu Iniciar"
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoSMBalloonTip /t REG_DWORD /d 0x00000001 /f

REM #24 Não Exibir "Barras de Ferramentas Personalizadas" na "Barra de Tarefas"
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoToolbarOnTaskbar /t REG_DWORD /d 0x00000001 /f

REM #25 Desabilitar Atualizações Automáticas do Windows
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoAutoUpdate /t REG_DWORD /d 0x00000001 /f

REM #26 Remover o "Gerenciador de Tarefas" [Ctrl+Alt+Del]
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 0x00000001 /f

REM #27 Limpar o Histórico de Urls acessadas no Internet Explorer a cada 1 dia
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Url History" /v DaysToKeep /t REG_DWORD /d 0x00000001 /f

REM #28 Bloco de Notas como Editor Html padrão no Internet Explorer
REM REG ADD "HKCU\Software\Microsoft\Internet Explorer\Default HTML Editor" /v Description /t REG_SZ /v "Bloco de notas" /f

REM #29 Não Permitir o Internet Explorer coletar informações do AutoCompletar
REM REG ADD "HKCU\Software\Microsoft\Internet Explorer\Main" /v Use FormSuggest /t REG_SZ /d no /f
REM REG ADD "HKCU\Software\Microsoft\Internet Explorer\Main" /v FormSuggest Passwords /t REG_SZ /d no /f
REM REG ADD "HKCU\Software\Microsoft\Internet Explorer\Main" /v FormSuggest PW Ask /t REG_SZ /d no /f

REM #30 Habilitar o Bloqueio de Foco
REM REG ADD "HKCU\Control Panel\Desktop" /v ForegroundLockTimeout /t REG_DWORD /d 0x00030d40 /f
REM REG ADD "HKU\.DEFAULT\Control Panel\Desktop" /v ForegroundLockTimeout /t REG_DWORD /d 0x00030d40 /f

REM #31 Finalização Automática das tarefas
REM REG ADD "HKCU\Control Panel\Desktop" /v AutoEndTasks /t REG_SZ /d 1 /f
REM REG ADD "HKU\.DEFAULT\Control Panel\Desktop" /v AutoEndTasks /t REG_SZ /d 1 /f

REM #32 Optimização no Boot
REM REG ADD "HKLM\SOFTWARE\Microsoft\Dfrg\BootOptimizeFunction" /v Enable /t REG_SZ /d Y /f
REM REG ADD "HKLM\SOFTWARE\Microsoft\Dfrg\BootOptimizeFunction" /v OptimizeComplete /t REG_SZ /d Yes /f

REM #33 Ativar Num-Lock quando Entrar no Windows
REM REG ADD "HKCU\Control Panel\Keyboard\" /v InitialKeyboardIndicators /t REG_SZ /d 2 /f
REM REG ADD "HKU\.DEFAULT\Control Panel\Desktop" /v InitialKeyboardIndicators /t REG_SZ /d 2 /fboardIndicators /t REG_SZ /d 2 /f

REM #34 Menu Iniciar Máis Rápido
REM REG ADD "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 100 /f
REM REG ADD "HKU\.DEFAULT\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 100 /f

REM #35 Descarregar DLLs inutlizadas da Memória
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v AlwaysUnloadDLL /t REG_SZ /d 1 /f

REM #36 Aumentar o Número de Downloads Simultâneos no Internet Explorer
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v MaxConnectionsPer1_0Server /t REG_DWORD /d 0x0000000a /f
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v MaxConnectionsPerServer /t REG_DWORD /d 0000000a /f

REM #37 Aumentar a Taxa de Upload
REM REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v DefaultSendWindow /t REG_DWORD /d 0x00018000 /f
REM REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v EnablePMTUDiscovery /t REG_DWORD /d 0x00000001 /f

REM #38 Limpeza de Disco Mais Eficaz (Prevenção contra Travamentos)
REM REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Compress old files" /f

REM #39 Limpar o Arquivo de Troca ao Encerrar o Windows
REM REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v ClearPageFileATShutdown /t REG_SZ /d 1 /f

REM #40 Otimização TCP/IP
REM REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Lanmanserver\parameters" /v SizReqBuf /t REG_DWORD /d 0x00014596 /f
REM REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v class /t REG_DWORD /d 0x00000001 /f
REM REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v DnsPriority /t REG_DWORD /d 0x00000007 /f
REM REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v HostsPriority /t REG_DWORD /d 0x00000006 /f
REM REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v LocalPriority /t REG_DWORD /d 0x00000005 /f
REM REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v NetbtPriority /t REG_DWORD /d 0x00000008 /f

REM #41 Pesquisa de Computadores Mais Eficaz
REM REG DELETE "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\RemoteComputer\NameSpace\{D6277990-4C6A-11CF-8D87-00AA0060F5BF}" /f

REM #42 Desabilitar Cache para Thumbnails (Miniaturas)
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v DisableThumbnailCache /t REG_SZ /d 1 /f

REM #43 Otimização para o Cache de DNS
REM REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v CacheHashTableBucketSize /t REG_DWORD /d 0x00000001 /f
REM REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v CacheHashTableSize /t REG_DWORD /d 0x00000180 /f
REM REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v MaxCacheEntryTtLimit /t REG_DWORD /d 0x0000fa00 /f
REM REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v MaxSOACacheEntryTtLimit /t REG_DWORD /d 0x0000012d /f

REM #44 Remover Executar do Menu Iniciar
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoRun /t REG_DWORD /d 0x00000001 /f

REM #45 Esconder Relógio do Windows
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v HideClock /t REG_DWORD /d 0x00000001 /f

REM #46 Limpar Arquivos Temporários do Internet Explorer
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Cache" /v Persistent /t REG_DWORD /d 0x00000000 /f

REM #47 Desabilitar a Notificação de Antivírus Desativado
REM REG ADD "HKLM\Software\Microsoft\Security Center" /v AntiVirusDisableNotify /t REG_DWORD /d 0x00000001 /f

REM #48 Desabilitar a Notificação de Firewall Desativado
REM REG ADD "HKLM\Software\Microsoft\Security Center" /v FirewallDisableNotify /t REG_DWORD /d 0x00000001 /f

REM #49 Desabilitar a Notificação de Atualizações Automáticas Desativada
REM REG ADD "HKLM\Software\Microsoft\Security Center" /v UpdatesDisableNotify /t REG_DWORD /d 0x00000001 /f

REM #50 Disabilitar Auto-Run do CD-ROM
REM REG ADD "HKLM\Software\CurrentControlSet\Services\Cdrom" /v AutoRun /t REG_DWORD /d 0x00000001 /f

REM #51 Desabilitar o Sistema de Encriptação de Arquivos
REM REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion\EFS" /v EfsConfiguratiom /t REG_DWORD /d 0x00000001 /f

REM #52 Desabilitar Mensagem de Notificação de Espaço em Disco Insuficiente
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoLowDiskSpaceChecks /t REG_DWORD /d 0x00000001 /f

REM #53 Disabilitar Beeps de Erros
REM REG ADD "HKCU\Control Panel\Sound" /v Beep /t REG_SZ /d no /f

REM #54 Desabilitar Restauração de Sistema
REM REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore\" /v DisableSR /t REG_DWORD /d 0x00000001 /f

REM #55 Desabilitar Windows Messenger
REM REG ADD "HKLM\Software\Policies\Microsoft\Messenger\Client" /v PreventRun /t REG_DWORD /d 0x00000001 /f

REM #56 Disable Windows Xp Firewall
REM REG ADD "HKLM\System\CurrentControlSet\Serices\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v EnableFirewall /t REG_DWORD /d 0x00000000 /f

REM #57 Mostrar a Versão do Windows no Desktop
REM REG ADD "HKCU\Control Panel\Desktop" /v PaintDesktopVersion /t REG_DWORD /d 0x00000001 /f

REM #58 Editar as Informações de Registro do Windows
REM REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v RegisteredOrganization /t REG_SZ /d CompanyNameHere /f
REM REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v RegisteredOwner /t REG_SZ /d OwnerNameHere /f

REM #59 Alterar Diretório do CD do Windows
REM REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v SourcePath /t REG_SZ /d D:\I836 /f

REM #60 Alterar a Pasta Root do Sistema [Padrão: C:\Windows]
REM REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion" /v SystemRoot /t REG_SZ /d C:\Windows /f

REM #61 Alterar a Descrição do Computador
REM REG ADD "HKLM\System\CurrentControlSet\Services\Lanmanserver\parameters" /v srvcomment /t REG_SZ /d descrição /f

REM #62 Habilitar Assistência Remota
REM REG ADD "HKLM\System\CurrentControlSet\Control\Terminal Server" /v AllowTSConnections /t REG_DWORD /d 0x00000001 /f
REM REG ADD "HKLM\System\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0x00000001 /f
REM REG ADD "HKLM\System\CurrentControlSet\Control\Terminal Server" /v fAllowToGetHelp /t REG_DWORD /d 0x00000001 /f

REM #63 Desocultar o Relógio do Windows
REM REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v HideClock /t REG_DWORD /d 0x00000000 /f 

:END

