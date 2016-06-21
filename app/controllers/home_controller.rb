class HomeController < ApplicationController
  def index
    @intro = ["End to End",
    "Statistical and Data Science",
    "Application Development and Consulting"]
  end

  def services
    @services = ["Data Analysis of large and small data",
                 "End to End analytics processing solutions in the cloud from the stream capture to the model outputs",
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
    @technology_blurb = "Fink utilizes as much open-source technology as possible. We believe that open communities create a better product with higher levels of security and more advanced analytical ideas. The technical stacks we create or use are very problem specific: everything from Salt stack to managing a cloud-based Kubernetes deployment, Kafka for stream capturing, Spark or Storm for a high throughput stream or batch processing and R or Python for our analysis. Fink also has extensive knowledge of data engineering and ETL work from an ensemble of databases.  We want to use the right tools for the right job."

    @technologies = [
      {
        description: "Kubernetes--Google's open-source cluster-management software--makes scaling easy, and, even, automatic.",
        image: "kubernetes_logo.png"
      },
      {
        description: "TensorFlow plays nicely with Kubernetes, allowing for training in a fraction of the time on multiple GPUs on a cluster.",
        image: "tensorflow.png"
      },
      {
        description: "R for rigorous analysis and insightful graphing.",
        image: "R-Programming.png"
      },
      {
        description: "D3 makes data beautiful and interactive.",
        image: "Logo_D3.svg.png"
      },
      {
        description: "Kafka creates the one source of truth for all your data, simplfying transmission of it from database to database, focused on streaming data.",
        image: "kafka-logo-tall.png"
      },
      {
        description: "Docker allows for simplified application deployment, enabling one time configuration.",
        image: "large_v-dark.png"
      },
      {
        description: "Rails is the most convenient web framework out there, providing the backbone for deployed applications of any size.",
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
      street: "1062 Delaware Street",
      city_state: "Denver, CO 80204"
    }
  end
end
