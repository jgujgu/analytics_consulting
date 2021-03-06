class HomeController < ApplicationController
  def index
    @intro = ["End to End",
    "Data Science and Application Development Consulting"]
  end

  def services
    @services = ["Data Analysis of large and small data",
                 "End to End analytics processing solutions in the cloud",
                 "Data Mining and modeling",
                 "Evaluation of existing Data Solutions and customer needs",
                 "Statistical Analysis of customer problems",
                 "Data Visualisation",
                 "Reporting Services",
                 "Design and implementation of prototype statistical solutions",
                 "Deployment and technical support of ordered solutions",
                 "Support for Cloud Deployments of turnkey solutions",
                 "Support for deployment to existing baremetal solutions",
                 "Scalable Statistical Modeling and Machine Learning",
                 "Facilitation of Computer aided decision making",
                 "End User application deployment"
    ]
  end

  def technologies
    @technology_blurb = "The stacks we create are very problem specific: everything from managing a cloud-based Kubernetes deployment, Kafka for stream capturing, Storm for a high throughput stream, to R or Python for analysis. Fink also has extensive knowledge of data engineering and ETL work from an ensemble of databases.  We use the right tools for the job."

    @technologies = [
      {
        description: "Kubernetes--Google's open-source cluster-management software--makes scaling easy, and, even, automatic.",
        link: "http://kubernetes.io/",
        name: "Kubernetes",
        image: "kubernetes_logo.png"
      },
      {
        description: "Storm enables parallel processing of streaming data.",
        link: "https://storm.apache.org/",
        name: "Storm",
        image: "storm.png"
      },
      {
        description: "TensorFlow allows for training in a fraction of the time on multiple GPUs on a cluster.",
        link: "https://www.tensorflow.org/",
        name: "TensorFlow",
        image: "tensorflow.png"
      },
      {
        description: "R for rigorous analysis and insightful graphing.",
        link: "https://www.r-project.org/",
        name: "R",
        image: "R-Programming.png"
      },
      {
        description: "D3 makes data beautiful and interactive.",
        link: "https://d3js.org/",
        name: "D3",
        image: "Logo_D3.svg.png"
      },
      {
        description: "Kafka creates the one source of truth for all your data, simplfying transmission of it from database to database, focused on streaming data.",
        link: "http://kafka.apache.org/",
        name: "Kafka",
        image: "kafka-logo-tall.png"
      },
      {
        description: "Docker allows for simplified application deployment, enabling one time configuration.",
        link: "https://www.docker.com/",
        name: "Docker",
        image: "large_v-dark.png"
      },
      {
        description: "Rails is the most convenient web framework out there, providing the backbone for deployed applications of any size.",
        link: "http://rubyonrails.org/",
        name: "Rails",
        image: "Ruby_on_Rails.svg.png"
      },
    ]
  end

  def about
    @bios = [
      {
        name: "Sean Southard",
        education: "University of California, Davis/Statistics",
        description: "Having worked in the financial and technology sectors for almost a decade, Sean has significant statistical, financial, and devops experience.",
        image: "sean.png"
      },
      {
        name: "Jeffrey Gu",
        education: "University of Pennsylvania/Operations and Information Management",
        description: "A proficient debugger, Jeffrey has built and improved numerous production web applications and statistical tools.",
        image: "jeffrey.png"
      }
    ]
  end

  def contact
    @address = {
      street: "2332 Clay St",
      city_state: "Denver, CO 80211"
    }
  end

  def contact_success
    @success_message = "Thank you for your message."
    @next_steps = "Either Sean or Jeff will get back to you shortly."
  end

  def post_contact
    if params[:bot_catcher].empty?
      MessageNotifier.send_message(params[:email], params[:message]).deliver
      redirect_to contact_success_path
    else
      redirect_to "www.google.com"
    end
  end
end
