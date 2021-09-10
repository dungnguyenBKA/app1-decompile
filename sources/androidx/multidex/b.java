package androidx.multidex;

import java.io.File;
import java.io.FileFilter;

/* access modifiers changed from: package-private */
public class b implements FileFilter {
    b(c cVar) {
    }

    public boolean accept(File file) {
        return !file.getName().equals("MultiDex.lock");
    }
}
