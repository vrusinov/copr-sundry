%global provider        github
%global provider_tld    com
%global project         calmh
%global repo            xdr
%global provider_prefix %{provider}.%{provider_tld}/%{project}/%{repo}
%global import_path     github.com/%{project}/%{repo}

%global debug_package   %{nil}

Name:           golang-github-calmh-%{repo}
Version:        2.0.0
Release:        1%{?dist}
Summary:        XDR marshalling/unmarshalling library
License:        MIT
URL:            https://%{provider_prefix}
Source0:        https://%{provider_prefix}/archive/v%{version}.tar.gz

BuildRequires:  golang

%description
%{summary}

%package devel
Summary:       %{summary}
BuildArch:     noarch

Provides:      golang(%{import_path}) = %{version}-%{release}

%description devel
%{summary}

%prep
%setup -q -n %{repo}-%{version}

%build

%install
# source codes for building projects
install -d -p %{buildroot}/%{gopath}/src/%{import_path}/
for ext in go s; do
    # find all *.go but no *_test.go files.
    for file in $(find . -iname "*.$ext" \! -iname "*_test.go") ; do
        install -d -p %{buildroot}/%{gopath}/src/%{import_path}/$(dirname $file)
        cp -pav $file %{buildroot}/%{gopath}/src/%{import_path}/$file
    done
done

%files -n %{name}-devel
%license LICENSE
%doc README.md
%dir %{gopath}/src/%{import_path}
/usr/share/gocode/src/github.com/calmh/xdr/cmd/genxdr/main.go
/usr/share/gocode/src/github.com/calmh/xdr/common.go
/usr/share/gocode/src/github.com/calmh/xdr/doc.go
/usr/share/gocode/src/github.com/calmh/xdr/marshaller.go
/usr/share/gocode/src/github.com/calmh/xdr/unmarshal.go

%changelog
* Thu Jun 23 2016 Vladimir Rusinov <vrusinov@google.com> 2.0.0-1
- First version.
