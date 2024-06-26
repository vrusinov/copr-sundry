# Generated by rust2rpm 24
%bcond_with check
%global debug_package %{nil}

%global crate concolor

Name:           rust-concolor0.0.8
Version:        0.0.8
Release:        1%{?dist}
Summary:        Control console coloring across all dependencies

License:        MIT OR Apache-2.0
URL:            https://crates.io/crates/concolor
Source:         %{crates_source}

BuildRequires:  rust-packaging >= 21

%global _description %{expand:
Control console coloring across all dependencies.}

%description %{_description}

%package        devel
Summary:        %{summary}
BuildArch:      noarch

%description    devel %{_description}

This package contains library source intended for building other packages which
use the "%{crate}" crate.

%files          devel
# FIXME: no license files detected
%doc %{crate_instdir}/README.md
%{crate_instdir}/

%package     -n %{name}+default-devel
Summary:        %{summary}
BuildArch:      noarch

%description -n %{name}+default-devel %{_description}

This package contains library source intended for building other packages which
use the "default" feature of the "%{crate}" crate.

%files       -n %{name}+default-devel
%ghost %{crate_instdir}/Cargo.toml

%package     -n %{name}+api_unstable-devel
Summary:        %{summary}
BuildArch:      noarch

%description -n %{name}+api_unstable-devel %{_description}

This package contains library source intended for building other packages which
use the "api_unstable" feature of the "%{crate}" crate.

%files       -n %{name}+api_unstable-devel
%ghost %{crate_instdir}/Cargo.toml

%package     -n %{name}+atty-devel
Summary:        %{summary}
BuildArch:      noarch

%description -n %{name}+atty-devel %{_description}

This package contains library source intended for building other packages which
use the "atty" feature of the "%{crate}" crate.

%files       -n %{name}+atty-devel
%ghost %{crate_instdir}/Cargo.toml

%package     -n %{name}+auto-devel
Summary:        %{summary}
BuildArch:      noarch

%description -n %{name}+auto-devel %{_description}

This package contains library source intended for building other packages which
use the "auto" feature of the "%{crate}" crate.

%files       -n %{name}+auto-devel
%ghost %{crate_instdir}/Cargo.toml

%package     -n %{name}+bitflags-devel
Summary:        %{summary}
BuildArch:      noarch

%description -n %{name}+bitflags-devel %{_description}

This package contains library source intended for building other packages which
use the "bitflags" feature of the "%{crate}" crate.

%files       -n %{name}+bitflags-devel
%ghost %{crate_instdir}/Cargo.toml

%package     -n %{name}+clicolor-devel
Summary:        %{summary}
BuildArch:      noarch

%description -n %{name}+clicolor-devel %{_description}

This package contains library source intended for building other packages which
use the "clicolor" feature of the "%{crate}" crate.

%files       -n %{name}+clicolor-devel
%ghost %{crate_instdir}/Cargo.toml

%package     -n %{name}+concolor-query-devel
Summary:        %{summary}
BuildArch:      noarch

%description -n %{name}+concolor-query-devel %{_description}

This package contains library source intended for building other packages which
use the "concolor-query" feature of the "%{crate}" crate.

%files       -n %{name}+concolor-query-devel
%ghost %{crate_instdir}/Cargo.toml

%package     -n %{name}+core-devel
Summary:        %{summary}
BuildArch:      noarch

%description -n %{name}+core-devel %{_description}

This package contains library source intended for building other packages which
use the "core" feature of the "%{crate}" crate.

%files       -n %{name}+core-devel
%ghost %{crate_instdir}/Cargo.toml

%package     -n %{name}+interactive-devel
Summary:        %{summary}
BuildArch:      noarch

%description -n %{name}+interactive-devel %{_description}

This package contains library source intended for building other packages which
use the "interactive" feature of the "%{crate}" crate.

%files       -n %{name}+interactive-devel
%ghost %{crate_instdir}/Cargo.toml

%package     -n %{name}+no_color-devel
Summary:        %{summary}
BuildArch:      noarch

%description -n %{name}+no_color-devel %{_description}

This package contains library source intended for building other packages which
use the "no_color" feature of the "%{crate}" crate.

%files       -n %{name}+no_color-devel
%ghost %{crate_instdir}/Cargo.toml

%package     -n %{name}+std-devel
Summary:        %{summary}
BuildArch:      noarch

%description -n %{name}+std-devel %{_description}

This package contains library source intended for building other packages which
use the "std" feature of the "%{crate}" crate.

%files       -n %{name}+std-devel
%ghost %{crate_instdir}/Cargo.toml

%package     -n %{name}+term-devel
Summary:        %{summary}
BuildArch:      noarch

%description -n %{name}+term-devel %{_description}

This package contains library source intended for building other packages which
use the "term" feature of the "%{crate}" crate.

%files       -n %{name}+term-devel
%ghost %{crate_instdir}/Cargo.toml

%package     -n %{name}+windows-devel
Summary:        %{summary}
BuildArch:      noarch

%description -n %{name}+windows-devel %{_description}

This package contains library source intended for building other packages which
use the "windows" feature of the "%{crate}" crate.

%files       -n %{name}+windows-devel
%ghost %{crate_instdir}/Cargo.toml

%prep
%autosetup -n %{crate}-%{version_no_tilde} -p1
%cargo_prep

%generate_buildrequires
%cargo_generate_buildrequires

%build
%cargo_build

%install
%cargo_install

%if %{with check}
%check
%cargo_test
%endif

%changelog
* Mon Jan 15 2024 Vladimir Rusinov <vladimir.rusinov@gmail.com> - 0.0.8-1
- Initial package
