.class public Lk30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll30;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lu30;

.field private final c:Lm30;

.field private final d:Ld10;

.field private final e:Lg30;

.field private final f:Lv30;

.field private final g:Ln00;

.field private final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ls30;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Llw<",
            "Lp30;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lu30;Ld10;Lm30;Lg30;Lv30;Ln00;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lk30;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Llw;

    invoke-direct {v2}, Llw;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lk30;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    iput-object p1, p0, Lk30;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lk30;->b:Lu30;

    .line 6
    iput-object p3, p0, Lk30;->d:Ld10;

    .line 7
    iput-object p4, p0, Lk30;->c:Lm30;

    .line 8
    iput-object p5, p0, Lk30;->e:Lg30;

    .line 9
    iput-object p6, p0, Lk30;->f:Lv30;

    .line 10
    iput-object p7, p0, Lk30;->g:Ln00;

    .line 11
    invoke-static {p3}, Lh30;->b(Ld10;)Ls30;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lk30;)Lu30;
    .locals 0

    .line 1
    iget-object p0, p0, Lk30;->b:Lu30;

    return-object p0
.end method

.method static synthetic b(Lk30;)Lv30;
    .locals 0

    .line 1
    iget-object p0, p0, Lk30;->f:Lv30;

    return-object p0
.end method

.method static synthetic c(Lk30;)Lm30;
    .locals 0

    .line 1
    iget-object p0, p0, Lk30;->c:Lm30;

    return-object p0
.end method

.method static synthetic d(Lk30;)Lg30;
    .locals 0

    .line 1
    iget-object p0, p0, Lk30;->e:Lg30;

    return-object p0
.end method

