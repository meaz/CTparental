%define	name ctparental
%define version	4.20.13m
%define release	1

Summary: Parental Controls
Name: %{name}
Version: %{version}
Release: %{release}
BuildArch: noarch
License: GPL
Group: Amusements/Graphics
BuildArch: noarch
BuildRoot: %{_builddir}/%{name}-root
URL: https://github.com/marsat/CTparental
Provides: %{name}
Requires: dnsmasq , lighttpd , lighttpd-mod_auth , lighttpd-mod_magnet , perl , sudo , wget , php-cgi , libnotify , notification-daemon , rsyslog , e2guardian , privoxy , newt , shorewall , shorewall-ipv6 , shorewall-core , lib64nss3 

%description
CTparental est un Contrôle parental 
basé sur dnsmasq , e2guardian , privoxy , shorewall(iptables et iptable6) 
et la blackliste de l’université de Toulouse.

%prep
exit 0

%build
exit 0

%install
rm -rf $RPM_BUILD_ROOT
mkdir -p $RPM_BUILD_ROOT/usr/bin
mkdir -p $RPM_BUILD_ROOT/etc/CTparental
mkdir -p $RPM_BUILD_ROOT/usr/share/locale/fr_FR/LC_MESSAGES
mkdir -p $RPM_BUILD_ROOT/usr/share/CTparental
mkdir -p $RPM_BUILD_ROOT/usr/share/man/man1
install -m755 $RPM_BUILD_DIR/%{name}-%{version}/CTparental $RPM_BUILD_ROOT/usr/bin
install -m755 $RPM_BUILD_DIR/%{name}-%{version}/CTparental-bl-infos $RPM_BUILD_ROOT/usr/bin
install -m644 $RPM_BUILD_DIR/%{name}-%{version}/debian/CTparental.conf $RPM_BUILD_ROOT/etc/CTparental
install -m644 $RPM_BUILD_DIR/%{name}-%{version}/mageia/dist.conf $RPM_BUILD_ROOT/etc/CTparental
install -m644 $RPM_BUILD_DIR/%{name}-%{version}/locale/fr_FR/LC_MESSAGES/ctparental.mo $RPM_BUILD_ROOT/usr/share/locale/fr_FR/LC_MESSAGES/
cp -r $RPM_BUILD_DIR/%{name}-%{version}/www $RPM_BUILD_ROOT/usr/share/CTparental
cp -r $RPM_BUILD_DIR/%{name}-%{version}/confe2guardian $RPM_BUILD_ROOT/usr/share/CTparental
install -m644 $RPM_BUILD_DIR/%{name}-%{version}/man/CTparental.1.gz $RPM_BUILD_ROOT/usr/share/man/man1

exit 0

%clean
exit 0

%files
%defattr(-,root,root)
/


%post
ping -c3 www.google.fr > /dev/null
test="$?"
if [ "$test" -eq 0 ];then
	/usr/bin/CTparental -i -nodep -nomanuel  1>&2 
else
echo "problême de conection internet veuiller lancer la commande suivant quant celui-ci reviendras."
echo '/usr/bin/CTparental -i -nodep -nomanuel  1>&2' 
fi
exit 0

%preun
CTparental -u -nodep -nomanuel  1>&2
exit 0
