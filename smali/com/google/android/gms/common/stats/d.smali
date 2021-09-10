.class public Lcom/google/android/gms/common/stats/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    move/from16 v0, p2

    move-object/from16 v1, p7

    .line 1
    sget-object v2, Lcom/google/android/gms/common/stats/d;->a:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v2, Lcom/google/android/gms/common/stats/d;->a:Ljava/lang/Boolean;

    .line 3
    :cond_0
    sget-object v2, Lcom/google/android/gms/common/stats/d;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v14, "WakeLockTracker"

    if-eqz v2, :cond_3

    const-string v0, "missing wakeLock key. "

    .line 5
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v2, 0x7

    if-eq v2, v0, :cond_4

    const/16 v2, 0x8

    if-eq v2, v0, :cond_4

    const/16 v2, 0xa

    if-eq v2, v0, :cond_4

    const/16 v2, 0xb

    if-ne v2, v0, :cond_7

    .line 6
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 7
    new-instance v13, Lcom/google/android/gms/common/stats/WakeLockEvent;

    const/4 v2, 0x0

    const-string v5, "com.google.android.gms"

    if-eqz v1, :cond_5

    .line 8
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    const/4 v6, 0x0

    .line 9
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v8, v2

    goto :goto_1

    :cond_5
    move-object v8, v1

    .line 10
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 11
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/util/o;->a(Landroid/content/Context;)I

    move-result v12

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v16, v2

    goto :goto_2

    :cond_6
    move-object/from16 v16, v1

    .line 14
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/util/o;->b(Landroid/content/Context;)F

    move-result v15

    const/16 v19, 0x0

    const/4 v2, 0x2

    move-object v1, v13

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p6

    move-object/from16 v9, p1

    move-object v0, v13

    move-object/from16 v13, p4

    move-object/from16 v20, v14

    move-object/from16 v14, v16

    move-wide/from16 v16, p8

    move-object/from16 v18, p5

    .line 15
    invoke-direct/range {v1 .. v19}, Lcom/google/android/gms/common/stats/WakeLockEvent;-><init>(IJILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;Z)V

    .line 16
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/google/android/gms/common/stats/b;->a:Landroid/content/ComponentName;

    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.common.stats.EXTRA_LOG_EVENT"

    .line 18
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    move-object/from16 v1, p0

    .line 19
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v1, v20

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_3
    return-void
.end method
