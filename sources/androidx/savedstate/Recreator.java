package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.f;
import androidx.lifecycle.g;
import androidx.lifecycle.i;
import androidx.savedstate.SavedStateRegistry;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Iterator;

/* access modifiers changed from: package-private */
@SuppressLint({"RestrictedApi"})
public final class Recreator implements g {
    private final b a;

    Recreator(b bVar) {
        this.a = bVar;
    }

    @Override // androidx.lifecycle.g
    public void c(i iVar, f.a aVar) {
        Class cls;
        if (aVar == f.a.ON_CREATE) {
            iVar.getLifecycle().c(this);
            Bundle a2 = this.a.getSavedStateRegistry().a("androidx.savedstate.Restarter");
            if (a2 != null) {
                ArrayList<String> stringArrayList = a2.getStringArrayList("classes_to_restore");
                if (stringArrayList != null) {
                    Iterator<String> it = stringArrayList.iterator();
                    while (it.hasNext()) {
                        String next = it.next();
                        try {
                            try {
                                Constructor<? extends U> declaredConstructor = Class.forName(next, false, Recreator.class.getClassLoader()).asSubclass(SavedStateRegistry.a.class).getDeclaredConstructor(new Class[0]);
                                declaredConstructor.setAccessible(true);
                                try {
                                    ((SavedStateRegistry.a) declaredConstructor.newInstance(new Object[0])).a(this.a);
                                } catch (Exception e) {
                                    throw new RuntimeException(ic.i("Failed to instantiate ", next), e);
                                }
                            } catch (NoSuchMethodException e2) {
                                StringBuilder q = ic.q("Class");
                                q.append(cls.getSimpleName());
                                q.append(" must have default constructor in order to be automatically recreated");
                                throw new IllegalStateException(q.toString(), e2);
                            }
                        } catch (ClassNotFoundException e3) {
                            throw new RuntimeException(ic.j("Class ", next, " wasn't found"), e3);
                        }
                    }
                    return;
                }
                throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
            }
            return;
        }
        throw new AssertionError("Next event must be ON_CREATE");
    }
}
