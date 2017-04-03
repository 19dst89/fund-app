# Fun(d)raiser

# Technologies used
- Ruby on Rails
- JavaScript
- jQuery
- HTML
- CSS

****** Gems Used *******
- Bootstrap-sass
- Turbolinks
- jbuilder
- Devise
- Stripe

Description:

This is a management system application that is intended for non-profits or other organizations that need to raise funds.  The user can sign up to upload products that will be displayed on the main page, specifically an image, title, description, and the minimum price that the item will be sold for.  The public can make a donation either by calling the 800 number listed on the main page, or directly through the site.  The backend would be controlled by an employee/volunteer at the organization.

The employee/volunteer would:

1. Enter the Customer's name and email address.
2. Be redirected to a payment window (using Stripe Gem)
3. Once payment and sale are complete, the Inventory decrements by one.
4. The amount of donation is added to the total donation amount.


# Demo

Check out a demo at <a href="fun-d-raiser.herokuapp.com">fun-d-raiser.herokuapp.com</a>

username: jane@doe.com <br>
password: 123456 <br>

credit card number: 4242 4242 4242 4242 <br>
exp: anytime in the future <br>
cvc: any 3 digits <br>

# To use

In the terminal run <code> bundle install </code>, then

<code> rails db:create </code>,

<code> rails db:migrate </code>,

<code> rails db:seed </code>...

and you're all set!

# Contributers

Christen Williams <br>
Daniel Thompson <br>
Timothy Smith <br>

