# Fun(d)raiser

* Built with Ruby version v 5.0.2

****** Gems Used *******
# Bootstrap-sass
# Turbolinks
# jbuilder
# Devise
# Stripe

Description:

This is a management system application that is intended for non-profits or other organizations that need to raise funds.  The user can sign up to upload products that will be displayed on the main page, specifically an image, title, description, and the minimum price that the item will be sold for.  The public can make a donation either by calling the 800 number listed on the main page, or directly through the site.  The backend would be controlled by an employee/volunteer at the organization.

The employee/volunteer would:

1. Enter the Customer's name and email address.
2. Be redirected to a payment window (using Stripe Gem)
3. Once payment and sale are complete, the Inventory decrements by one.
4. The amount of donation is added to the total donation amount.


# Demo

Check out a demo at fun-d-raiser.herokuapp.com

username: jane@doe.com
password: 123456

credit card number: 4242 4242 4242 4242
exp: anytime in the future
cvc: any 3 digits

# To use

In the terminal run <code> bundle install </code>, then

<code> rails db:create </code>,

<code> rails db:migrate </code>,

<code> rails db:seed </code>...

and you're all set!

# Contributers

Christen Williams
Daniel Thompson
Timothy Smith

