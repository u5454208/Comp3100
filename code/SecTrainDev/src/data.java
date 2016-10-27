import java.util.ArrayList;

/**
 * Created by lrz0927 on 25/10/16.
 */
public class data {
    private ArrayList<String> InstanceIds;
    private String PublicDNS;
    public ArrayList<String> getInstanceIds()
    {
        return this.InstanceIds;
    }
    public void setInstanceIds(ArrayList<String> InstanceIds)
    {
        this.InstanceIds=InstanceIds;
    }
    public void setPublicDNS(String PublicDNS)
    {
        this.PublicDNS=PublicDNS;
    }
    public String getPublicDNS()
    {
        return this.PublicDNS;
    }
}
