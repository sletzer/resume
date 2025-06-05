# resume

![Build Resume PDF](https://github.com/sletzer/resume/actions/workflows/build.yml/badge.svg?branch=main)

This is my 'resume-as-code' repository ... this will be how I update my resume and regenerate it

# Generate the Resume

rendercv will automatically create the resume in html, markdown, and pdf formats in an output directory **rendercv_output**

if running locally, it can be as simple as running:

```shell
make
```

it will:
* create a python virtual environment and activate it
* install rendercv dependency via `requirements.txt`
* run the rendercv command to generate the resume

Alternatively, there is a cloud-native way to build it via the `build.yml` CI/CD file or **github actions** as its called. 

Any push to the `main` branch will kick off the build