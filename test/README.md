# Test scripts for Froyo

These scripts aren't actually meant to be used, but
compiled by Froyo to test its compilation ability.

The `wrong.fy` source purposely has syntax errors to
see if Froyo can properly spot them. `wrong.fy` will
be compiled with the `noerror` flag to avoid Froyo
exiting on an error, producing a broken file & sending
all errors to `wrong.log`
