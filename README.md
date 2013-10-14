# UnifiedPartials

This project rocks and uses MIT-LICENSE.

## Real quick

```ruby
attribute_display book, :title, :with => :heading

# becomes ...

label = render partial: "attribute_presentation/label",
               locals:  {name: :title}
locals = {
           object: book,
           attribute: :title,
           value: "Gone With the Wind",
           label: label
          }
render partial: "attribute_presentation/heading",
       locals: locals,
       layout: "attribute_presentation/layout"

```

## What's the big idea?

I want to make the "easy" parts of apps as easy as possible. I've found that apps often involve a number of simple crud endpoints that individually are not very hard to create.

However, while these endpoints are not individually very difficult, they pose a challenge when it's desired for the site to have a consistent look and feel. 

An example helps explain ...


Let's say a site generally displays attributes like so:

```html
<p>Attribute 1: foo</p>
<p>Attribute 2: bar</p>
```

Later, it's decided, for well-founded design reasons, to change this to:
```html
<div class="attribute_1">
  <p>
    <span class="label">Attribute 1</span>:
    foo
  </p>
</div>
<div class="attribute_2">
  <p>
    <span class="label">Attribute 2</span>:
    bar
  </p>
</div>
```

In this scenario, the change is sweeping. Pretty much every attribute in the site needs to change to fit a new stylesheet. This might be a real pain, one that discourages agressive restyling.

Unified partials works like this:

```erb
<%= attribute_display book, :title, :with => :heading %>
<%= attribute_display book, :author %>
```

In the above case, the partial `attribute_presentation/_heading` is used to display `book.title`. It is wrapped by `attribute_presentation/_layout`. `attribute_presentation/default` is used for `book.author`.

The gem provides a few partials to get you started, but these can be overridden in your app by adding files to `app/views/attribute_presentation/`.
