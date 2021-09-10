.class public Lna0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lda0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lna0$d;,
        Lna0$e;
    }
.end annotation


# static fields
.field private static g:Lna0;

.field private static h:Landroid/os/Handler;

.field private static i:Landroid/os/Handler;

.field private static final j:Ljava/lang/Runnable;

.field private static final k:Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lna0$e;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lea0;

.field private d:Loa0;

.field private e:Lva0;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lna0;

    invoke-direct {v0}, Lna0;-><init>()V

    sput-object v0, Lna0;->g:Lna0;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lna0;->h:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lna0;->i:Landroid/os/Handler;

    new-instance v0, Lna0$b;

    invoke-direct {v0}, Lna0$b;-><init>()V

    sput-object v0, Lna0;->j:Ljava/lang/Runnable;

    new-instance v0, Lna0$c;

    invoke-direct {v0}, Lna0$c;-><init>()V

    sput-object v0, Lna0;->k:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lna0;->a:Ljava/util/List;

    new-instance v0, Loa0;

    invoke-direct {v0}, Loa0;-><init>()V

    iput-object v0, p0, Lna0;->d:Loa0;

    new-instance v0, Lea0;

    invoke-direct {v0}, Lea0;-><init>()V

    iput-object v0, p0, Lna0;->c:Lea0;

    new-instance v0, Lva0;

    new-instance v1, Lra0;

    invoke-direct {v1}, Lra0;-><init>()V

    invoke-direct {v0, v1}, Lva0;-><init>(Lra0;)V

    iput-object v0, p0, Lna0;->e:Lva0;

    return-void
.end method

.method static synthetic a(Lna0;)Lva0;
    .locals 0

    iget-object p0, p0, Lna0;->e:Lva0;

    return-object p0
.end method

