from setuptools import setup, find_packages
if __name__ == '__main__':
    with open("LICENSE", "r", encoding="utf-8") as f:
        license = f.read()
    setup(
    name="aligndetr",
    version="0.1.0",
    author="Zhi Cai",
    author_email = "felixfelcis@buaa.edu.cn",
    url="https://github.com/FelixCaae/AlignDETR",
    description="AlignDETR code package",
    license=license,
    # install_requires=parse_requirements("requirements.txt"),
    packages=find_packages(
        exclude=(
            "configs",
            "tests",
        )
    ),
)