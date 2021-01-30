python-vipaccess is a free and open source software (FOSS)
implementation of Symantec's VIP Access client.

If you need to access a network which uses VIP Access for `two-factor
authentication <https://en.wikipedia.org/wiki/Two-factor_authentication>`__,
but can't or don't want to use Symantec's proprietary
applications—which are only available for Windows, MacOS, Android,
iOS—then this is for you.

Symantec VIP Access actually uses a **completely open standard**
called `Time-based One-time Password Algorithm <https://en.wikipedia.org/wiki/Time-based_One-time_Password_Algorithm>`__
for generating the 6-digit codes that it outputs. The only
non-standard part is the **provisioning** protocol used to create a
new token.

Authors
-------

The reverse-engineering of the VIP Access protocol was done by `Forest
Crossman (cyrozap) <https://github.com/cyrozap>`__.  See `original
blog post <https://www.cyrozap.com/2014/09/29/reversing-the-symantec-vip-access-provisioning-protocol>`__.

``python-vipaccess`` is now maintained by `Daniel Lenski (dlenski) <https://github.com/dlenski>`__.


Home page
---------

https://github.com/dlenski/python-vipaccess
