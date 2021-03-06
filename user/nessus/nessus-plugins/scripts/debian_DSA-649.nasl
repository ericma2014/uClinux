# This script was automatically generated from the dsa-649
# Debian Security Advisory
# It is released under the Nessus Script Licence.
# Advisory is copyright 1997-2004 Software in the Public Interest, Inc.
# See http://www.debian.org/license
# DSA2nasl Convertor is copyright 2004 Michel Arboi

if (! defined_func('bn_random')) exit(0);

desc = '
A buffer overflow has been discovered in xtrlock, a minimal X display
lock program which can be exploited by a malicious local attacker to
crash the lock program and take over the desktop session.
For the stable distribution (woody) this problem has been fixed in
version 2.0-6woody2.
For the unstable distribution (sid) this problem has been fixed in
version 2.0-9.
We recommend that you upgrade your xtrlock package.


Solution : http://www.debian.org/security/2005/dsa-649
Risk factor : High';

if (description) {
 script_id(16233);
 script_version("$Revision: 1.4 $");
 script_xref(name: "DSA", value: "649");
 script_cve_id("CVE-2005-0079");

 script_description(english: desc);
 script_copyright(english: "This script is (C) 2005 Michel Arboi <mikhail@nessus.org>");
 script_name(english: "[DSA649] DSA-649-1 xtrlock");
 script_category(ACT_GATHER_INFO);
 script_family(english: "Debian Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 script_require_keys("Host/Debian/dpkg-l");
 script_summary(english: "DSA-649-1 xtrlock");
 exit(0);
}

include("debian_package.inc");

w = 0;
if (deb_check(prefix: 'xtrlock', release: '3.0', reference: '2.0-6woody2')) {
 w ++;
 if (report_verbosity > 0) desc = strcat(desc, '\nThe package xtrlock is vulnerable in Debian 3.0.\nUpgrade to xtrlock_2.0-6woody2\n');
}
if (deb_check(prefix: 'xtrlock', release: '3.1', reference: '2.0-9')) {
 w ++;
 if (report_verbosity > 0) desc = strcat(desc, '\nThe package xtrlock is vulnerable in Debian 3.1.\nUpgrade to xtrlock_2.0-9\n');
}
if (deb_check(prefix: 'xtrlock', release: '3.0', reference: '2.0-6woody2')) {
 w ++;
 if (report_verbosity > 0) desc = strcat(desc, '\nThe package xtrlock is vulnerable in Debian woody.\nUpgrade to xtrlock_2.0-6woody2\n');
}
if (w) { security_hole(port: 0, data: desc); }
