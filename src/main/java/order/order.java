package order;

public class order {

    public String name;
    public String type;

    public order () {}

    // Get path to image by name and type
    public String getPicturePath() {
        return "static/" + name + "/" + type + "/" + "picture.png";
    }

}
