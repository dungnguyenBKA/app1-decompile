package defpackage;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;
import com.camerasideas.collagemaker.appdata.MediaFileInfo;
import defpackage.zm;
import java.util.List;
import java.util.TreeMap;

/* renamed from: wm  reason: default package */
public class wm extends Thread implements zm.a {
    private Handler b;
    private boolean c = false;
    private zm d;
    private d e;

    /* renamed from: wm$a */
    class a implements Runnable {
        a() {
        }

        public void run() {
            wm.this.e.d();
        }
    }

    /* renamed from: wm$b */
    class b implements Runnable {
        final /* synthetic */ TreeMap b;

        b(TreeMap treeMap) {
            this.b = treeMap;
        }

        public void run() {
            em.h("BrowseMediaLibraryThread", "Send browse media library result to main thread");
            wm.this.e.b(this.b);
        }
    }

    /* renamed from: wm$c */
    class c implements Runnable {
        final /* synthetic */ int b;

        c(int i) {
            this.b = i;
        }

        public void run() {
            wm.this.e.c(this.b);
        }
    }

    /* renamed from: wm$d */
    public interface d {
        void b(TreeMap<String, List<MediaFileInfo>> treeMap);

        void c(int i);

        void d();
    }

    public wm(Context context, String str, d dVar, boolean z) {
        this.e = dVar;
        this.c = z;
        this.b = new Handler(context != null ? context.getMainLooper() : Looper.getMainLooper());
        if (TextUtils.equals("image/*", str)) {
            this.d = new dn();
        }
    }

    public void b(int i) {
        Handler handler;
        if (this.e != null && (handler = this.b) != null) {
            handler.post(new c(i));
        }
    }

    public void run() {
        Handler handler;
        em.h("BrowseMediaLibraryThread", "start browse media library thread");
        if (this.d != null && (handler = this.b) != null) {
            if (this.e != null) {
                handler.post(new a());
            }
            TreeMap<String, List<MediaFileInfo>> treeMap = null;
            TreeMap<String, List<MediaFileInfo>> a2 = ((dn) this.d).a(CollageMakerApplication.b(), this, null, this.c);
            if (!isInterrupted()) {
                treeMap = a2;
            }
            if (this.e != null) {
                this.b.post(new b(treeMap));
            }
        }
    }
}
