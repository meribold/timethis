import setuptools

with open('README.md') as file_object:
    long_description = file_object.read()

setuptools.setup(
    name='timethis',
    version='0.1.2',
    author='Lukas Waymann',
    author_email='io@meribold.org',
    description='Context manager for measuring execution times',
    long_description=long_description,
    long_description_content_type='text/markdown',
    url='https://github.com/meribold/timethis',
    py_modules=['timethis'],
    python_requires='~=3.6',
    classifiers=[
        'Development Status :: 4 - Beta',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
        'Programming Language :: Python :: 3',
    ],
)
