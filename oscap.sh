#!/bin/bash
set -x
sudo dnf update -y
sudo dnf install scap-security-guide -y
sudo dnf install scap-workbench -y
oscap xccdf eval --remediate --profile xccdf_org.ssgproject.content_profile_stig --report report.html /usr/share/xml/scap/ssg/content/ssg-rhel8-ds.xml
