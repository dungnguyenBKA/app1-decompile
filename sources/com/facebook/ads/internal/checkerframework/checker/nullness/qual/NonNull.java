package com.facebook.ads.internal.checkerframework.checker.nullness.qual;

import com.facebook.ads.internal.checkerframework.framework.qual.DefaultFor;
import com.facebook.ads.internal.checkerframework.framework.qual.DefaultInUncheckedCodeFor;
import com.facebook.ads.internal.checkerframework.framework.qual.DefaultQualifierInHierarchy;
import com.facebook.ads.internal.checkerframework.framework.qual.QualifierForLiterals;
import com.facebook.ads.internal.checkerframework.framework.qual.SubtypeOf;
import com.facebook.ads.internal.checkerframework.framework.qual.UpperBoundFor;
import com.facebook.ads.redexgen.X.AnonymousClass87;
import com.facebook.ads.redexgen.X.AnonymousClass88;
import com.facebook.ads.redexgen.X.EnumC03147t;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@SubtypeOf({MonotonicNonNull.class})
@Target({ElementType.TYPE_USE, ElementType.TYPE_PARAMETER})
@UpperBoundFor(typeKinds = {AnonymousClass87.A0I, AnonymousClass87.A0C, AnonymousClass87.A04, AnonymousClass87.A06, AnonymousClass87.A08, AnonymousClass87.A0B, AnonymousClass87.A0E, AnonymousClass87.A0J, AnonymousClass87.A05})
@Retention(RetentionPolicy.RUNTIME)
@QualifierForLiterals({EnumC03147t.A0B})
@DefaultFor({AnonymousClass88.A05})
@DefaultQualifierInHierarchy
@DefaultInUncheckedCodeFor({AnonymousClass88.A0E, AnonymousClass88.A0C})
@Documented
public @interface NonNull {
}
