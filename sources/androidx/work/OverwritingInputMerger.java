package androidx.work;

import androidx.work.e;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

public final class OverwritingInputMerger extends g {
    @Override // androidx.work.g
    public e b(List<e> list) {
        e.a aVar = new e.a();
        HashMap hashMap = new HashMap();
        for (e eVar : list) {
            hashMap.putAll(Collections.unmodifiableMap(eVar.a));
        }
        aVar.c(hashMap);
        return aVar.a();
    }
}
