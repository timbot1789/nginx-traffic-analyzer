I accidentally configured the NGINX server to put both the access logs and the error logs in the same file. Now I have to parse them out. Oops.

I've also forgotten my sudo password to my DO droplet, so I have to reset that somehow. It used to just be the same password as ssh, but I moved ssh over to RSA keys instead and deleted the user password, so now I have to reset it
I also blocked off root access to my droplet over ssh, so I can't sign into it through the DO recovery console. Double oops. Oh well. All the more reason to dockerize everything, nuke the site, and start again fresh.
I still have readonly access, so I won't lose anything. I'd also much rather get the servers hosted through userspace rather than in admin space
