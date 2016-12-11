namespace Comp229_Assign04.Model
{

    public class Rootobject
    {
        public Class1[] Property1 { get; set; }
    }

    public class Class1
    {
        public string name { get; set; }
        public string faction { get; set; }
        public int rank { get; set; }
        public int _base { get; set; }
        public int size { get; set; }
        public string deploymentZone { get; set; }
        public string[] traits { get; set; }
        public string[] types { get; set; }
        public string[] defenseChart { get; set; }
        public int mobility { get; set; }
        public int willpower { get; set; }
        public int resiliance { get; set; }
        public int wounds { get; set; }
        public Action[] actions { get; set; }
        public Specialability[] specialAbilities { get; set; }
        public string imageUrl { get; set; }
    }

    public class Action
    {
        public string name { get; set; }
        public string type { get; set; }
        public int rating { get; set; }
        public string range { get; set; }
        public string description { get; set; }
    }

    public class Specialability
    {
        public string name { get; set; }
        public string description { get; set; }
    }

    public class Class2
    {
        public string c_Name { get; set; }
        public string c_Address { get; set; }
    }

}
