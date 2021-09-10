package defpackage;

import android.text.TextUtils;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;
import com.camerasideas.collagemaker.appdata.MediaFileInfo;
import defpackage.wm;
import java.util.List;
import java.util.TreeMap;

/* renamed from: en  reason: default package */
public class en implements wm.d {
    private static en d;
    private static TreeMap<String, List<MediaFileInfo>> e;
    private wm.d b;
    private wm c;

    private en(wm.d dVar) {
        this.b = dVar;
    }

    public static en a(wm.d dVar) {
        if (d == null) {
            d = new en(dVar);
        }
        return d;
    }

    public static TreeMap<String, List<MediaFileInfo>> e() {
        return e;
    }

    public static boolean g() {
        TreeMap<String, List<MediaFileInfo>> treeMap = e;
        return treeMap != null && treeMap.size() > 0;
    }

    @Override // defpackage.wm.d
    public void b(TreeMap<String, List<MediaFileInfo>> treeMap) {
        StringBuilder q = ic.q("finished pre browse photo ");
        q.append(treeMap == null ? "null" : Integer.valueOf(treeMap.size()));
        em.h("ScanMediaManager", q.toString());
        e = treeMap;
        this.c = null;
        wm.d dVar = this.b;
        if (dVar != null && treeMap != null) {
            dVar.b(treeMap);
        }
    }

    @Override // defpackage.wm.d
    public void c(int i) {
        wm.d dVar = this.b;
        if (dVar != null) {
            dVar.c(i);
        }
    }

    @Override // defpackage.wm.d
    public void d() {
        wm.d dVar = this.b;
        if (dVar != null) {
            dVar.d();
        }
    }

    public void f() {
        em.h("ScanMediaManager", "interruptScan pre browse photo");
        wm wmVar = this.c;
        if (wmVar != null) {
            wmVar.interrupt();
            this.c = null;
        }
    }

    public void h(wm.d dVar) {
        this.b = dVar;
    }

    public void i(String str) {
        if (TextUtils.isEmpty(str)) {
            em.h("ScanMediaManager", "");
            return;
        }
        em.h("ScanMediaManager", "startScan pre browse photo");
        if (this.c == null) {
            wm wmVar = new wm(CollageMakerApplication.b(), str, this, true);
            this.c = wmVar;
            wmVar.start();
        }
    }
}
