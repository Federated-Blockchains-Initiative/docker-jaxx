# Load default values if empty
VNC_PORT=${TCP_PORT_8239:-8239}
WEB_PORT=${TCP_PORT_8280:-8280} 
VNC_CREDENTIALS=/nobody/.vnc_passwd

APP_NAME="Jaxx - Your blockchain interface"

if [[ -n $VNC_PASSWD ]]; then
  VNC_SECURITY="SecurityTypes TLSVnc,VncAuth -PasswordFile ${VNC_CREDENTIALS}"
else
  VNC_SECURITY="SecurityTypes None"
fi
