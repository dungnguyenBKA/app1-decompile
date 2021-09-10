package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.bumptech.glide.load.g;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* renamed from: vk  reason: default package */
public final class vk {
    private static final ConcurrentMap<String, g> a = new ConcurrentHashMap();

    public static g a(Context context) {
        PackageInfo packageInfo;
        String str;
        String packageName = context.getPackageName();
        g gVar = a.get(packageName);
        if (gVar != null) {
            return gVar;
        }
        try {
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            StringBuilder q = ic.q("Cannot resolve info for");
            q.append(context.getPackageName());
            Log.e("AppVersionSignature", q.toString(), e);
            packageInfo = null;
        }
        if (packageInfo != null) {
            str = String.valueOf(packageInfo.versionCode);
        } else {
            str = UUID.randomUUID().toString();
        }
        xk xkVar = new xk(str);
        g putIfAbsent = a.putIfAbsent(packageName, xkVar);
        return putIfAbsent == null ? xkVar : putIfAbsent;
    }
}
