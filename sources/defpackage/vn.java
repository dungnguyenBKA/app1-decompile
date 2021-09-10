package defpackage;

import android.content.Context;
import android.text.TextUtils;
import com.camerasideas.collagemaker.appdata.f;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: vn  reason: default package */
public class vn {
    public static List<wn> a(Context context) {
        ArrayList arrayList = new ArrayList();
        List<fq> J = yp.F().J();
        if (J == null || J.size() == 0) {
            arrayList.add(new wn(context.getResources().getString(R.string.hz), "Roboto-Medium.ttf"));
            arrayList.add(new wn(context.getResources().getString(R.string.hz), "Roboto-Regular.ttf"));
        } else {
            ArrayList arrayList2 = new ArrayList();
            if (context != null) {
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                ArrayList arrayList5 = new ArrayList();
                Locale locale = context.getResources().getConfiguration().locale;
                String string = f.g(context).getString("CurrentLanguage", Locale.getDefault().toString());
                int indexOf = string.indexOf(45);
                if (indexOf != -1) {
                    string = string.substring(0, indexOf);
                }
                if (TextUtils.isEmpty(string)) {
                    string = "en";
                }
                if ("en".equalsIgnoreCase(string)) {
                    arrayList2.addAll(J);
                } else {
                    for (fq fqVar : J) {
                        if (fqVar instanceof iq) {
                            iq iqVar = (iq) fqVar;
                            if ("zh_CN".equalsIgnoreCase(string)) {
                                if ("zh_CN".equalsIgnoreCase(iqVar.o)) {
                                    arrayList3.add(iqVar);
                                } else if ("zh_TW".equalsIgnoreCase(iqVar.o)) {
                                    arrayList5.add(iqVar);
                                } else {
                                    arrayList4.add(iqVar);
                                }
                            } else if ("zh_TW".equalsIgnoreCase(string)) {
                                if ("zh_TW".equalsIgnoreCase(iqVar.o)) {
                                    arrayList3.add(iqVar);
                                } else if ("zh_CN".equalsIgnoreCase(iqVar.o)) {
                                    arrayList5.add(iqVar);
                                } else {
                                    arrayList4.add(iqVar);
                                }
                            } else if (string.equalsIgnoreCase(iqVar.o)) {
                                arrayList3.add(iqVar);
                            } else {
                                arrayList4.add(iqVar);
                            }
                        }
                    }
                    arrayList2.addAll(arrayList3);
                    if (arrayList5.size() > 0) {
                        arrayList2.addAll(arrayList5);
                    }
                    arrayList2.addAll(arrayList4);
                }
            }
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                fq fqVar2 = (fq) it.next();
                if (fqVar2 instanceof iq) {
                    iq iqVar2 = (iq) fqVar2;
                    wn wnVar = new wn();
                    String str = iqVar2.h;
                    wnVar.b = iqVar2.b == -1 ? iqVar2.f() : dq.c(iqVar2.h) + File.separator + iqVar2.f();
                    wnVar.c = iqVar2;
                    arrayList.add(wnVar);
                }
            }
        }
        return arrayList;
    }
}
