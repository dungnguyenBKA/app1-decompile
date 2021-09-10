package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

public final class n implements Iterable<Intent> {
    private final ArrayList<Intent> b = new ArrayList<>();
    private final Context c;

    public interface a {
        Intent getSupportParentActivityIntent();
    }

    private n(Context context) {
        this.c = context;
    }

    public static n b(Context context) {
        return new n(context);
    }

    public n a(Activity activity) {
        Intent supportParentActivityIntent = ((a) activity).getSupportParentActivityIntent();
        if (supportParentActivityIntent == null) {
            supportParentActivityIntent = b.P(activity);
        }
        if (supportParentActivityIntent != null) {
            ComponentName component = supportParentActivityIntent.getComponent();
            if (component == null) {
                component = supportParentActivityIntent.resolveActivity(this.c.getPackageManager());
            }
            int size = this.b.size();
            try {
                Intent Q = b.Q(this.c, component);
                while (Q != null) {
                    this.b.add(size, Q);
                    Q = b.Q(this.c, Q.getComponent());
                }
                this.b.add(supportParentActivityIntent);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                throw new IllegalArgumentException(e);
            }
        }
        return this;
    }

    public void c() {
        if (!this.b.isEmpty()) {
            ArrayList<Intent> arrayList = this.b;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            Context context = this.c;
            int i = androidx.core.content.a.b;
            context.startActivities(intentArr, null);
            return;
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.b.iterator();
    }
}
