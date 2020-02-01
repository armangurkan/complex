curl -sL https://istio.io/downloadIstioctl | sh -
sleep 1
export PATH=$PATH:$HOME/.istioctl/bin
sleep 5
istioctl verify-install
