package defpackage;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.android.billingclient.api.j;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;
import com.google.billingclient.g;
import defpackage.om;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.cookie.ClientCookie;
import org.json.JSONArray;
import org.json.JSONObject;

@SuppressLint({"CheckResult"})
/* renamed from: yp  reason: default package */
public class yp {
    private static yp s;
    private g a;
    private g.d b;
    private final List<fq> c = Collections.synchronizedList(new ArrayList());
    private final List<gq> d = Collections.synchronizedList(new ArrayList());
    private final List<fq> e = Collections.synchronizedList(new ArrayList());
    private final List<iq> f = Collections.synchronizedList(new ArrayList());
    private final List<fq> g = Collections.synchronizedList(new ArrayList());
    private final List<hq> h = Collections.synchronizedList(new ArrayList());
    private int i = c2.i(CollageMakerApplication.b());
    private final List<f> j = Collections.synchronizedList(new ArrayList());
    private Handler k;
    private AtomicBoolean l = new AtomicBoolean(false);
    private AtomicBoolean m = new AtomicBoolean(false);
    private AtomicBoolean n = new AtomicBoolean(false);
    private AtomicBoolean o = new AtomicBoolean(false);
    private Map<String, Integer> p = new HashMap();
    private final List<e> q = Collections.synchronizedList(new ArrayList());
    private e r = new c();

    /* renamed from: yp$a */
    class a implements g.d {
        a() {
        }

        @Override // com.google.billingclient.g.d
        public void a(Activity activity, List<String> list, int i) {
            if (activity != null && list != null && list.size() > 0) {
                yp ypVar = yp.this;
                String str = list.get(0);
                Objects.requireNonNull(ypVar);
                if (str != null) {
                    activity.runOnUiThread(new pp(ypVar, activity, str));
                }
            }
        }

