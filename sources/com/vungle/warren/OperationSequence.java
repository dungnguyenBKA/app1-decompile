package com.vungle.warren;

import com.vungle.warren.AdLoader;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* access modifiers changed from: package-private */
public class OperationSequence {
    private final PriorityQueue<Entry> queue = new PriorityQueue<>(11, new Comparator<Entry>() {
        /* class com.vungle.warren.OperationSequence.AnonymousClass1 */

        public int compare(Entry entry, Entry entry2) {
            int compareTo = Integer.valueOf(entry.operation.priority).compareTo(Integer.valueOf(entry2.operation.priority));
            return compareTo == 0 ? Integer.valueOf(entry.order).compareTo(Integer.valueOf(entry2.order)) : compareTo;
        }
    });

    /* access modifiers changed from: package-private */
    public static class Entry {
        private static final AtomicInteger seq = new AtomicInteger();
        AdLoader.Operation operation;
        private final int order = seq.incrementAndGet();

        Entry(AdLoader.Operation operation2) {
            this.operation = operation2;
        }
    }

    OperationSequence() {
    }

    /* access modifiers changed from: package-private */
    public boolean offer(Entry entry) {
        return this.queue.offer(entry);
    }

    /* access modifiers changed from: package-private */
    public Entry poll() {
        return this.queue.poll();
    }

    /* access modifiers changed from: package-private */
    public Entry remove(String str) {
        Entry entry;
        Iterator<Entry> it = this.queue.iterator();
        while (true) {
            if (!it.hasNext()) {
                entry = null;
                break;
            }
            entry = it.next();
            if (entry.operation.id.equals(str)) {
                break;
            }
        }
        this.queue.remove(entry);
        return entry;
    }

    /* access modifiers changed from: package-private */
    public List<Entry> removeAll() {
        ArrayList arrayList = new ArrayList();
        while (!this.queue.isEmpty()) {
            Entry poll = this.queue.poll();
            if (poll != null) {
                arrayList.add(poll);
            }
        }
        return arrayList;
    }
}
