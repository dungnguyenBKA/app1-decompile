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
import android.widget.TextView;
import defpackage.ub0;
import java.util.ArrayList;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import photoeditor.cutout.backgrounderaser.R;

public class c extends xb0 {
    jb0 b;
    int c = R.layout.ad_native_card;
    Bitmap d;
    Bitmap e;
    ImageView f;
    ImageView g;
    ub0.a h;
    String i;

    /* access modifiers changed from: package-private */
    public class a implements Runnable {
        final /* synthetic */ d b;
        final /* synthetic */ Activity c;

        /* renamed from: com.zjsoft.zjad.c$a$a  reason: collision with other inner class name */
        class RunnableC0095a implements Runnable {
            RunnableC0095a() {
            }

            public void run() {
                Bitmap bitmap;
                c cVar = c.this;
                if (cVar.f != null && (bitmap = cVar.d) != null && !bitmap.isRecycled()) {
                    try {
                        c cVar2 = c.this;
                        cVar2.f.setImageBitmap(cVar2.d);
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
                synchronized (c.this.a) {
                    c.this.d = BitmapFactory.decodeFile(this.b.a);
                    Bitmap bitmap = c.this.d;
                    if (bitmap != null && !bitmap.isRecycled()) {
                        this.c.runOnUiThread(new RunnableC0095a());
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
    public class b implements Runnable {
        final /* synthetic */ d b;
        final /* synthetic */ Activity c;

        class a implements Runnable {
            a() {
            }

            public void run() {
                Bitmap bitmap;
                c cVar = c.this;
                if (cVar.g != null && (bitmap = cVar.e) != null && !bitmap.isRecycled()) {
                    try {
                        c cVar2 = c.this;
                        cVar2.g.setImageBitmap(cVar2.e);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        b(d dVar, Activity activity) {
            this.b = dVar;
            this.c = activity;
        }

        public void run() {
            try {
                synchronized (c.this.a) {
                    c.this.e = BitmapFactory.decodeFile(this.b.b);
                    Bitmap bitmap = c.this.e;
                    if (bitmap != null && !bitmap.isRecycled()) {
                        this.c.runOnUiThread(new a());
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
    /* renamed from: com.zjsoft.zjad.c$c  reason: collision with other inner class name */
    public class View$OnClickListenerC0096c implements View.OnClickListener {
        final /* synthetic */ d b;
        final /* synthetic */ Activity c;

        View$OnClickListenerC0096c(d dVar, Activity activity) {
            this.b = dVar;
            this.c = activity;
        }

        public void onClick(View view) {
            if (c.this.h != null) {
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
                c.this.h.c(this.c);
                cc0.a(this.c, this.b.f, 3);
            }
        }
    }

    private synchronized View k(Activity activity, d dVar) {
        View view;
        view = null;
        try {
            view = LayoutInflater.from(activity).inflate(this.c, (ViewGroup) null);
            Button button = (Button) view.findViewById(R.id.b6);
            this.f = (ImageView) view.findViewById(R.id.br);
            this.g = (ImageView) view.findViewById(R.id.bg);
            ((TextView) view.findViewById(R.id.c0)).setText(dVar.c);
            ((TextView) view.findViewById(R.id.bk)).setText(dVar.d);
            button.setText(dVar.g);
            button.setClickable(false);
            new Thread(new a(dVar, activity)).start();
            new Thread(new b(dVar, activity)).start();
            view.setOnClickListener(new View$OnClickListenerC0096c(dVar, activity));
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
                Bitmap bitmap = this.d;
                if (bitmap != null && !bitmap.isRecycled()) {
                    this.d.recycle();
                }
                ImageView imageView2 = this.g;
                if (imageView2 != null) {
                    imageView2.setImageBitmap(null);
                }
                Bitmap bitmap2 = this.e;
                if (bitmap2 != null && !bitmap2.isRecycled()) {
                    this.e.recycle();
                }
            } catch (Throwable th) {
                fc0.a().c(activity, th);
            }
        }
    }

    @Override // defpackage.ub0
    public String b() {
        StringBuilder q = ic.q("ZJAdCard@");
        q.append(c(this.i));
        return q.toString();
    }

    @Override // defpackage.ub0
    public void d(Activity activity, lb0 lb0, ub0.a aVar) {
        fc0.a().b(activity, "ZJAdCard:load");
        if (activity != null && lb0.a() != null && aVar != null) {
            try {
                this.h = aVar;
                jb0 a2 = lb0.a();
                this.b = a2;
                if (a2.b() != null) {
                    this.c = this.b.b().getInt("layout_id", R.layout.ad_native_card);
                }
                d j = j(activity, cc0.s(activity));
                if (j != null) {
                    this.i = j.f;
                    View k = k(activity, j);
                    if (k != null) {
                        aVar.a(activity, k);
                    }
                    fc0 a3 = fc0.a();
                    a3.b(activity, "ZJAdCard: get selfAd: " + j.f);
                    return;
                }
                fc0.a().b(activity, "ZJAdCard: no selfAd return");
                aVar.d(activity, new kb0("ZJAdCard: no selfAd return"));
            } catch (Throwable th) {
                fc0.a().c(activity, th);
            }
        } else if (aVar != null) {
            ic.t("ZJAdCard:Please check params is right.", aVar, activity);
        } else {
            throw new IllegalArgumentException("ZJAdCard:Please check MediationListener is right.");
        }
    }

    public d j(Context context, String str) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                String optString = jSONObject.optString("package", "");
                if (!a.a(context, optString)) {
                    if (!cc0.w(context, optString, 3)) {
                        d dVar = new d();
                        dVar.f = optString;
                        dVar.e = jSONObject.optString("market_url", "");
                        dVar.c = jSONObject.optString("app_name", "");
                        dVar.d = jSONObject.optString("app_des", "");
                        dVar.a = jSONObject.optString("app_icon", "");
                        dVar.g = jSONObject.optString("action", "");
                        String optString2 = jSONObject.optString("app_cover", "");
                        dVar.b = optString2;
                        if (!optString2.equals("")) {
                            arrayList.add(dVar);
                        }
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
}
