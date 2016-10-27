/**
 * Created by lrz0927 on 25/10/16.
 */

import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;


public class PersistDataJSON {

    private static final String INSTANCEIDS = "InstanceIds";

    ArrayList<String> InstanceIds;

    public PersistDataJSON(ArrayList<String> InstanceIds) {
        this.InstanceIds = InstanceIds;
    }

    public PersistDataJSON() {

    }

    static public PersistDataJSON load(String filename) {
        File f = new File(filename);
        PersistDataJSON res = new PersistDataJSON();
        try {
            JSONObject obj = (JSONObject) JSONValue.parse(new FileReader(f));
            res.InstanceIds = (ArrayList<String>) obj.get(INSTANCEIDS);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return res;
    }

    public void save(String filename) {
        File f = new File(filename);
        JSONObject obj = new JSONObject();
        obj.put(INSTANCEIDS, InstanceIds);

        FileWriter out;
        try {
            out = new FileWriter(f);
            obj.writeJSONString(out);
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

}

