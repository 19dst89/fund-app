# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Built with Ruby version v 5.0.2

****** Gems Used *******
# Bootstrap-sass
# Turbolinks
# jbuilder
# Devise
# Stripe

Description:

This is a application that is intended for an organization (most likely a non-profit), to assist with the sale of items.  Customer will call in to the 800 number listed on the main page.  The backend would be controlled by an employee/volunteer at the organization.  The employee/volunteer would:

1. Enter the Customer's name and email address.
2. Be redirected to a payment window (using Stripe Gem)
3. Once payment and sale are complete, the Inventory decrements by one.
4. The amount of donation is added to the total donation amount.
