using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Table_Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Simulated animal data
                List<Animal> animals = new List<Animal>
                {
                    new Animal { AnimalName = "African Elephant", ScientificName = "Loxodonta africana", Ecosystem = "Land", LifeStatus = "Existing" },
                    new Animal { AnimalName = "Hawksbill Sea Turtle", ScientificName = "Eretmochelys imbricata", Ecosystem = "Ocean", LifeStatus = "Existing (Endangered)" },
                    new Animal { AnimalName = "Sumatran Tiger", ScientificName = "Panthera tigris sumatrae", Ecosystem = "Land", LifeStatus = "Existing (Endangered)" },
                    new Animal { AnimalName = "Quetzalcoatlus", ScientificName = "Quetzalcoatlus northropi", Ecosystem = "Sky", LifeStatus = "Ancient" },
                    new Animal { AnimalName = "Bluefin Tuna", ScientificName = "Thunnus thynnus", Ecosystem = "Ocean", LifeStatus = "Existing (Endangered)" },
                    new Animal { AnimalName = "Bornean Orangutan", ScientificName = "Pongo pygmaeus", Ecosystem = "Land", LifeStatus = "Existing (Endangered)" },
                    new Animal { AnimalName = "Megalodon", ScientificName = "Carcharocles megalodon", Ecosystem = "Ocean", LifeStatus = "Ancient" },
                    new Animal { AnimalName = "Dunkleosteus", ScientificName = "Dunkleosteus", Ecosystem = "Ocean", LifeStatus = "Ancient" },
                    new Animal { AnimalName = "Loggerhead Sea Turtle", ScientificName = "Caretta caretta", Ecosystem = "Ocean", LifeStatus = "Existing (Endangered)" },
                    new Animal { AnimalName = "Velociraptor", ScientificName = "Velociraptor mongoliensis", Ecosystem = "Land", LifeStatus = "Ancient" },
                    new Animal { AnimalName = "Triceratops", ScientificName = "Triceratops horridus", Ecosystem = "Land", LifeStatus = "Ancient" },
                    new Animal { AnimalName = "Snow Leopard", ScientificName = "Panthera uncia", Ecosystem = "Land", LifeStatus = "Existing (Endangered)" },
                    new Animal { AnimalName = "Vaquita", ScientificName = "Phocoena sinus", Ecosystem = "Ocean", LifeStatus = "Existing (Endangered)" },
                    new Animal { AnimalName = "Plesiosaurus", ScientificName = "Plesiosaurus", Ecosystem = "Ocean", LifeStatus = "Ancient" },
                    new Animal { AnimalName = "Archaeopteryx", ScientificName = "Archaeopteryx lithographica", Ecosystem = "Sky", LifeStatus = "Ancient" },
                    new Animal { AnimalName = "Bald Eagle", ScientificName = "Haliaeetus leucocephalus", Ecosystem = "Sky", LifeStatus = "Existing" },
                    new Animal { AnimalName = "Amur Leopard", ScientificName = "Panthera pardus orientalis", Ecosystem = "Land", LifeStatus = "Existing (Endangered)" },
                    new Animal { AnimalName = "Blue Whale", ScientificName = "Balaenoptera musculus", Ecosystem = "Ocean", LifeStatus = "Existing" },
                    new Animal { AnimalName = "Dodo", ScientificName = "Raphus cucullatus", Ecosystem = "Land", LifeStatus = "Extinct" },
                    new Animal { AnimalName = "Woolly Mammoth", ScientificName = "Mammuthus primigenius", Ecosystem = "Land", LifeStatus = "Extinct" },
                    new Animal { AnimalName = "Great White Shark", ScientificName = "Carcharodon carcharias", Ecosystem = "Ocean", LifeStatus = "Existing" },
                    new Animal { AnimalName = "Ichthyosaurus", ScientificName = "Ichthyosaurus", Ecosystem = "Ocean", LifeStatus = "Ancient" },
                    new Animal { AnimalName = "Stegosaurus", ScientificName = "Stegosaurus stenops", Ecosystem = "Land", LifeStatus = "Ancient" },
                    new Animal { AnimalName = "Pterodactyl", ScientificName = "Pterodactylus antiquus", Ecosystem = "Sky", LifeStatus = "Ancient" },
                    new Animal { AnimalName = "Tasmanian Tiger", ScientificName = "Thylacinus cynocephalus", Ecosystem = "Land", LifeStatus = "Extinct" },
                    new Animal { AnimalName = "Giant Squid", ScientificName = "Architeuthis dux", Ecosystem = "Ocean", LifeStatus = "Existing" },
                    new Animal { AnimalName = "Amur Leopard", ScientificName = "Panthera pardus orientalis", Ecosystem = "Land", LifeStatus = "Existing (Endangered)" },
                    new Animal { AnimalName = "Philippine Eagle", ScientificName = "Pithecophaga jefferyi", Ecosystem = "Sky", LifeStatus = "Existing (Endangered)" },
                    new Animal { AnimalName = "Sumatran Tiger", ScientificName = "Panthera tigris sumatrae", Ecosystem = "Land", LifeStatus = "Existing (Endangered)" },
                    new Animal { AnimalName = "Bluefin Tuna", ScientificName = "Thunnus thynnus", Ecosystem = "Ocean", LifeStatus = "Existing (Endangered)" },
                    new Animal { AnimalName = "Bornean Orangutan", ScientificName = "Pongo pygmaeus", Ecosystem = "Land", LifeStatus = "Existing (Endangered)" },
                    new Animal { AnimalName = "African Wild Dog", ScientificName = "Lycaon pictus", Ecosystem = "Land", LifeStatus = "Existing (Endangered)" },
                    new Animal { AnimalName = "Snow Leopard", ScientificName = "Panthera uncia", Ecosystem = "Land", LifeStatus = "Existing (Endangered)" },
                    new Animal { AnimalName = "Vaquita", ScientificName = "Phocoena sinus", Ecosystem = "Ocean", LifeStatus = "Existing (Endangered)" },
                    new Animal { AnimalName = "Saber-Toothed Tiger", ScientificName = "Smilodon fatalis", Ecosystem = "Land", LifeStatus = "Extinct" },
                    new Animal { AnimalName = "Velociraptor", ScientificName = "Velociraptor mongoliensis", Ecosystem = "Land", LifeStatus = "Extinct" },
                    new Animal { AnimalName = "Dunkleosteus", ScientificName = "Dunkleosteus", Ecosystem = "Ocean", LifeStatus = "Ancient" },
                    new Animal { AnimalName = "Triceratops", ScientificName = "Triceratops horridus", Ecosystem = "Land", LifeStatus = "Extinct" },
                    new Animal { AnimalName = "Megalania", ScientificName = "Megalania prisca", Ecosystem = "Land", LifeStatus = "Ancient" },
                    new Animal { AnimalName = "Ankylosaurus", ScientificName = "Ankylosaurus magniventris", Ecosystem = "Land", LifeStatus = "Ancient" },
                    new Animal { AnimalName = "Baiji Dolphin", ScientificName = "Lipotes vexillifer", Ecosystem = "Ocean", LifeStatus = "Extinct" },
                    new Animal { AnimalName = "Titanoboa", ScientificName = "Titanoboa cerrejonensis", Ecosystem = "Land", LifeStatus = "Ancient" },
                    new Animal { AnimalName = "Ant", ScientificName = "Formicidae", Ecosystem = "Land", LifeStatus = "Existing" },
                    new Animal { AnimalName = "Caspian Tiger", ScientificName = "Panthera tigris virgata", Ecosystem = "Land", LifeStatus = "Extinct" },
                    new Animal { AnimalName = "Bear", ScientificName = "Ursidae", Ecosystem = "Land", LifeStatus = "Existing" },
                    new Animal { AnimalName = "Javan Tiger", ScientificName = "Panthera tigris sondaica", Ecosystem = "Land", LifeStatus = "Extinct" },
                    new Animal { AnimalName = "Cat", ScientificName = "Felis catus", Ecosystem = "Land", LifeStatus = "Existing" },
                    new Animal { AnimalName = "Dog", ScientificName = "Canis lupus familiaris", Ecosystem = "Land", LifeStatus = "Existing" },
                    new Animal { AnimalName = "Passenger Pigeon", ScientificName = "Ectopistes migratorius", Ecosystem = "Sky", LifeStatus = "Extinct" },
                    new Animal { AnimalName = "Elephant", ScientificName = "Elephantidae", Ecosystem = "Land", LifeStatus = "Existing" },
                    new Animal { AnimalName = "Giraffe", ScientificName = "Giraffa", Ecosystem = "Land", LifeStatus = "Existing" },
                    new Animal { AnimalName = "Great Auk", ScientificName = "Pinguinus impennis", Ecosystem = "Ocean", LifeStatus = "Extinct" },
                    new Animal { AnimalName = "Horse", ScientificName = "Equus ferus caballus", Ecosystem = "Land", LifeStatus = "Existing" },
                    new Animal { AnimalName = "Lion", ScientificName = "Panthera leo", Ecosystem = "Land", LifeStatus = "Existing" },
                    new Animal { AnimalName = "Monkey", ScientificName = "Primates", Ecosystem = "Land", LifeStatus = "Existing" },
                    new Animal { AnimalName = "Quagga", ScientificName = "Equus quagga quagga", Ecosystem = "Land", LifeStatus = "Extinct" },
                    new Animal { AnimalName = "Tiger", ScientificName = "Panthera tigris", Ecosystem = "Land", LifeStatus = "Existing" },
                    new Animal { AnimalName = "Whale", ScientificName = "Cetacea", Ecosystem = "Ocean", LifeStatus = "Existing" },
                    new Animal { AnimalName = "Carolina Parakeet", ScientificName = "Conuropsis carolinensis", Ecosystem = "Sky", LifeStatus = "Extinct" },
                    new Animal { AnimalName = "Zebra", ScientificName = "Equus zebra", Ecosystem = "Land", LifeStatus = "Existing" },
                    new Animal { AnimalName = "Common Bottlenose Dolphin", ScientificName = "Tursiops truncatus", Ecosystem = "Ocean", LifeStatus = "Existing" },
                    new Animal { AnimalName = "Irrawaddy Dolphin", ScientificName = "Orcaella brevirostris", Ecosystem = "Ocean", LifeStatus = "Existing" },
                    new Animal { AnimalName = "Amazon River Dolphin", ScientificName = "Inia geoffrensis", Ecosystem = "Ocean", LifeStatus = "Existing" },
                    new Animal { AnimalName = "Yangtze River Dolphin", ScientificName = "Lipotes vexillifer", Ecosystem = "Ocean", LifeStatus = "Extinct" },
                    new Animal { AnimalName = "Platanista", ScientificName = "Platanista", Ecosystem = "Ocean", LifeStatus = "Ancient" },
                    new Animal { AnimalName = "Trilobite", ScientificName = "Trilobita", Ecosystem = "Ocean", LifeStatus = "Ancient" },
                    new Animal { AnimalName = "Bigfin Squid", ScientificName = "Magnapinna", Ecosystem = "Ocean", LifeStatus = "Existing" }
                };

                // Bind animal data to the repeater control
                rptAnimals.DataSource = animals;
                rptAnimals.DataBind();
            }
        }

        // Define Animal class to represent animal data
        public class Animal
        {
            public string AnimalName { get; set; }
            public string ScientificName { get; set; }
            public string Ecosystem { get; set; }
            public string LifeStatus { get; set; }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            // Redirect to the main page
            Response.Redirect("~/7Matching/Matching.aspx");
        }
    }
}