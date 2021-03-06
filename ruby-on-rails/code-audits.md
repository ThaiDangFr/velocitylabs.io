---
contact:
  button: Click Here To Reserve A Code Audit
excerpt:
  Your Rails application is an investment in your business.
  We'll help you understand your software and help you define
  a roadmap for the future.
heading: Gain Confidence In Your Web Application
layout: landing
lead:
  If you've created software, but aren't 100% sure it's going
  to work for you now and in the future, we can help.
title: Ruby on Rails Code Audit
---

<section>
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-lg-offset-2">
        <h2 class="text-center">
          <blockquote>
            "We outsourced our development and the team says we're just about
            ready to launch. They've done a great job, but we'd still like a
            trusted 3rd party to review the code."
          </blockquote>
        </h2>

        <p>
          By creating software, you've made a significant investment in your business.
          It might be your core business, something that compliments your business, or
          an internal tool to enable better business decisions. Whatever the case, do
          you have a clear understanding of what was built, <i>including it's limitations</i>?
        </p>

        <p>
          As time goes on, your users may be the ones to discover those limtations,
          severely affecting your bottom line. Catching problems as early as possible
          reduces the overall cost of the software and instills confidence that what
          was built will stand the test of time.
        </p>
      </div>
    </div>
  </div>
</section>

<section class="dark">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-lg-offset-2">
        <h3 class="text-center">Full-Service Ruby on Rails Code Audits</h3>
        <p>
          The team at Velocity Labs has been working with Rails since 2007.
          This has provided us with many opportunities to review applications
          created by various freelancers, Rails development companies, and
          agencies.
        </p>

        <p>
          As we go through the code, here's what you can expect us to
          review and provide feedback on:
        </p>

        <ul class="checklist" >
          <li>
            <i class="fa fa-check"></i>
            Software Versions Are Up-To-Date For Ruby, Rails, Ruby Gems, and JavaScript Libraries
          </li>

          <li>
            <i class="fa fa-check"></i>
            Ensure The Application Can Be Installed And Run Locally
          </li>

          <li>
            <i class="fa fa-check"></i>
            Application Follows Rails Best Practices
          </li>

          <li>
            <i class="fa fa-check"></i>
            Test Framework Is Used And Tests Provide Ample Coverage; All Tests Pass
          </li>

          <li>
            <i class="fa fa-check"></i>
            Application Security Audit
          </li>

          <li>
            <i class="fa fa-check"></i>
            Database Concerns Such As Missing Indices, Slow Queries, And Poor Data Modeling
          </li>
        </ul>
      </div>
    </div>
  </div>
</section>

<section>
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-lg-offset-2">
        <h3 class="text-center">How Much Does It Cost?</h3>

        <p>
          Our Ruby on Rails Code Audit service is <b>only $750</b> and
          usually takes a few days, depending on the size of the application.
        </p>

        <p>
          You'll receive a report of our findings along with recommendations
          for improvement. Additionally, we'll be sure to highlight the good
          parts of the application!
        </p>

        <p>
          <i>Alternately, if your application is already in production, you might
          be more interested in our
          <a href="/ruby-on-rails/maintenance">Ruby on Rails Application Maintenance</a>
          service, which includes a free code audit.</i>
        </p>
      </div>
    </div>
  </div>
</section>

<section class="dark testimonial">
  <div class="container">
    <div class="row">
      <div class="col-lg-10 col-lg-offset-1">
        {% assign testimonials = site.data.testimonials | where:"name","Robert Wallace" %}
        {% for testimonial in testimonials limit: 1 %}
          <blockquote>
            <div class="row">
              <div class="col-sm-3 text-center">
                <img width="100" height="100" class="img-rounded" src="https://secure.gravatar.com/avatar/{{ testimonial.avatar }}?r=g&s=100">
              </div>
              <div class="col-sm-9">
                <p>&ldquo;{{ testimonial.quote }}&rdquo;</p>
                <p><small>{{ testimonial.name }} - <a href="{{ testimonial.link.href }}" target="_blank">{{ testimonial.link.text }}</a></small></p>
              </div>
            </div>
          </blockquote>
        {% endfor %}
      </div>
    </div>
  </div>
</section>

<section id="contact">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-lg-offset-2">
        <h3 class="text-center">Are You Ready To Get Started?</h3>

        <p>
          Fill out the form below and we'll get back to you quickly to
          discuss your application. We've helped many companies and are
          confident we'll be able to help you, too.
        </p>

        <div id="contact-form-success"></div> <!-- For success/fail messages -->

        <div class='contact-form'>
          <form action="/contact-form" name="sentMessage" id="contactForm" role="form" novalidate data-form="Code Audit Form">
            <div class='form-group col-lg-8 col-lg-offset-2'>
              <input class='name form-control' placeholder='Name' type="text" id="name" name="name">
            </div>

            <div class="form-group col-lg-8 col-lg-offset-2">
              <input class='form-control email' placeholder='E-mail Address' type='email' id="email" name="email">
            </div>

            <input name="message" type="hidden" value="Code audit inquiry.">
            <input name="hp-input" placeholder="Do not fill" type="text">

            <div id="contact-form-error"></div> <!-- For success/fail messages -->

            <div class="g-recaptcha" data-sitekey="6Le0D1EUAAAAAJlyECAhW72BPGxrg_EkM4oygnsF"></div>

            <footer class="submit-button">
              <button type="submit">Reserve Your Code Audit</button>
            </footer>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
