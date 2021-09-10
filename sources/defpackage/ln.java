package defpackage;

import android.content.Context;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: ln  reason: default package */
public class ln {
    public static List<mn> a(List<nn> list) {
        ArrayList arrayList = new ArrayList();
        if (list.size() > 0) {
            for (nn nnVar : list) {
                arrayList.addAll(nnVar.b());
            }
        }
        return arrayList;
    }

    public static List<nn> b(Context context) {
        ArrayList arrayList = new ArrayList(yp.F().H());
        ArrayList arrayList2 = new ArrayList();
        nn nnVar = new nn();
        nnVar.e(context.getString(R.string.i1));
        ArrayList arrayList3 = new ArrayList();
        mn mnVar = new mn();
        mnVar.g(R.drawable.hu);
        mnVar.h(0);
        arrayList3.add(mnVar);
        mn mnVar2 = new mn();
        mnVar2.h(1);
        arrayList3.add(mnVar2);
        ArrayList arrayList4 = new ArrayList();
        mn mnVar3 = new mn(2, R.drawable.fa, false);
        mn z = ic.z(context, R.drawable.fa, mnVar3, 2, R.drawable.fb, false);
        mn z2 = ic.z(context, R.drawable.fb, z, 2, R.drawable.fc, false);
        mn z3 = ic.z(context, R.drawable.fc, z2, 2, R.drawable.fd, false);
        mn z4 = ic.z(context, R.drawable.fd, z3, 2, R.drawable.fe, false);
        mn z5 = ic.z(context, R.drawable.fe, z4, 2, R.drawable.ff, false);
        mn z6 = ic.z(context, R.drawable.ff, z5, 2, R.drawable.fg, false);
        mn z7 = ic.z(context, R.drawable.fg, z6, 2, R.drawable.fh, false);
        mn z8 = ic.z(context, R.drawable.fh, z7, 2, R.drawable.fi, false);
        mn z9 = ic.z(context, R.drawable.fi, z8, 2, R.drawable.fj, false);
        mn z10 = ic.z(context, R.drawable.fj, z9, 2, R.drawable.fk, false);
        mn z11 = ic.z(context, R.drawable.fk, z10, 2, R.drawable.fl, false);
        mn z12 = ic.z(context, R.drawable.fl, z11, 2, R.drawable.fm, false);
        mn z13 = ic.z(context, R.drawable.fm, z12, 2, R.drawable.fn, false);
        mn z14 = ic.z(context, R.drawable.fn, z13, 2, R.drawable.gg, true);
        mn z15 = ic.z(context, R.drawable.gg, z14, 2, R.drawable.gh, true);
        mn z16 = ic.z(context, R.drawable.gh, z15, 2, R.drawable.gi, true);
        mn z17 = ic.z(context, R.drawable.gi, z16, 2, R.drawable.gj, true);
        mn z18 = ic.z(context, R.drawable.gj, z17, 2, R.drawable.gk, true);
        mn z19 = ic.z(context, R.drawable.gk, z18, 2, R.drawable.gl, true);
        mn z20 = ic.z(context, R.drawable.gl, z19, 2, R.drawable.gm, true);
        mn z21 = ic.z(context, R.drawable.gm, z20, 2, R.drawable.gn, true);
        mn z22 = ic.z(context, R.drawable.gn, z21, 2, R.drawable.go, true);
        mn z23 = ic.z(context, R.drawable.go, z22, 2, R.drawable.gp, true);
        mn z24 = ic.z(context, R.drawable.gp, z23, 2, R.drawable.gq, false);
        mn z25 = ic.z(context, R.drawable.gq, z24, 2, R.drawable.gr, false);
        mn z26 = ic.z(context, R.drawable.gr, z25, 2, R.drawable.gs, true);
        mn z27 = ic.z(context, R.drawable.gs, z26, 2, R.drawable.gt, true);
        mn z28 = ic.z(context, R.drawable.gt, z27, 2, R.drawable.gu, true);
        mn z29 = ic.z(context, R.drawable.gu, z28, 2, R.drawable.gv, true);
        mn z30 = ic.z(context, R.drawable.gv, z29, 2, R.drawable.gw, true);
        mn z31 = ic.z(context, R.drawable.gw, z30, 2, R.drawable.gx, true);
        z31.i(c2.l(context, R.drawable.gx));
        arrayList4.add(mnVar3);
        arrayList4.add(z);
        arrayList4.add(z2);
        arrayList4.add(z14);
        arrayList4.add(z15);
        arrayList4.add(z16);
        arrayList4.add(z17);
        arrayList4.add(z3);
        arrayList4.add(z4);
        arrayList4.add(z5);
        arrayList4.add(z6);
        arrayList4.add(z18);
        arrayList4.add(z19);
        arrayList4.add(z20);
        arrayList4.add(z21);
        arrayList4.add(z7);
        arrayList4.add(z8);
        arrayList4.add(z9);
        arrayList4.add(z10);
        arrayList4.add(z22);
        arrayList4.add(z23);
        arrayList4.add(z26);
        arrayList4.add(z27);
        arrayList4.add(z11);
        arrayList4.add(z12);
        arrayList4.add(z13);
        arrayList4.add(z28);
        arrayList4.add(z29);
        arrayList4.add(z24);
        arrayList4.add(z25);
        arrayList4.add(z30);
        arrayList4.add(z31);
        arrayList3.addAll(arrayList4);
        nnVar.d(arrayList3);
        arrayList2.add(nnVar);
        ArrayList arrayList5 = new ArrayList();
        if (arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                hq hqVar = (hq) it.next();
                if (hqVar.b(context)) {
                    String d = dq.d(hqVar.h);
                    mn mnVar4 = new mn();
                    mnVar4.j(hqVar.b == 2);
                    mnVar4.k(hqVar);
                    mnVar4.h(2);
                    File[] listFiles = new File(d).listFiles(kn.a);
                    if (listFiles != null && listFiles.length > 0) {
                        String absolutePath = listFiles[0].getAbsolutePath();
                        mnVar4.l(absolutePath);
                        mnVar4.i(c2.n(absolutePath));
                    }
                    if (!arrayList5.contains(hqVar.f())) {
                        arrayList5.add(hqVar.f());
                        nn nnVar2 = new nn();
                        nnVar2.e(hqVar.f());
                        nnVar2.d(new ArrayList());
                        nnVar2.b().add(mnVar4);
                        arrayList2.add(nnVar2);
                    } else {
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            nn nnVar3 = (nn) it2.next();
                            if (hqVar.f().equalsIgnoreCase(nnVar3.c())) {
                                nnVar3.b().add(mnVar4);
                            }
                        }
                    }
                }
            }
        }
        return arrayList2;
    }
}
