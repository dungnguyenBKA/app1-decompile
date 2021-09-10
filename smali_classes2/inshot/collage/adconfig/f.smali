.class public final Linshot/collage/adconfig/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field private static a:Lmb0;

.field private static b:Landroid/view/ViewGroup;

.field private static c:Z

.field private static d:J

.field private static e:Landroid/view/View;

.field private static final f:J

.field private static final g:J

.field private static h:Z

.field private static final i:I

.field private static final j:Linshot/collage/adconfig/f$a;

.field public static final k:Linshot/collage/adconfig/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Linshot/collage/adconfig/f;

    invoke-direct {v0}, Linshot/collage/adconfig/f;-><init>()V

    sput-object v0, Linshot/collage/adconfig/f;->k:Linshot/collage/adconfig/f;

    .line 2
    sget-object v0, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "context"

    if-eqz v0, :cond_2

    const v3, 0xafc8

    const-string v4, "AD_bannerRefreshInterval"

    .line 3
    invoke-static {v0, v4, v3}, Lcc0;->h(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-long v3, v0

    .line 4
    sput-wide v3, Linshot/collage/adconfig/f;->f:J

    .line 5
    sget-object v0, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    const/16 v3, 0x2710

    const-string v4, "AD_bannerFailRefreshInterval"

    .line 6
    invoke-static {v0, v4, v3}, Lcc0;->h(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-long v3, v0

    .line 7
    sput-wide v3, Linshot/collage/adconfig/f;->g:J

    .line 8
    sget-object v0, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/high16 v1, 0x42a00000    # 80.0f

    .line 9
    invoke-static {v0, v2}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "r"

    .line 11
    invoke-static {v0, v2}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v2, 0x1

    .line 12
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 13
    sput v0, Linshot/collage/adconfig/f;->i:I

    .line 14
    new-instance v0, Linshot/collage/adconfig/f$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Linshot/collage/adconfig/f$a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Linshot/collage/adconfig/f;->j:Linshot/collage/adconfig/f$a;

    return-void

    .line 15
    :cond_0
    invoke-static {v2}, Lgg0;->j(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_1
    invoke-static {v2}, Lgg0;->j(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_2
    invoke-static {v2}, Lgg0;->j(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Linshot/collage/adconfig/f;)Lmb0;
    .locals 0

    .line 1
    sget-object p0, Linshot/collage/adconfig/f;->a:Lmb0;

    return-object p0
.end method

.method public static final synthetic b(Linshot/collage/adconfig/f;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    sget-object p0, Linshot/collage/adconfig/f;->b:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static final synthetic c(Linshot/collage/adconfig/f;)J
    .locals 2

    .line 1
    sget-wide v0, Linshot/collage/adconfig/f;->g:J

    return-wide v0
.end method

.method public static final synthetic d(Linshot/collage/adconfig/f;)Linshot/collage/adconfig/f$a;
    .locals 0

    .line 1
    sget-object p0, Linshot/collage/adconfig/f;->j:Linshot/collage/adconfig/f$a;

    return-object p0
.end method

.method public static final e(Linshot/collage/adconfig/f;Landroid/view/ViewGroup;)V
    .locals 8

    .line 1
    sput-object p1, Linshot/collage/adconfig/f;->b:Landroid/view/ViewGroup;

    .line 2
    invoke-static {}, Linshot/collage/adconfig/a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    sput-object v1, Linshot/collage/adconfig/f;->a:Lmb0;

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 4
    :try_start_0
    sget-object v3, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    if-eqz v3, :cond_2

    const-string v1, "AD_AvailableSpace"

    const/16 v4, 0x32

    .line 5
    invoke-static {v3, v1, v4}, Lcc0;->h(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 6
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "Environment.getExternalStorageDirectory()"

    invoke-static {v4, v5}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    mul-long v4, v4, v6

    mul-int/lit16 v1, v1, 0x400

    mul-int/lit16 v1, v1, 0x400

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v3, "context"

    .line 8
    invoke-static {v3}, Lgg0;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v1

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    sget-object v0, Linshot/collage/adconfig/f;->a:Lmb0;

    if-eqz v0, :cond_4

    .line 11
    sget-object p1, Linshot/collage/adconfig/f;->e:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Linshot/collage/adconfig/f;->m(Landroid/view/View;Z)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_6

    .line 12
    invoke-static {}, Linshot/collage/adconfig/a;->d()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_6

    sget-boolean p0, Linshot/collage/adconfig/f;->h:Z

    if-eqz p0, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    new-instance p0, Lcom/google/ads/ADRequestList;

    invoke-direct {p0}, Lcom/google/ads/ADRequestList;-><init>()V

    .line 14
    new-instance p1, Linshot/collage/adconfig/g;

    invoke-direct {p1}, Linshot/collage/adconfig/g;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/ads/ADRequestList;->setADListener(Lsb0;)V

    .line 15
    new-instance p1, Lmb0;

    .line 16
    invoke-static {}, Linshot/collage/adconfig/a;->d()Landroid/app/Activity;

    move-result-object v0

    .line 17
    invoke-static {}, Linshot/collage/adconfig/a;->d()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lgg0;->c(Ljava/lang/Object;)V

    .line 18
    invoke-static {v1, p0}, Linshot/collage/adconfig/e;->a(Landroid/content/Context;Lcom/google/ads/ADRequestList;)Lcom/google/ads/ADRequestList;

    .line 19
    invoke-direct {p1, v0, p0}, Lmb0;-><init>(Landroid/app/Activity;Lcom/google/ads/ADRequestList;)V

    sput-object p1, Linshot/collage/adconfig/f;->a:Lmb0;

    :cond_6
    :goto_1
    return-void
.end method

.method public static final synthetic f(Linshot/collage/adconfig/f;Landroid/view/View;)V
    .locals 0

    .line 1
    sput-object p1, Linshot/collage/adconfig/f;->e:Landroid/view/View;

    return-void
.end method

.method public static final synthetic g(Linshot/collage/adconfig/f;Lmb0;)V
    .locals 0

    const/4 p0, 0x0

    .line 1
    sput-object p0, Linshot/collage/adconfig/f;->a:Lmb0;

    return-void
.end method

.method public static final synthetic h(Linshot/collage/adconfig/f;Z)V
    .locals 0

    .line 1
    sput-boolean p1, Linshot/collage/adconfig/f;->c:Z

    return-void
.end method

.method public static final synthetic i(Linshot/collage/adconfig/f;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linshot/collage/adconfig/f;->m(Landroid/view/View;Z)V

    return-void
.end method

.method private final m(Landroid/view/View;Z)V
    .locals 8

    const-string v0, "BannerAd"

    const-string v1, "showAd"

    .line 1
    invoke-static {v0, v1}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Linshot/collage/adconfig/f;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 4
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 5
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 6
    invoke-virtual {p1, v4, v5}, Landroid/view/View;->measure(II)V

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    aput v4, v2, v3

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x1

    aput v4, v2, v5

    .line 9
    aget v2, v2, v5

    const-string v4, "context"

    .line 10
    invoke-static {v1, v4}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v1, v6}, Linshot/collage/adconfig/p;->a(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v6, v2

    .line 11
    sget v2, Linshot/collage/adconfig/f;->i:I

    if-le v6, v2, :cond_1

    .line 12
    invoke-static {}, Linshot/collage/adconfig/a;->c()Landroid/content/Context;

    move-result-object p1

    const-string p2, "AD"

    const-string v1, "bannerHeight > dp80"

    invoke-static {p1, p2, v1}, Linshot/collage/adconfig/p;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 14
    invoke-static {}, Linshot/collage/adconfig/a;->d()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 15
    sget-object p2, Linshot/collage/adconfig/f;->a:Lmb0;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lmb0;->j(Landroid/app/Activity;)V

    .line 16
    :cond_0
    sget-object p1, Linshot/collage/adconfig/f;->j:Linshot/collage/adconfig/f$a;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    const v2, 0x7f080068

    .line 19
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 20
    instance-of v2, v2, Landroid/widget/ImageView;

    if-nez v2, :cond_2

    .line 21
    invoke-static {v1}, Linshot/collage/adconfig/d;->b(Landroid/content/Context;)I

    move-result v7

    if-ge v7, v6, :cond_2

    .line 22
    invoke-static {v1, v6}, Linshot/collage/adconfig/d;->f(Landroid/content/Context;I)V

    .line 23
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 25
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 26
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/high16 p1, 0x42480000    # 50.0f

    .line 27
    invoke-static {v1, p1}, Linshot/collage/adconfig/p;->a(Landroid/content/Context;F)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 28
    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x320

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz p2, :cond_6

    if-nez v2, :cond_5

    .line 29
    sget-object p1, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    if-eqz p1, :cond_4

    const-string p2, "enableRefreshBanner"

    .line 30
    invoke-static {p1, p2, v5}, Lcc0;->g(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 31
    :cond_4
    invoke-static {v4}, Lgg0;->j(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 32
    :cond_5
    sget-object p1, Linshot/collage/adconfig/f;->j:Linshot/collage/adconfig/f$a;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    sget-wide v0, Linshot/collage/adconfig/f;->f:J

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Linshot/collage/adconfig/f;->d:J

    :cond_6
    return-void
.end method


# virtual methods
.method public final j()V
    .locals 3

    .line 1
    sget-object v0, Linshot/collage/adconfig/f;->j:Linshot/collage/adconfig/f$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    sget-object v0, Linshot/collage/adconfig/f;->a:Lmb0;

    if-eqz v0, :cond_0

    invoke-static {}, Linshot/collage/adconfig/a;->d()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb0;->j(Landroid/app/Activity;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    sput-object v0, Linshot/collage/adconfig/f;->a:Lmb0;

    .line 4
    sget-object v2, Linshot/collage/adconfig/f;->b:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    :cond_1
    sput-object v0, Linshot/collage/adconfig/f;->b:Landroid/view/ViewGroup;

    .line 6
    sput-object v0, Linshot/collage/adconfig/f;->e:Landroid/view/View;

    .line 7
    sput-boolean v1, Linshot/collage/adconfig/f;->c:Z

    return-void
.end method

.method public final k()V
    .locals 2

    const-string v0, "BannerAd"

    const-string v1, "onPause"

    .line 1
    invoke-static {v0, v1}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Linshot/collage/adconfig/f;->h:Z

    .line 3
    sget-object v0, Linshot/collage/adconfig/f;->a:Lmb0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmb0;->m()V

    .line 4
    :cond_0
    sget-object v0, Linshot/collage/adconfig/f;->j:Linshot/collage/adconfig/f$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    :try_start_0
    sget-object v0, Linshot/collage/adconfig/f;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    const/4 v0, 0x0

    .line 6
    sput-object v0, Linshot/collage/adconfig/f;->b:Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final l(Landroid/view/ViewGroup;)V
    .locals 10

    const-string v0, "BannerAd"

    const-string v1, "onResume"

    .line 1
    invoke-static {v0, v1}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    sput-boolean v1, Linshot/collage/adconfig/f;->h:Z

    .line 3
    sput-object p1, Linshot/collage/adconfig/f;->b:Landroid/view/ViewGroup;

    .line 4
    sget-object p1, Linshot/collage/adconfig/f;->a:Lmb0;

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Linshot/collage/adconfig/f;->e:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Linshot/collage/adconfig/f;->m(Landroid/view/View;Z)V

    .line 6
    sget-object p1, Linshot/collage/adconfig/f;->a:Lmb0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmb0;->n()V

    .line 7
    :cond_0
    sget-object p1, Linshot/collage/adconfig/f;->b:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 8
    sget-boolean p1, Linshot/collage/adconfig/f;->c:Z

    if-nez p1, :cond_1

    .line 9
    sget-object p1, Linshot/collage/adconfig/f;->j:Linshot/collage/adconfig/f$a;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 11
    :cond_1
    sget-wide v2, Linshot/collage/adconfig/f;->d:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    sget-object p1, Linshot/collage/adconfig/f;->a:Lmb0;

    if-eqz p1, :cond_2

    .line 12
    sget-object p1, Linshot/collage/adconfig/f;->j:Linshot/collage/adconfig/f$a;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    sget-wide v2, Linshot/collage/adconfig/f;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Linshot/collage/adconfig/f;->d:J

    sub-long/2addr v6, v8

    sub-long/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendEmptyMessageDelayed time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method
