package defpackage;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* renamed from: j20  reason: default package */
public final class j20<E> implements List<E>, RandomAccess {
    private final List<E> b;

    private j20(List<E> list) {
        this.b = Collections.unmodifiableList(list);
    }

    public static <E> j20<E> a(List<E> list) {
        return new j20<>(list);
    }

    public static <E> j20<E> b(E... eArr) {
        return new j20<>(Arrays.asList(eArr));
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(E e) {
        return this.b.add(e);
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        return this.b.addAll(collection);
    }

    public void clear() {
        this.b.clear();
    }

    public boolean contains(Object obj) {
        return this.b.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return this.b.containsAll(collection);
    }

    public boolean equals(Object obj) {
        return this.b.equals(obj);
    }

    @Override // java.util.List
    public E get(int i) {
        return this.b.get(i);
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public int indexOf(Object obj) {
        return this.b.indexOf(obj);
    }

    public boolean isEmpty() {
        return this.b.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return this.b.iterator();
    }

    public int lastIndexOf(Object obj) {
        return this.b.lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return this.b.listIterator();
    }

    @Override // java.util.List
    public boolean remove(Object obj) {
        return this.b.remove(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return this.b.removeAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return this.b.retainAll(collection);
    }

    @Override // java.util.List
    public E set(int i, E e) {
        return this.b.set(i, e);
    }

    public int size() {
        return this.b.size();
    }

    @Override // java.util.List
    public List<E> subList(int i, int i2) {
        return this.b.subList(i, i2);
    }

    public Object[] toArray() {
        return this.b.toArray();
    }

    @Override // java.util.List
    public void add(int i, E e) {
        this.b.add(i, e);
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        return this.b.addAll(i, collection);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int i) {
        return this.b.listIterator(i);
    }

    @Override // java.util.List
    public E remove(int i) {
        return this.b.remove(i);
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.b.toArray(tArr);
    }
}
