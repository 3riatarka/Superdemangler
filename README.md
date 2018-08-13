# Superdemangler
Modified API request to demangler.com to demangle complex C++ flags.

## Get the script
`git clone https://github.com/3riatarka/Superdemangler && chmod +x Superdemangler/superdemangler.sh && chmod +x Superdemangler/demangler.sh`

## Usage
`./superdemangler <MANGLED C++ FUNCTION>`

It is useful to use inside radare2:

![](https://github.com/3riatarka/Superdemangler/blob/master/example.png "Using superdemangler inside radare2")

##### How does it work?
The script takes the supplied argument, and sends it to demangler's API using the provided script. Then it checks the response, if it is the same as the provided string, it removes the last char and tries again. This goes on until the demangled function is found or until the counter reaches 25 queries.
