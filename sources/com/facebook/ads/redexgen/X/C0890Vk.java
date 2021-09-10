package com.facebook.ads.redexgen.X;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Vk  reason: case insensitive filesystem */
public class C0890Vk implements AbstractC02806e {
    public static String[] A02;
    public final /* synthetic */ C0892Vm A00;
    public final /* synthetic */ List A01;

    static {
        A00();
    }

    public static void A00() {
        A02 = new String[]{"2ZaMFzGKyd9hSHjcUno1udsEhbeu09ce", "vtEgA47YqlpfzAewuy7ISaRlDIFsO2a2", "0pnteHQI04JELPJiiEYAY3M", "2nICVeqwE", "Lm6L6ti1RgkYKkQwD0idrMIu4GdN9z0L", "56JOKRJet", "nEp6Q7dVZjXWwne9d2QyLy7miVXBQb0l", "dXPHGnc4ncUJghGdDaugHzl"};
    }

    public C0890Vk(C0892Vm vm, List list) {
        this.A00 = vm;
        this.A01 = list;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        HashMap hashMap = new HashMap();
        Iterator it = this.A01.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            String[] strArr = A02;
            if (strArr[2].length() != strArr[5].length()) {
                String[] strArr2 = A02;
                strArr2[2] = "3z5KEoLDxtAdyJAxPBbZMV2";
                strArr2[5] = "xCESy1UOQ";
                if (!hasNext) {
                    return this.A00.A02(hashMap);
                }
                C02796d r1 = (C02796d) it.next();
                if (r1.A02()) {
                    String str = C0892Vm.A07((String) r1.A01());
                    hashMap.put(str, new C0891Vl(C0892Vm.A03(str)));
                }
            } else {
                throw new RuntimeException();
            }
        }
    }
}
