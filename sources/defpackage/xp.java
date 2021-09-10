package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.core.app.b;
import com.android.billingclient.api.g;
import com.android.billingclient.api.j;
import com.android.billingclient.api.m;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* renamed from: xp  reason: default package */
public final /* synthetic */ class xp implements m {
    public final /* synthetic */ yp a;

    public /* synthetic */ xp(yp ypVar) {
        this.a = ypVar;
    }

    @Override // com.android.billingclient.api.m
    public final void c(g gVar, List list) {
        Objects.requireNonNull(this.a);
        em.h("CloudStoreManager", "code = " + gVar.b() + ", purchases = " + list);
        if (gVar.b() == 0) {
            if (list != null) {
                ArrayList arrayList = new ArrayList();
                SharedPreferences.Editor edit = b.W(CollageMakerApplication.b()).edit();
                try {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        j jVar = (j) it.next();
                        if (jVar.c().equals("photoeditor.layout.collagemaker.removeads")) {
                            edit.putBoolean("photoeditor.layout.collagemaker.removeads", true);
                            edit.putBoolean("HasPay", true);
                        } else if (jVar.c().equals("photoeditor.layout.collagemaker.vip.yearly")) {
                            edit.putBoolean("photoeditor.layout.collagemaker.vip.yearly", true);
                            edit.putBoolean("SubscribePro", true);
                            edit.putBoolean("HasPro", true);
                        } else if (jVar.c().equals("breastenlarger.bodyeditor.photoeditor.vip.permanent")) {
                            edit.putBoolean("SubscribePro", true);
                            edit.putBoolean("breastenlarger.bodyeditor.photoeditor.vip.permanent", true);
                        }
                        arrayList.add(jVar.c());
                    }
                } catch (Throwable th) {
                    edit.apply();
                    throw th;
                }
                edit.apply();
            }
        } else if (gVar.b() == 1) {
            TextUtils.isEmpty(null);
        } else if (gVar.b() != 7) {
            Context b = CollageMakerApplication.b();
            StringBuilder q = ic.q("购买素材失败：");
            q.append(gVar.b());
            uq.o(b, q.toString());
        }
    }
}
