<!-- markdownlint-disable MD013 -->
<!--
SPDX-FileCopyrightText: 2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
SPDX-License-Identifier: Apache-2.0
-->

# Instructions for AI Agents

## Docker Image Updates

When updating Docker images in this repository, you must update both:

- **Dockerfile** - Update the version in the `git checkout` command
- **build.sh** - Update the `v` variable to match the new version

Example: If updating sftpgo from v2.6.6 to v2.7.0:

- Update `git checkout v2.6.6` to `git checkout v2.7.0` in `docker/sftpgo/Dockerfile`
- Update `v=2.6.6` to `v=2.7.0` in `docker/sftpgo/build.sh`

This ensures that the Docker tags built and pushed match the actual version of
the software being built.

## Base Image Updates

When updating Docker images that depend on `vrusinov/base` or `vrusinov/base-build`:

- Update the `FROM vrusinov/base*:YYYY-MM-DD` version to the new base image date
- Update related Dockerfile variants to keep them synchronized
- Only update one base image version at a time - do not skip intermediate versions
- The specific package versions (e.g., Python 3.10, 3.11, 3.12) come from what's
  available in the base image's Portage
- Keep all related image variants synchronized to the same base image date
