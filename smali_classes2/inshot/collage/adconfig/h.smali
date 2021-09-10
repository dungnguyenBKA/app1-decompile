.class public final Linshot/collage/adconfig/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linshot/collage/adconfig/h$b;,
        Linshot/collage/adconfig/h$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Linshot/collage/adconfig/i;",
            "Linshot/collage/adconfig/h$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:J

.field private static final c:J

.field private static d:Z

.field private static final e:Landroid/os/Handler;

.field private static f:Linshot/collage/adconfig/h$c;

.field public static final g:Linshot/collage/adconfig/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Linshot/collage/adconfig/h;

    invoke-direct {v0}, Linshot/collage/adconfig/h;-><init>()V

    sput-object v0, Linshot/collage/adconfig/h;->g:Linshot/collage/adconfig/h;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Linshot/collage/adconfig/h;->a:Ljava/util/HashMap;

    .line 3
    sget-object v0, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "context"

    if-eqz v0, :cond_1

    const v3, 0xafc8

    const-string v4, "AD_cardRefreshInterval"

    .line 4
    invoke-static {v0, v4, v3}, Lcc0;->h(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-long v3, v0

    .line 5
    sput-wide v3, Linshot/collage/adconfig/h;->b:J

    .line 6
    sget-object v0, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/16 v1, 0x2710

    const-string v2, "AD_cardFailRefreshInterval"

    .line 7
    invoke-static {v0, v2, v1}, Lcc0;->h(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 8
    sput-wide v0, Linshot/collage/adconfig/h;->c:J

    .line 9
    new-instance v0, Linshot/collage/adconfig/h$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Linshot/collage/adconfig/h$a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Linshot/collage/adconfig/h;->e:Landroid/os/Handler;

    return-void

    .line 10
    :cond_0
    invoke-static {v2}, Lgg0;->j(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_1
    invoke-static {v2}, Lgg0;->j(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Linshot/collage/adconfig/h;)Linshot/collage/adconfig/h$c;
    .locals 0

    .line 1
    sget-object p0, Linshot/collage/adconfig/h;->f:Linshot/collage/adconfig/h$c;

    return-object p0
.end method

.method public static final synthetic b(Linshot/collage/adconfig/h;)Ljava/util/HashMap;
    .locals 0

    .line 1
    sget-object p0, Linshot/collage/adconfig/h;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic c(Linshot/collage/adconfig/h;)J
    .locals 2

    .line 1
    sget-wide v0, Linshot/collage/adconfig/h;->c:J

    return-wide v0
.end method

.method public static final synthetic d(Linshot/collage/adconfig/h;)Landroid/os/Handler;
    .locals 0

    .line 1
    sget-object p0, Linshot/collage/adconfig/h;->e:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic e(Linshot/collage/adconfig/h;)Z
    .locals 0

    .line 1
    sget-boolean p0, Linshot/collage/adconfig/h;->d:Z

    return p0
.end method

.method public static final synthetic f(Linshot/collage/adconfig/h;Landroid/app/Activity;Linshot/collage/adconfig/h$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linshot/collage/adconfig/h;->h(Landroid/app/Activity;Linshot/collage/adconfig/h$b;)V

    return-void
.end method

.method private final h(Landroid/app/Activity;Linshot/collage/adconfig/h$b;)V
    .locals 4

    const-string v0, "CardAd"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAd type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Linshot/collage/adconfig/h$b;->e()Linshot/collage/adconfig/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 2
    sget-boolean v1, Linshot/collage/adconfig/h;->d:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Linshot/collage/adconfig/h$d;

    invoke-direct {v1, p2}, Linshot/collage/adconfig/h$d;-><init>(Linshot/collage/adconfig/h$b;)V

    invoke-virtual {p2, v1}, Linshot/collage/adconfig/h$b;->h(Ltb0;)V

    .line 4
    new-instance v1, Lcom/google/ads/ADRequestList;

    invoke-virtual {p2}, Linshot/collage/adconfig/h$b;->b()Ltb0;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/ads/ADRequestList;-><init>(Lsb0;)V

    .line 5
    new-instance v2, Lpb0;

    .line 6
    invoke-virtual {p2}, Linshot/collage/adconfig/h$b;->e()Linshot/collage/adconfig/i;

    move-result-object v3

    invoke-static {p1, v1, v3}, Linshot/collage/adconfig/e;->d(Landroid/content/Context;Lcom/google/ads/ADRequestList;Linshot/collage/adconfig/i;)Lcom/google/ads/ADRequestList;

    const/4 v3, 0x0

    .line 7
    invoke-direct {v2, p1, v1, v3}, Lpb0;-><init>(Landroid/app/Activity;Lcom/google/ads/ADRequestList;Z)V

    .line 8
    invoke-virtual {p2, v2}, Linshot/collage/adconfig/h$b;->g(Lpb0;)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadAd adRequestList: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAd fail, type = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Linshot/collage/adconfig/h$b;->e()Linshot/collage/adconfig/i;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error: activity == null || hasPaused"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object p1, Linshot/collage/adconfig/h;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, Linshot/collage/adconfig/h$b;->e()Linshot/collage/adconfig/i;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 12
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAd Exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final g(Linshot/collage/adconfig/i;)V
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Linshot/collage/adconfig/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linshot/collage/adconfig/h$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Linshot/collage/adconfig/h$b;->f()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 6

    .line 1
    invoke-static {}, Linshot/collage/adconfig/i;->values()[Linshot/collage/adconfig/i;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    .line 2
    sget-object v3, Linshot/collage/adconfig/h;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linshot/collage/adconfig/h$b;

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v2}, Linshot/collage/adconfig/h$b;->f()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_0
    invoke-virtual {v2}, Linshot/collage/adconfig/h$b;->a()Lpb0;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Linshot/collage/adconfig/a;->d()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lpb0;->g(Landroid/app/Activity;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Linshot/collage/adconfig/h;->d:Z

    .line 8
    sget-object v0, Linshot/collage/adconfig/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9
    sget-object v0, Linshot/collage/adconfig/h;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final j(Linshot/collage/adconfig/i;)V
    .locals 8

    const-string v0, "type"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardAd"

    invoke-static {v1, v0}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Linshot/collage/adconfig/h;->d:Z

    .line 3
    sget-object v0, Linshot/collage/adconfig/h;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    sget-object v0, Linshot/collage/adconfig/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linshot/collage/adconfig/h$b;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Linshot/collage/adconfig/h$b;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {p1}, Linshot/collage/adconfig/h$b;->d()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Linshot/collage/adconfig/h$b;->c()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v4, v0

    invoke-virtual {p1, v4, v5}, Linshot/collage/adconfig/h$b;->j(J)V

    .line 7
    invoke-virtual {p1, v2, v3}, Linshot/collage/adconfig/h$b;->i(J)V

    :cond_0
    return-void
.end method

.method public final k(Linshot/collage/adconfig/i;Landroid/widget/FrameLayout;)V
    .locals 8

    const-string v0, "type"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardAd"

    invoke-static {v1, v0}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Linshot/collage/adconfig/h;->d:Z

    .line 3
    sget-object v0, Linshot/collage/adconfig/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linshot/collage/adconfig/h$b;

    if-nez v0, :cond_0

    .line 4
    sget-object p2, Linshot/collage/adconfig/h;->e:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Linshot/collage/adconfig/h$b;->f()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p0, p2, p1}, Linshot/collage/adconfig/h;->n(Landroid/widget/FrameLayout;Linshot/collage/adconfig/i;)Z

    .line 8
    :cond_1
    invoke-virtual {v0}, Linshot/collage/adconfig/h$b;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_2

    .line 9
    sget-object p2, Linshot/collage/adconfig/h;->e:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x3e8

    .line 10
    sget-wide v4, Linshot/collage/adconfig/h;->b:J

    invoke-virtual {v0}, Linshot/collage/adconfig/h$b;->d()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendEmptyMessageDelayed type = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", time = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final l(Linshot/collage/adconfig/i;)V
    .locals 7

    const-string v0, "type"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Linshot/collage/adconfig/h;->d:Z

    .line 2
    invoke-static {}, Linshot/collage/adconfig/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Linshot/collage/adconfig/a;->d()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    :try_start_0
    sget-object v1, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    if-eqz v1, :cond_2

    const-string v2, "AD_AvailableSpace"

    const/16 v3, 0x32

    .line 5
    invoke-static {v1, v2, v3}, Lcc0;->h(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 6
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "Environment.getExternalStorageDirectory()"

    invoke-static {v3, v4}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5

    mul-long v3, v3, v5

    mul-int/lit16 v1, v1, 0x400

    mul-int/lit16 v1, v1, 0x400

    int-to-long v1, v1

    cmp-long v5, v3, v1

    if-ltz v5, :cond_3

    goto :goto_0

    :cond_2
    const-string v0, "context"

    .line 8
    invoke-static {v0}, Lgg0;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_4

    return-void

    .line 10
    :cond_4
    sget-object v0, Linshot/collage/adconfig/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    return-void

    .line 11
    :cond_5
    new-instance v1, Linshot/collage/adconfig/h$b;

    invoke-direct {v1, p1}, Linshot/collage/adconfig/h$b;-><init>(Linshot/collage/adconfig/i;)V

    .line 12
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Linshot/collage/adconfig/a;->d()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Linshot/collage/adconfig/h;->h(Landroid/app/Activity;Linshot/collage/adconfig/h$b;)V

    return-void
.end method

.method public final m(Linshot/collage/adconfig/h$c;)V
    .locals 0

    .line 1
    sput-object p1, Linshot/collage/adconfig/h;->f:Linshot/collage/adconfig/h$c;

    return-void
.end method

.method public final n(Landroid/widget/FrameLayout;Linshot/collage/adconfig/i;)Z
    .locals 8

    const-string v0, "nativeAdLayout"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAd type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CardAd"

    invoke-static {v3, v1}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v1, Linshot/collage/adconfig/a;->c:Linshot/collage/adconfig/b;

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    invoke-interface {v1}, Linshot/collage/adconfig/b;->c()Z

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    return v5

    .line 3
    :cond_0
    invoke-static {p2, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Linshot/collage/adconfig/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linshot/collage/adconfig/h$b;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Linshot/collage/adconfig/h$b;->f()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    const/4 v6, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_8

    .line 6
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linshot/collage/adconfig/h$b;

    if-eqz v0, :cond_6

    .line 7
    invoke-virtual {v0}, Linshot/collage/adconfig/h$b;->f()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v7, v1, Landroid/view/ViewGroup;

    if-nez v7, :cond_3

    move-object v1, v4

    :cond_3
    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9
    :cond_4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 11
    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 12
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 14
    sget-object v1, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    if-eqz v1, :cond_5

    .line 15
    invoke-static {v1}, Linshot/collage/adconfig/p;->b(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setY(F)V

    .line 16
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x320

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const-string p1, "context"

    .line 17
    invoke-static {p1}, Lgg0;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v4

    :catch_0
    move-exception p1

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_8

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showAd success type = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object p1, Linshot/collage/adconfig/i;->d:Linshot/collage/adconfig/i;

    if-eq p2, p1, :cond_7

    .line 21
    sget-object p1, Linshot/collage/adconfig/h;->e:Landroid/os/Handler;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 22
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-wide v1, Linshot/collage/adconfig/h;->b:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 23
    sget-object p1, Linshot/collage/adconfig/h;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linshot/collage/adconfig/h$b;

    if-eqz p1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Linshot/collage/adconfig/h$b;->i(J)V

    :cond_7
    return v6

    :cond_8
    return v5

    :cond_9
    const-string p1, "callback"

    .line 24
    invoke-static {p1}, Lgg0;->j(Ljava/lang/String;)V

    throw v4
.end method
