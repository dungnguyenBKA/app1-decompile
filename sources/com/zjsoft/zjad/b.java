package com.zjsoft.zjad;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import defpackage.ub0;
import java.util.ArrayList;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import photoeditor.cutout.backgrounderaser.R;

public class b extends vb0 {
    jb0 b;
    int c = R.layout.ac;
    int d = R.layout.ad;
    Bitmap e;
    ImageView f;
    ub0.a g;
    String h;

    /* access modifiers changed from: package-private */
    public class a implements Runnable {
        final /* synthetic */ d b;
        final /* synthetic */ Activity c;

        /* renamed from: com.zjsoft.zjad.b$a$a  reason: collision with other inner class name */
        class RunnableC0093a implements Runnable {
            RunnableC0093a() {
            }

            public void run() {
                Bitmap bitmap;
                b bVar = b.this;
                if (bVar.f != null && (bitmap = bVar.e) != null && !bitmap.isRecycled()) {
                    try {
                        b bVar2 = b.this;
                        bVar2.f.setImageBitmap(bVar2.e);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        a(d dVar, Activity activity) {
            this.b = dVar;
            this.c = activity;
        }

        public void run() {
            try {
                synchronized (b.this.a) {
                    b.this.e = BitmapFactory.decodeFile(this.b.a);
                    Bitmap bitmap = b.this.e;
                    if (bitmap != null && !bitmap.isRecycled()) {
                        this.c.runOnUiThread(new RunnableC0093a());
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            } catch (Error e2) {
                e2.printStackTrace();
            }
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: com.zjsoft.zjad.b$b  reason: collision with other inner class name */
    public class View$OnClickListenerC0094b implements View.OnClickListener {
        final /* synthetic */ d b;
        final /* synthetic */ Activity c;

        View$OnClickListenerC0094b(d dVar, Activity activity) {
            this.b = dVar;
            this.c = activity;
        }

        public void onClick(View view) {
            if (b.this.g != null) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.b.e));
                    intent.setFlags(268435456);
                    intent.setPackage("com.android.vending");
                    this.c.startActivity(intent);
                } catch (Exception e) {
                    e.printStackTrace();
                    try {
                        Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(this.b.e));
                        intent2.setFlags(268435456);
                        this.c.startActivity(intent2);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                b.this.g.c(this.c);
                cc0.a(this.c, this.b.f, 1);
            }
        }
    }

    private d l(Context context, String str) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String optString = jSONObject.optString("package", "");
                if (!a.a(context, optString) && !cc0.w(context, optString, 1)) {
                    if (cc0.u(context, optString, 1) <= 9) {
                        d dVar = new d();
                        dVar.f = optString;
                        dVar.e = jSONObject.optString("market_url", "");
                        dVar.c = jSONObject.optString("app_name", "");
                        dVar.d = jSONObject.optString("app_des", "");
                        dVar.a = jSONObject.optString("app_icon", "");
                        dVar.g = jSONObject.optString("action", "");
                        dVar.b = jSONObject.optString("app_cover", "");
                        arrayList.add(dVar);
                    }
                }
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        if (arrayList.size() > 0) {
            return (d) arrayList.get(new Random().nextInt(arrayList.size()));
        }
        return null;
    }

    private synchronized View m(Activity activity, d dVar) {
        View view;
        view = null;
        try {
            View inflate = LayoutInflater.from(activity).inflate(this.c, (ViewGroup) null);
            Button button = (Button) inflate.findViewById(R.id.b6);
            this.f = (ImageView) inflate.findViewById(R.id.br);
            ((TextView) inflate.findViewById(R.id.c0)).setText(dVar.c);
            ((TextView) inflate.findViewById(R.id.bk)).setText(dVar.d);
            button.setText(dVar.g);
            button.setClickable(false);
            new Thread(new a(dVar, activity)).start();
            view = LayoutInflater.from(activity).inflate(this.d, (ViewGroup) null);
            ((LinearLayout) view.findViewById(R.id.by)).addView(inflate);
            inflate.setOnClickListener(new View$OnClickListenerC0094b(dVar, activity));
            cc0.b(activity, dVar.f, 1);
        } catch (Throwable th) {
            fc0.a().c(activity, th);
        }
        return view;
    }

    @Override // defpackage.ub0
    public synchronized void a(Activity activity) {
        synchronized (this.a) {
            try {
                ImageView imageView = this.f;
                if (imageView != null) {
                    imageView.setImageBitmap(null);
                }
                Bitmap bitmap = this.e;
                if (bitmap != null && !bitmap.isRecycled()) {
                    this.e.recycle();
                }
            } catch (Throwable th) {
                fc0.a().c(activity, th);
            }
        }
    }

    @Override // defpackage.ub0
    public String b() {
        StringBuilder q = ic.q("ZJAdBanner@");
        q.append(c(this.h));
        return q.toString();
    }

    @Override // defpackage.ub0
    public void d(Activity activity, lb0 lb0, ub0.a aVar) {
        fc0.a().b(activity, "ZJAdBanner:load");
        if (activity != null && lb0.a() != null && aVar != null) {
            try {
                jb0 a2 = lb0.a();
                this.b = a2;
                this.g = aVar;
                if (a2.b() != null) {
                    this.c = this.b.b().getInt("layout_id", R.layout.ac);
                    this.d = this.b.b().getInt("root_layout_id", R.layout.ad);
                }
                d l = l(activity, cc0.s(activity));
                if (l != null) {
                    this.h = l.f;
                    View m = m(activity, l);
                    if (m != null) {
                        aVar.a(activity, m);
                        aVar.d(activity, new kb0("ZJAdBanner: load business ads"));
                    }
                    fc0 a3 = fc0.a();
                    a3.b(activity, "ZJAdBanner: get selfAd: " + l.f);
                    return;
                }
                fc0.a().b(activity, "ZJAdBanner: no selfAd return");
                aVar.d(activity, new kb0("ZJAdBanner: no selfAd return"));
            } catch (Throwable th) {
                fc0.a().c(activity, th);
            }
        } else if (aVar != null) {
            ic.t("ZJAdBanner:Please check params is right.", aVar, activity);
        } else {
            throw new IllegalArgumentException("ZJAdBanner:Please check MediationListener is right.");
        }
    }

    @Override // defpackage.vb0
    public void j() {
    }

    @Override // defpackage.vb0
    public void k() {
    }
}