.method static e(Lna0;)V
    .locals 11

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lna0;->b:I

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lna0;->f:J

    .line 4
    iget-object v0, p0, Lna0;->d:Loa0;

    invoke-virtual {v0}, Loa0;->h()V

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 6
    iget-object v2, p0, Lna0;->c:Lea0;

    invoke-virtual {v2}, Lea0;->a()Lda0;

    move-result-object v2

    iget-object v3, p0, Lna0;->d:Loa0;

    invoke-virtual {v3}, Loa0;->f()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    iget-object v3, p0, Lna0;->d:Loa0;

    invoke-virtual {v3}, Loa0;->f()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v6, v2

    check-cast v6, Lfa0;

    invoke-virtual {v6, v4}, Lfa0;->b(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lna0;->d:Loa0;

    invoke-virtual {v7, v5}, Loa0;->d(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    .line 7
    iget-object v8, p0, Lna0;->c:Lea0;

    invoke-virtual {v8}, Lea0;->b()Lda0;

    move-result-object v8

    iget-object v9, p0, Lna0;->d:Loa0;

    invoke-virtual {v9, v5}, Loa0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    check-cast v8, Lga0;

    invoke-virtual {v8, v7}, Lga0;->b(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v7

    .line 8
    sget v8, Lha0;->d:I

    :try_start_0
    const-string v8, "adSessionId"

    invoke-virtual {v7, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    const-string v10, "Error with setting ad session id"

    invoke-static {v10, v8}, Landroidx/core/app/b;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    :try_start_1
    const-string v8, "notVisibleReason"

    .line 9
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    const-string v9, "Error with setting not visible reason"

    invoke-static {v9, v8}, Landroidx/core/app/b;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 10
    :goto_2
    invoke-static {v6, v7}, Lha0;->f(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 11
    :cond_0
    invoke-static {v6}, Lha0;->d(Lorg/json/JSONObject;)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lna0;->e:Lva0;

    invoke-virtual {v5, v6, v7, v0, v1}, Lva0;->e(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lna0;->d:Loa0;

    invoke-virtual {v3}, Loa0;->c()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_2

    check-cast v2, Lfa0;

    invoke-virtual {v2, v4}, Lfa0;->b(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v5, 0x1

    .line 12
    invoke-virtual {v2, v4, v3, p0, v5}, Lfa0;->a(Landroid/view/View;Lorg/json/JSONObject;Lda0$a;Z)V

    .line 13
    invoke-static {v3}, Lha0;->d(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lna0;->e:Lva0;

    iget-object v4, p0, Lna0;->d:Loa0;

    invoke-virtual {v4}, Loa0;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lva0;->c(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lna0;->e:Lva0;

    invoke-virtual {v0}, Lva0;->a()V

    :goto_3
    iget-object v0, p0, Lna0;->d:Loa0;

    invoke-virtual {v0}, Loa0;->i()V

    .line 14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 15
    iget-wide v2, p0, Lna0;->f:J

    sub-long/2addr v0, v2

    .line 16
    iget-object v2, p0, Lna0;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lna0;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lna0$e;

    iget v4, p0, Lna0;->b:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Lna0$e;->a(IJ)V

    instance-of v4, v3, Lna0$d;

    if-eqz v4, :cond_3

    check-cast v3, Lna0$d;

    iget v4, p0, Lna0;->b:I

    invoke-interface {v3, v4, v0, v1}, Lna0$d;->b(IJ)V

    goto :goto_4

    :cond_4
    return-void
.end method

.method static synthetic f()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lna0;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lna0;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lna0;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static i()Lna0;
    .locals 1

    sget-object v0, Lna0;->g:Lna0;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    sget-object v0, Lna0;->i:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lna0;->i:Landroid/os/Handler;

    sget-object v1, Lna0;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lna0;->i:Landroid/os/Handler;

    sget-object v1, Lna0;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;Lda0;Lorg/json/JSONObject;)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroidx/core/app/b;->x(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lna0;->d:Loa0;

    invoke-virtual {v0, p1}, Loa0;->g(Landroid/view/View;)Lwa0;

    move-result-object v0

    sget-object v3, Lwa0;->d:Lwa0;

    if-ne v0, v3, :cond_2

    return-void

    :cond_2
    invoke-interface {p2, p1}, Lda0;->b(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {p3, v3}, Lha0;->f(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 3
    iget-object p3, p0, Lna0;->d:Loa0;

    invoke-virtual {p3, p1}, Loa0;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 4
    sget v4, Lha0;->d:I

    :try_start_0
    const-string v4, "adSessionId"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    const-string v4, "Error with setting ad session id"

    invoke-static {v4, p3}, Landroidx/core/app/b;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5
    :goto_1
    iget-object p3, p0, Lna0;->d:Loa0;

    invoke-virtual {p3}, Loa0;->j()V

    const/4 p3, 0x1

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_2
    if-nez p3, :cond_7

    .line 6
    iget-object p3, p0, Lna0;->d:Loa0;

    invoke-virtual {p3, p1}, Loa0;->e(Landroid/view/View;)Loa0$a;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 7
    sget v4, Lha0;->d:I

    invoke-virtual {p3}, Loa0$a;->a()Lx90;

    move-result-object v4

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p3}, Loa0$a;->b()Ljava/util/ArrayList;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_4
    :try_start_1
    const-string p3, "isFriendlyObstructionFor"

    invoke-virtual {v3, p3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "friendlyObstructionClass"

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v3, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "friendlyObstructionPurpose"

    invoke-virtual {v3, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "friendlyObstructionReason"

    invoke-virtual {v3, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p3

    const-string v4, "Error with setting friendly obstruction"

    invoke-static {v4, p3}, Landroidx/core/app/b;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 8
    :cond_5
    :goto_4
    sget-object p3, Lwa0;->b:Lwa0;

    if-ne v0, p3, :cond_6

    const/4 v1, 0x1

    :cond_6
    invoke-interface {p2, p1, v3, p0, v1}, Lda0;->a(Landroid/view/View;Lorg/json/JSONObject;Lda0$a;Z)V

    .line 9
    :cond_7
    iget p1, p0, Lna0;->b:I

    add-int/2addr p1, v2

    iput p1, p0, Lna0;->b:I

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    sget-object v0, Lna0;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lna0;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lna0;->i:Landroid/os/Handler;

    .line 2
    :cond_0
    iget-object v0, p0, Lna0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lna0;->h:Landroid/os/Handler;

    new-instance v1, Lna0$a;

    invoke-direct {v1, p0}, Lna0$a;-><init>(Lna0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