        @Override // com.google.billingclient.g.d
        public void b(int i, List<j> list) {
            char c;
            if (yp.this.b != null) {
                yp.this.b.b(i, list);
            }
            if (i == 0 && list != null) {
                androidx.core.app.b.W(CollageMakerApplication.b()).getBoolean("photoeditor.layout.collagemaker.removeads", false);
                ArrayList arrayList = new ArrayList();
                SharedPreferences.Editor edit = androidx.core.app.b.W(CollageMakerApplication.b()).edit();
                try {
                    edit.putBoolean("photoeditor.layout.collagemaker.removeads", false).putBoolean("photoeditor.layout.collagemaker.vip.monthly", false).putBoolean("photoeditor.layout.collagemaker.vip.yearly", false).putBoolean("breastenlarger.bodyeditor.photoeditor.vip.permanent", false).putBoolean("SubscribePro", false);
                    for (j jVar : list) {
                        String c2 = jVar.c();
                        switch (c2.hashCode()) {
                            case -1855227692:
                                if (c2.equals("photoeditor.layout.collagemaker.vip.monthly")) {
                                    c = 1;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -970488508:
                                if (c2.equals("photoeditor.layout.collagemaker.removeads")) {
                                    c = 0;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -280109853:
                                if (c2.equals("photoeditor.layout.collagemaker.vip.yearly")) {
                                    c = 2;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 578218608:
                                if (c2.equals("breastenlarger.bodyeditor.photoeditor.vip.permanent")) {
                                    c = 3;
                                    break;
                                }
                                c = 65535;
                                break;
                            default:
                                c = 65535;
                                break;
                        }
                        if (c == 0) {
                            edit.putBoolean("photoeditor.layout.collagemaker.removeads", true);
                        } else if (c == 1) {
                            edit.putBoolean("photoeditor.layout.collagemaker.vip.monthly", true);
                            edit.putBoolean("SubscribePro", true);
                        } else if (c == 2) {
                            edit.putBoolean("photoeditor.layout.collagemaker.vip.yearly", true);
                            edit.putBoolean("SubscribePro", true);
                        } else if (c != 3) {
                            arrayList.add(jVar.c());
                            edit.putBoolean(androidx.core.app.b.O(jVar.c()), false);
                        } else {
                            edit.putBoolean("breastenlarger.bodyeditor.photoeditor.vip.permanent", true);
                            edit.putBoolean("SubscribePro", true);
                        }
                    }
                } catch (Throwable th) {
                    edit.apply();
                    throw th;
                }
                edit.apply();
            }
        }
    }

    /* renamed from: yp$b */
    class b extends Handler {
        b(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                yp.this.a.v();
            } else if (i == 17) {
                Object obj = message.obj;
                if (obj instanceof JSONObject) {
                    JSONObject jSONObject = (JSONObject) obj;
                    try {
                        int i2 = com.camerasideas.collagemaker.appdata.f.g(CollageMakerApplication.b()).getInt("LocalCutoutBgPackageVersion", 0);
                        if ((jSONObject.optInt("cutoutBgStartVersion", yp.this.i) <= yp.this.i && jSONObject.optInt("cutoutBg") > i2) || i2 == 0) {
                            yp.u(yp.this);
                        }
                        int i3 = com.camerasideas.collagemaker.appdata.f.g(CollageMakerApplication.b()).getInt("LocalFontPackageVersion", 0);
                        if ((jSONObject.optInt("fontStartVersion", yp.this.i) <= yp.this.i && jSONObject.optInt("font") > i3) || i3 == 0) {
                            yp.v(yp.this);
                        }
                        int i4 = com.camerasideas.collagemaker.appdata.f.g(CollageMakerApplication.b()).getInt("LocalCutoutShapePackageVersion", 0);
                        if ((jSONObject.optInt("shapeStartVersion", yp.this.i) <= yp.this.i && jSONObject.optInt("shape") > i4) || i4 == 0) {
                            yp.w(yp.this);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        rq.m(e);
                    }
                }
            } else if (i == 33) {
                yp.r(yp.this, 1, true);
            } else if (i == 240) {
                yp.r(yp.this, -1, false);
            } else if (i == 49) {
                yp.r(yp.this, 2, true);
            } else if (i == 50) {
                yp.r(yp.this, 2, false);
            } else if (i == 65) {
                yp.r(yp.this, 3, true);
            } else if (i != 66) {
                switch (i) {
                    case 225:
                        yp.this.r.j((String) message.obj);
                        return;
                    case 226:
                        yp.this.r.u((String) message.obj, message.arg1);
                        return;
                    case 227:
                        yp.this.r.n((String) message.obj);
                        return;
                    case 228:
                        yp.this.r.q((String) message.obj);
                        return;
                    default:
                        return;
                }
            } else {
                yp.r(yp.this, 3, false);
            }
        }
    }

    /* renamed from: yp$c */
    class c implements e {
        c() {
        }

        @Override // defpackage.yp.e
        public void j(String str) {
            if (str != null) {
                if (Looper.myLooper() != yp.this.k.getLooper()) {
                    yp.this.k.obtainMessage(225, str).sendToTarget();
                    return;
                }
                yp.this.p.put(str, 0);
                try {
                    Iterator it = new ArrayList(yp.this.q).iterator();
                    while (it.hasNext()) {
                        e eVar = (e) it.next();
                        if (eVar != null) {
                            eVar.j(str);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    rq.m(e);
                }
            }
        }

        @Override // defpackage.yp.e
        public void n(String str) {
            if (str != null) {
                if (Looper.myLooper() != yp.this.k.getLooper()) {
                    yp.this.k.obtainMessage(227, str).sendToTarget();
                    return;
                }
                try {
                    System.currentTimeMillis();
                    yp.this.p.remove(str);
                    List n = yp.n(yp.this, str);
                    List I = yp.this.I(str);
                    boolean z = false;
                    Iterator it = n.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (((fq) it.next()).h.equalsIgnoreCase(str)) {
                                z = true;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    if (!z) {
                        Iterator it2 = I.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            fq fqVar = (fq) it2.next();
                            if (fqVar.h.equalsIgnoreCase(str)) {
                                if (fqVar instanceof gq) {
                                    yp.this.d.add((gq) fqVar);
                                } else if (fqVar instanceof iq) {
                                    yp.this.f.add((iq) fqVar);
                                }
                            }
                        }
                        Collections.sort(n, kp.b);
                    }
                    Iterator it3 = new ArrayList(yp.this.q).iterator();
                    while (it3.hasNext()) {
                        e eVar = (e) it3.next();
                        if (eVar != null) {
                            eVar.n(str);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    rq.m(e);
                }
            }
        }

        @Override // defpackage.yp.e
        public void q(String str) {
            if (str != null) {
                if (Looper.myLooper() != yp.this.k.getLooper()) {
                    yp.this.k.obtainMessage(228, str).sendToTarget();
                    return;
                }
                yp.this.p.put(str, -1);
                try {
                    Iterator it = new ArrayList(yp.this.q).iterator();
                    while (it.hasNext()) {
                        e eVar = (e) it.next();
                        if (eVar != null) {
                            eVar.q(str);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    rq.m(e);
                }
            }
        }

        @Override // defpackage.yp.e
        public void u(String str, int i) {
            if (str != null) {
                if (Looper.myLooper() != yp.this.k.getLooper()) {
                    yp.this.k.obtainMessage(226, i, 0, str).sendToTarget();
                    return;
                }
                yp.this.p.put(str, Integer.valueOf(i));
                try {
                    Iterator it = new ArrayList(yp.this.q).iterator();
                    while (it.hasNext()) {
                        e eVar = (e) it.next();
                        if (eVar != null) {
                            eVar.u(str, i);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    rq.m(e);
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: yp$d */
    public class d implements om.a {
        int a;
        int b;
        final /* synthetic */ int c;
        final /* synthetic */ String d;
        final /* synthetic */ List e;

        d(int i, String str, List list) {
            this.c = i;
            this.d = str;
            this.e = list;
            this.a = 100 / i;
        }

        @Override // defpackage.om.a
        public void a(int i) {
            yp.this.r.u(this.d, (i / this.c) + (this.b * this.a));
        }

        @Override // defpackage.pm.b
        public void c(int i, Exception exc) {
            StringBuilder q = ic.q("downloadFailed e = ");
            q.append(exc != null ? exc.getMessage() : null);
            em.h("CloudStoreManager", q.toString());
            uq.n(CollageMakerApplication.b(), "Error_Store_Package", exc != null ? exc.getMessage() : "no info");
            if (this.d != null) {
                uq.n(CollageMakerApplication.b(), "Download_Failed", this.d);
            }
            yp.this.r.q(((eq) this.e.get(this.b)).c);
            yp.this.r.q(this.d);
        }

        /* renamed from: d */
        public void b(String str) {
            try {
                if (!TextUtils.isEmpty(str) && str.endsWith(".tmp")) {
                    new File(str).renameTo(new File(str.substring(0, str.indexOf(".tmp"))));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (((eq) this.e.get(this.b)).d) {
                File file = new File(((eq) this.e.get(this.b)).b);
                if (androidx.core.app.b.L0(file, file.getParentFile())) {
                    yp.this.r.n(((eq) this.e.get(this.b)).c);
                } else {
                    yp.this.r.q(((eq) this.e.get(this.b)).c);
                }
            } else {
                yp.this.r.n(((eq) this.e.get(this.b)).c);
            }
            int i = this.b + 1;
            this.b = i;
            if (i < this.e.size()) {
                File parentFile = new File(((eq) this.e.get(this.b)).b).getParentFile();
                if (parentFile.exists() || parentFile.mkdirs()) {
                    yp.this.r.j(((eq) this.e.get(this.b)).c);
                    new om(((eq) this.e.get(this.b)).a, ((eq) this.e.get(this.b)).b, this).run();
                    return;
                }
                em.h("CloudStoreManager", "mkdirs failed2");
                yp.this.r.q(((eq) this.e.get(this.b)).c);
                return;
            }
            yp.this.r.n(this.d);
            if (this.d != null) {
                uq.n(CollageMakerApplication.b(), "Download_Success", this.d);
                uq.k(CollageMakerApplication.b(), com.camerasideas.collagemaker.appdata.d.download);
            }
        }
    }

    /* renamed from: yp$e */
    public interface e {
        void j(String str);

        void n(String str);

        void q(String str);

        void u(String str, int i);
    }

    /* renamed from: yp$f */
    public interface f {
        void s(int i, boolean z);
    }

    private yp() {
        g gVar = new g(CollageMakerApplication.b(), new xp(this));
        this.a = gVar;
        gVar.x(new a());
        this.k = new b(CollageMakerApplication.b().getMainLooper());
    }

    private void A(String str, List<eq> list) {
        if (list.isEmpty()) {
            this.r.n(str);
        } else if (!androidx.core.app.b.f0(CollageMakerApplication.b())) {
            this.k.sendEmptyMessage(240);
            this.r.q(str);
        } else {
            int size = list.size();
            File parentFile = new File(list.get(0).b).getParentFile();
            if (parentFile.exists() || parentFile.mkdirs()) {
                if (str != null) {
                    uq.n(CollageMakerApplication.b(), "Download_Start", str);
                }
                this.r.j(str);
                this.r.j(list.get(0).c);
                ml.k.execute(new om(list.get(0).a, list.get(0).b, new d(size, str, list)));
                return;
            }
            em.h("CloudStoreManager", "mkdirs failed");
            this.r.q(str);
        }
    }

    private static boolean B(iq iqVar) {
        String[] list;
        if (iqVar.b == -1) {
            return true;
        }
        File file = new File(dq.c(iqVar.h));
        if (!file.exists() || !file.isDirectory() || (list = file.list()) == null || list.length <= 0) {
            return false;
        }
        return new File(file, iqVar.f()).exists();
    }

    /* access modifiers changed from: private */
    public static File D() {
        return CollageMakerApplication.b().getFileStreamPath("cutout_bg.json");
    }

    public static yp F() {
        if (s == null) {
            synchronized (yp.class) {
                if (s == null) {
                    s = new yp();
                }
            }
        }
        return s;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private List<fq> I(String str) {
        if (str.startsWith("cutoutbg_")) {
            return this.c;
        }
        if (str.startsWith("font_")) {
            return this.e;
        }
        if (str.startsWith("shape_")) {
            return this.g;
        }
        return this.c;
    }

    /* access modifiers changed from: private */
    public void P() {
        try {
            File D = D();
            String str = null;
            if (D.exists()) {
                str = androidx.core.app.b.q0(D, "utf-8");
            }
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Context b2 = CollageMakerApplication.b();
                com.camerasideas.collagemaker.appdata.f.g(b2).edit().putInt("LocalCutoutBgPackageVersion", jSONObject.optInt(ClientCookie.VERSION_ATTR)).apply();
                JSONArray jSONArray = jSONObject.getJSONArray("category");
                int length = jSONArray.length();
                this.c.clear();
                this.d.clear();
                for (int i2 = 0; i2 < length; i2++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i2);
                    if (optJSONObject != null) {
                        JSONArray jSONArray2 = optJSONObject.getJSONArray("items");
                        HashMap hashMap = new HashMap();
                        JSONObject optJSONObject2 = optJSONObject.optJSONObject("titleMap");
                        if (optJSONObject2 != null) {
                            Iterator<String> keys = optJSONObject2.keys();
                            while (keys.hasNext()) {
                                String next = keys.next();
                                hashMap.put(next, jq.a(optJSONObject2.optJSONObject(next)));
                            }
                        }
                        for (int i3 = 0; i3 < jSONArray2.length(); i3++) {
                            gq e2 = gq.e(jSONArray2.optJSONObject(i3));
                            e2.h(hashMap);
                            if (this.i >= e2.c) {
                                this.c.add(e2);
                                if (e2.e || S(e2)) {
                                    this.d.add(e2);
                                }
                            }
                        }
                    }
                }
                Collections.sort(this.c, up.b);
                this.k.sendEmptyMessage(33);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    /* access modifiers changed from: private */
    public void Q() {
        try {
            File fileStreamPath = CollageMakerApplication.b().getFileStreamPath("shape.json");
            String str = null;
            if (fileStreamPath.exists()) {
                str = androidx.core.app.b.q0(fileStreamPath, "utf-8");
            }
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Context b2 = CollageMakerApplication.b();
                com.camerasideas.collagemaker.appdata.f.g(b2).edit().putInt("LocalCutoutShapePackageVersion", jSONObject.optInt(ClientCookie.VERSION_ATTR)).apply();
                JSONArray jSONArray = jSONObject.getJSONArray("category");
                int length = jSONArray.length();
                this.g.clear();
                this.h.clear();
                for (int i2 = 0; i2 < length; i2++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i2);
                    if (optJSONObject != null) {
                        JSONArray jSONArray2 = optJSONObject.getJSONArray("items");
                        HashMap hashMap = new HashMap();
                        JSONObject optJSONObject2 = optJSONObject.optJSONObject("titleMap");
                        if (optJSONObject2 != null) {
                            Iterator<String> keys = optJSONObject2.keys();
                            while (keys.hasNext()) {
                                String next = keys.next();
                                hashMap.put(next, jq.a(optJSONObject2.optJSONObject(next)));
                            }
                        }
                        for (int i3 = 0; i3 < jSONArray2.length(); i3++) {
                            hq e2 = hq.e(jSONArray2.optJSONObject(i3));
                            e2.g(hashMap);
                            if (this.i >= e2.c) {
                                this.g.add(e2);
                                if (e2.e || S(e2)) {
                                    this.h.add(e2);
                                }
                            }
                        }
                    }
                }
                Collections.sort(this.g, wp.b);
                Collections.sort(this.h, lp.b);
                this.k.sendEmptyMessage(65);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    /* access modifiers changed from: private */
    public void R() {
        try {
            File fileStreamPath = CollageMakerApplication.b().getFileStreamPath("font.json");
            String str = null;
            if (fileStreamPath.exists()) {
                str = androidx.core.app.b.q0(fileStreamPath, "utf-8");
            } else {
                com.camerasideas.collagemaker.appdata.f.g(CollageMakerApplication.b()).edit().putInt("LocalFontPackageVersion", 0).apply();
            }
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Context b2 = CollageMakerApplication.b();
                com.camerasideas.collagemaker.appdata.f.g(b2).edit().putInt("LocalFontPackageVersion", jSONObject.optInt(ClientCookie.VERSION_ATTR)).apply();
                JSONArray jSONArray = jSONObject.getJSONArray("items");
                int length = jSONArray.length();
                this.e.clear();
                this.f.clear();
                for (int i2 = 0; i2 < length; i2++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i2);
                    if (optJSONObject != null) {
                        iq e2 = iq.e(optJSONObject);
                        if (this.i >= e2.c) {
                            this.e.add(e2);
                            if (e2.b != 2 && B(e2)) {
                                this.f.add(e2);
                            }
                        }
                    }
                }
                Collections.sort(this.e, mp.b);
                Collections.sort(this.f, tp.b);
                this.k.obtainMessage(49).sendToTarget();
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public static boolean S(fq fqVar) {
        String str;
        String[] list;
        if (!(fqVar == null || (str = fqVar.h) == null)) {
            if (fqVar.b == -1) {
                return true;
            }
            String str2 = null;
            if (fqVar instanceof gq) {
                File[] listFiles = new File(dq.b(((gq) fqVar).h)).listFiles(sp.a);
                if (listFiles == null || listFiles.length <= 0) {
                    return false;
                }
                return true;
            } else if (fqVar instanceof iq) {
                return B((iq) fqVar);
            } else {
                if (fqVar instanceof hq) {
                    str2 = dq.d(str);
                }
                if (str2 == null) {
                    return false;
                }
                File file = new File(str2);
                if (!file.exists() || !file.isDirectory() || (list = file.list()) == null || list.length <= 0) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    static List n(yp ypVar, String str) {
        Objects.requireNonNull(ypVar);
        if (str.startsWith("cutoutbg_")) {
            return ypVar.d;
        }
        if (str.startsWith("font_")) {
            return ypVar.f;
        }
        if (str.startsWith("shape_")) {
            return ypVar.h;
        }
        return ypVar.d;
    }

    static void r(yp ypVar, int i2, boolean z) {
        Objects.requireNonNull(ypVar);
        try {
            synchronized (ypVar.j) {
                for (f fVar : ypVar.j) {
                    if (fVar != null) {
                        fVar.s(i2, z);
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    static void u(yp ypVar) {
        Objects.requireNonNull(ypVar);
        em.h("CloudStoreManager", "updateServerStoreCutoutBg");
        if (!androidx.core.app.b.f0(CollageMakerApplication.b())) {
            ypVar.k.sendEmptyMessage(240);
            return;
        }
        if (!D().exists()) {
            com.camerasideas.collagemaker.appdata.f.g(CollageMakerApplication.b()).edit().putInt("LocalCutoutBgPackageVersion", 0).apply();
        }
        if (!ypVar.m.get()) {
            ypVar.m.set(true);
            ml.k.execute(new om(dq.b, CollageMakerApplication.b().getFileStreamPath("cutout_bg.json.tmp").getAbsolutePath(), new aq(ypVar)));
        }
    }

    static void v(yp ypVar) {
        Objects.requireNonNull(ypVar);
        em.h("CloudStoreManager", "updateServerStoreFont");
        if (!androidx.core.app.b.f0(CollageMakerApplication.b())) {
            ypVar.k.sendEmptyMessage(240);
        } else if (!ypVar.o.get()) {
            ypVar.o.set(true);
            ml.k.execute(new om(dq.c, CollageMakerApplication.b().getFileStreamPath("font.json.tmp").getAbsolutePath(), new bq(ypVar)));
        }
    }

    static void w(yp ypVar) {
        Objects.requireNonNull(ypVar);
        em.h("CloudStoreManager", "updateServerStoreCutoutBg");
        if (!androidx.core.app.b.f0(CollageMakerApplication.b())) {
            ypVar.k.sendEmptyMessage(240);
            return;
        }
        if (!D().exists()) {
            com.camerasideas.collagemaker.appdata.f.g(CollageMakerApplication.b()).edit().putInt("LocalCutoutShapePackageVersion", 0).apply();
        }
        if (!ypVar.n.get()) {
            ypVar.n.set(true);
            ml.k.execute(new om(dq.d, CollageMakerApplication.b().getFileStreamPath("shape.json.tmp").getAbsolutePath(), new cq(ypVar)));
        }
    }

    public g C() {
        return this.a;
    }

    public Integer E(String str) {
        return this.p.get(str);
    }

    public List<gq> G() {
        return this.d;
    }

    public List<hq> H() {
        return this.h;
    }

    public List<fq> J() {
        return this.e;
    }

    public void K() {
        ml.i.execute(new qp(this));
    }

    public /* synthetic */ void L(File file, File file2, String str) {
        if (androidx.core.app.b.L0(file, file2)) {
            this.r.n(str);
            return;
        }
        file.delete();
        this.r.q(str);
    }

    public void M() {
        if (this.c.isEmpty()) {
            P();
        }
        if (this.e.isEmpty()) {
            R();
        }
        if (this.g.isEmpty()) {
            Q();
        }
        this.k.obtainMessage(1).sendToTarget();
        try {
            File fileStreamPath = CollageMakerApplication.b().getFileStreamPath("update_config.json");
            if (fileStreamPath.exists()) {
                String q0 = androidx.core.app.b.q0(fileStreamPath, "utf-8");
                em.h("CloudStoreManager", "LocalUpdateConfig = " + q0);
                this.k.obtainMessage(17, new JSONObject(q0)).sendToTarget();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            rq.m(e2);
        }
        if (!androidx.core.app.b.f0(CollageMakerApplication.b())) {
            this.k.sendEmptyMessage(240);
        } else if (!this.l.get()) {
            em.h("CloudStoreManager", "downloadUpdateConfig");
            this.l.set(true);
            ml.k.execute(new om(dq.a, CollageMakerApplication.b().getFileStreamPath("update_config.json.tmp").getAbsolutePath(), new zp(this)));
        }
    }

    public /* synthetic */ void N(Activity activity, String str, DialogInterface dialogInterface, int i2) {
        dialogInterface.dismiss();
        this.a.t(activity, str, "inapp");
    }

    public /* synthetic */ void O() {
        P();
        Q();
        R();
    }

    public void T(e eVar) {
        this.q.remove(eVar);
    }

    public void U(f fVar) {
        this.j.remove(fVar);
    }

    public void V(g.d dVar) {
        this.b = dVar;
    }

    public void x(e eVar) {
        em.h("CloudStoreManager", "addDownloadListener listener = " + eVar);
        if (!this.q.contains(eVar)) {
            this.q.add(eVar);
        }
    }

    public void y(f fVar) {
        if (!this.j.contains(fVar)) {
            this.j.add(fVar);
        }
    }

    public void z(fq fqVar) {
        boolean z;
        String str;
        String str2;
        String str3;
        if (fqVar == null) {
            uq.n(CollageMakerApplication.b(), "Download_Failed", "Bean is null");
            return;
        }
        String str4 = fqVar.h;
        if (!this.p.containsKey(str4) || this.p.get(str4).intValue() == -1) {
            uq.n(CollageMakerApplication.b(), "Store_Download", str4);
            if (fqVar instanceof gq) {
                gq gqVar = (gq) fqVar;
                String str5 = gqVar.h;
                if (str5 == null || gqVar.k == null) {
                    uq.n(CollageMakerApplication.b(), "Store_Download", "DownloadFailed/CutoutBg is not valid");
                } else if (!this.p.containsKey(str5) || this.p.get(str5).intValue() == -1) {
                    String b2 = dq.b(gqVar.h);
                    String str6 = gqVar.k;
                    File file = new File(b2, "/.zip");
                    if (file.exists()) {
                        File parentFile = file.getParentFile();
                        if (parentFile == null || parentFile.listFiles() == null || parentFile.listFiles().length != 1) {
                            this.r.n(str5);
                        } else {
                            ml.h(new vp(this, file, parentFile, str5));
                        }
                    } else {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(new eq(str6, ic.i(b2, "/.zip"), null, true));
                        A(str5, arrayList);
                    }
                } else {
                    em.h("CloudStoreManager", str5 + " is downloading, return");
                }
            } else {
                if (fqVar instanceof iq) {
                    str2 = dq.c(str4);
                    StringBuilder r2 = ic.r(str2, "/");
                    r2.append(((iq) fqVar).f());
                    r2.append(".tmp");
                    str = r2.toString();
                    z = true;
                } else {
                    if (fqVar instanceof hq) {
                        str2 = dq.d(str4);
                        StringBuilder r3 = ic.r(str2, "/");
                        hq hqVar = (hq) fqVar;
                        if (hqVar.n == null && (str3 = hqVar.k) != null) {
                            hqVar.n = str3.substring(str3.lastIndexOf("/") + 1);
                        }
                        r3.append(hqVar.n);
                        str = r3.toString();
                    } else {
                        str2 = null;
                        str = null;
                    }
                    z = false;
                }
                if (S(fqVar)) {
                    this.r.n(str4);
                } else if (str2 == null) {
                    this.r.q(str4);
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new eq(fqVar.k, str, null, !z));
                    A(str4, arrayList2);
                }
            }
        } else {
            em.h("CloudStoreManager", str4 + " is downloading, return");
        }
    }
}