.method static synthetic e(Lk30;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lk30;->n(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static f(Lk30;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lk30;->a:Landroid/content/Context;

    invoke-static {p0}, Lsz;->i(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "existing_instance_identifier"

    .line 3
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic g(Lk30;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lk30;->h:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic h(Lk30;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lk30;->i:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;Lt00;Lt20;Ljava/lang/String;Ljava/lang/String;Ln00;)Lk30;
    .locals 16

    .line 1
    invoke-virtual/range {p2 .. p2}, Lt00;->d()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v10, Ld10;

    invoke-direct {v10}, Ld10;-><init>()V

    .line 3
    new-instance v11, Lm30;

    invoke-direct {v11, v10}, Lm30;-><init>(Ld10;)V

    .line 4
    new-instance v12, Lg30;

    move-object/from16 v13, p0

    invoke-direct {v12, v13}, Lg30;-><init>(Landroid/content/Context;)V

    .line 5
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v5, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings"

    invoke-static {v1, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v14, Lv30;

    move-object/from16 v3, p3

    invoke-direct {v14, v1, v3}, Lv30;-><init>(Ljava/lang/String;Lt20;)V

    .line 7
    invoke-virtual/range {p2 .. p2}, Lt00;->e()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual/range {p2 .. p2}, Lt00;->f()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual/range {p2 .. p2}, Lt00;->g()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x4

    new-array v7, v1, [Ljava/lang/String;

    .line 10
    invoke-static/range {p0 .. p0}, Lsz;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    aput-object p1, v7, v2

    const/4 v2, 0x2

    aput-object p5, v7, v2

    const/4 v2, 0x3

    aput-object p4, v7, v2

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v4, v1, :cond_1

    .line 12
    aget-object v8, v7, v4

    if-eqz v8, :cond_0

    const-string v9, "-"

    const-string v15, ""

    .line 13
    invoke-virtual {v8, v9, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-static {v1}, Lsz;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    move-object v7, v1

    if-eqz v0, :cond_4

    .line 20
    sget-object v0, Lo00;->f:Lo00;

    goto :goto_3

    :cond_4
    sget-object v0, Lo00;->c:Lo00;

    .line 21
    :goto_3
    invoke-virtual {v0}, Lo00;->a()I

    move-result v9

    .line 22
    new-instance v15, Lu30;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v5

    move-object v4, v6

    move-object/from16 v5, p2

    move-object v6, v7

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v9}, Lu30;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lu00;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    new-instance v0, Lk30;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v14

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lk30;-><init>(Landroid/content/Context;Lu30;Ld10;Lm30;Lg30;Lv30;Ln00;)V

    return-object v0
.end method

.method private k(Li30;)Lt30;
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Li30;->c:Li30;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2
    iget-object v1, p0, Lk30;->e:Lg30;

    invoke-virtual {v1}, Lg30;->a()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3
    iget-object v2, p0, Lk30;->c:Lm30;

    invoke-virtual {v2, v1}, Lm30;->a(Lorg/json/JSONObject;)Lt30;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "Loaded cached settings: "

    .line 4
    invoke-direct {p0, v1, v3}, Lk30;->n(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lk30;->d:Ld10;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 8
    sget-object v1, Li30;->d:Li30;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-wide v5, v2, Lt30;->d:J

    cmp-long p1, v5, v3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {}, Laz;->f()Laz;

    move-result-object p1

    const-string v1, "Cached settings have expired."

    invoke-virtual {p1, v1}, Laz;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 11
    :cond_2
    :goto_1
    :try_start_1
    invoke-static {}, Laz;->f()Laz;

    move-result-object p1

    const-string v0, "Returning cached settings."

    invoke-virtual {p1, v0}, Laz;->h(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_2

    .line 12
    :cond_3
    :try_start_2
    invoke-static {}, Laz;->f()Laz;

    move-result-object p1

    const-string v1, "Failed to parse cached settings data."

    invoke-virtual {p1, v1, v0}, Laz;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 13
    :cond_4
    invoke-static {}, Laz;->f()Laz;

    move-result-object p1

    const-string v1, "No cached settings data found."

    invoke-virtual {p1, v1}, Laz;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 14
    :goto_2
    invoke-static {}, Laz;->f()Laz;

    move-result-object v1

    const-string v2, "Failed to get cached settings"

    invoke-virtual {v1, v2, p1}, Laz;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-object v0
.end method

.method private n(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    invoke-static {p2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Laz;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public j()Lkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkw<",
            "Lp30;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk30;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llw;

    invoke-virtual {v0}, Llw;->a()Lkw;

    move-result-object v0

    return-object v0
.end method

.method public l()Ls30;
    .locals 1

    .line 1
    iget-object v0, p0, Lk30;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls30;

    return-object v0
.end method

.method public m(Ljava/util/concurrent/Executor;)Lkw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lkw<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Li30;->b:Li30;

    .line 2
    iget-object v1, p0, Lk30;->a:Landroid/content/Context;

    invoke-static {v1}, Lsz;->i(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "existing_instance_identifier"

    const-string v3, ""

    .line 3
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lk30;->b:Lu30;

    iget-object v2, v2, Lu30;->f:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 6
    invoke-direct {p0, v0}, Lk30;->k(Li30;)Lt30;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object p1, p0, Lk30;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lk30;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llw;

    .line 9
    iget-object v0, v0, Lt30;->a:Lp30;

    .line 10
    invoke-virtual {p1, v0}, Llw;->e(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 11
    invoke-static {p1}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Li30;->d:Li30;

    .line 13
    invoke-direct {p0, v0}, Lk30;->k(Li30;)Lt30;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v1, p0, Lk30;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 15
    iget-object v1, p0, Lk30;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llw;

    .line 16
    iget-object v0, v0, Lt30;->a:Lp30;

    .line 17
    invoke-virtual {v1, v0}, Llw;->e(Ljava/lang/Object;)Z

    .line 18
    :cond_1
    iget-object v0, p0, Lk30;->g:Ln00;

    .line 19
    invoke-virtual {v0}, Ln00;->f()Lkw;

    move-result-object v0

    new-instance v1, Lj30;

    invoke-direct {v1, p0}, Lj30;-><init>(Lk30;)V

    .line 20
    invoke-virtual {v0, p1, v1}, Lkw;->o(Ljava/util/concurrent/Executor;Ljw;)Lkw;

    move-result-object p1

    :goto_0
    return-object p1
.end method
