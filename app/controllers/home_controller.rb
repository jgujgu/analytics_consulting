class HomeController < ApplicationController
  def index
    @intro = "fuck you"
  end

  def services
    @services = "End to end, turn-key, data analytics stack, hosted on the cloud."
  end

  def technologies
    @technologies = [
      {
        description: "Kubernetes, Google's open-source cluster-management software, makes scaling as easy, and even autotmatic.",
        image: "kubernetes_logo.png"
      },
      {
        description: "10,000 hours of experience in R.",
        image: "R-Programming.png"
      },
      {
        description: "D3 makes data beautiful and interactive.",
        image: "Logo_D3.svg.png"
      },
      {
        description: "Kafka creates the one source of truth for all your data, simplfying transmission of it from database to database.",
        image: "kafka-logo-tall.png"
      },
      {
        description: "Docker allows for simplified appication deployment, enabling one time configuration.",
        image: "large_v-dark.png"
      },
      {
        description: "Python enables the fastest prototyping.",
        image: "python-logo-master-v3-TM-flattened.png"
      },
      {
        description: "Rails is one of the most convenient web frameworks out there.",
        image: "Ruby_on_Rails.svg.png"
      },
      {
        description: "Machine learning in Python.",
        image: "theano_logo.png"
      }
    ]
  end

  def about
    @bios = [
      {
        name: "Sean Southard",
        education: "University of California, Davis, Statistics",
        description: "Generally, a badass.",
        image: "R-Programming.png"
      },
      {
        name: "Jeffrey Gu",
        education: "University of Pennsylvania, Applied Mathematics",
        description: "Only nice to some people.",
        image: "Logo_D3.svg.png"
      }
    ]
  end

  def contact
    @address = {
      street: "1062 Delaware Street",
      city_state: "Denver, CO 80204"
    }
  end
end
