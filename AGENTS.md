<!-- markdownlint-disable MD013 -->
<!--
SPDX-FileCopyrightText: 2025 Vladimir Rusinov <vladimir.rusinov@gmail.com>
SPDX-License-Identifier: Apache-2.0
-->

# Instructions for AI Agents

## Docker Image Updates

When updating Docker images in this repository, follow this two-step process:

### Step 1: Update Base Image Date

- **NEVER use `latest` tags** - Always use specific date tags (YYYY-MM-DD) or version tags
- Query available versions by checking Docker Hub registry for available tags
  or use: `docker pull vrusinov/base-build:YYYY-MM-DD && docker inspect \
  --format='{{.RepoDigests}}' vrusinov/base-build:YYYY-MM-DD`
- Update the `FROM vrusinov/base*:YYYY-MM-DD` version to the new base image date in all related Dockerfiles
- Only update one base image version at a time - do not skip intermediate versions
- Update related Dockerfile variants to keep them synchronized
- Keep all related image variants synchronized to the same base image date
- The specific package versions (e.g., Python 3.10, 3.11, 3.12) come from
  what's available in the base image's Portage

### Step 2: Update Software Versions

When updating Docker images for software packages (Python, Java, Node.js, etc.):

- **DO NOT guess software patch versions** - The available patch versions come from
  what's in the parent `vrusinov/base-build` image's Portage
- To determine the correct version:
  1. Build the `-build` variant image with a test tag: `docker build -t vrusinov/<image>-build:test .`
  2. Run the image to see the version: `docker run --rm vrusinov/<image>-build:test`
  3. Extract the version from the output (e.g., `openjdk version "11.0.25"` or `Python 3.10.14`)
- Update the `v` variable in both `build.sh` files (in both `-build` and runtime directories)
- Update the `FROM vrusinov/<image>-build:X.X.X` version in the runtime Dockerfile
- Update the COPY paths in the runtime Dockerfile to match the new version paths
- Keep both `-build` and runtime variants synchronized to the same version
- Update both the `Dockerfile` and `build.sh` files consistently
- Verify the patch version builds successfully before pushing

This ensures that the Docker tags built and pushed match the actual version of the software being built.
