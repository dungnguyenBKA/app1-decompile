.class public Li00;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li00$e;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ln00;

.field private final c:J

.field private d:Lj00;

.field private e:Lj00;

.field private f:Z

.field private g:Lzz;

.field private final h:Lt00;

.field private final i:Lkz;

.field private final j:Ldz;

.field private final k:Ljava/util/concurrent/ExecutorService;

.field private final l:Ltz;

.field private final m:Lzy;


# direct methods
.method public constructor <init>(Lcom/google/firebase/c;Lt00;Lzy;Ln00;Lkz;Ldz;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Li00;->b:Ln00;

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/c;->g()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Li00;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Li00;->h:Lt00;

    .line 5
    iput-object p3, p0, Li00;->m:Lzy;

    .line 6
    iput-object p5, p0, Li00;->i:Lkz;

    .line 7
    iput-object p6, p0, Li00;->j:Ldz;

    .line 8
    iput-object p7, p0, Li00;->k:Ljava/util/concurrent/ExecutorService;

    .line 9
    new-instance p1, Ltz;

    invoke-direct {p1, p7}, Ltz;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Li00;->l:Ltz;

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Li00;->c:J

    return-void
.end method

.method static synthetic a(Li00;Ll30;)Lkw;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Li00;->i(Ll30;)Lkw;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Li00;)Lj00;
    .locals 0

    .line 1
    iget-object p0, p0, Li00;->d:Lj00;

    return-object p0
.end method

.method static synthetic c(Li00;)Lzz;
    .locals 0

    .line 1
    iget-object p0, p0, Li00;->g:Lzz;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Li00;->l:Ltz;

    new-instance v1, Li00$d;

    invoke-direct {v1, p0}, Li00$d;-><init>(Li00;)V

    .line 2
    invoke-virtual {v0, v1}, Ltz;->d(Ljava/util/concurrent/Callable;)Lkw;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-static {v0}, Lh10;->a(Lkw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Li00;->f:Z

    return-void

    :catch_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Li00;->f:Z

    return-void
.end method

.method private i(Ll30;)Lkw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll30;",
            ")",
            "Lkw<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "Collection of crash reports disabled in Crashlytics settings."

    .line 1
    invoke-virtual {p0}, Li00;->p()V

    .line 2
    :try_start_0
    iget-object v1, p0, Li00;->i:Lkz;

    invoke-static {p0}, Lh00;->b(Li00;)Ljz;

    move-result-object v2

    invoke-interface {v1, v2}, Lkz;->a(Ljz;)V

    .line 3
    check-cast p1, Lk30;

    invoke-virtual {p1}, Lk30;->l()Ls30;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ls30;->a()Lq30;

    move-result-object v1

    iget-boolean v1, v1, Lq30;->a:Z

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Laz;->f()Laz;

    move-result-object p1

    invoke-virtual {p1, v0}, Laz;->b(Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnw;->c(Ljava/lang/Exception;)Lkw;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0}, Li00;->o()V

    return-object p1

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Li00;->g:Lzz;

    invoke-virtual {v0}, Lzz;->r()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v1, "Previous sessions could not be finalized."

    invoke-virtual {v0, v1}, Laz;->i(Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object v0, p0, Li00;->g:Lzz;

    invoke-virtual {p1}, Lk30;->j()Lkw;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzz;->z(Lkw;)Lkw;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-virtual {p0}, Li00;->o()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    :try_start_2
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v1, "Crashlytics encountered a problem during asynchronous initialization."

    .line 13
    invoke-virtual {v0, v1, p1}, Laz;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    invoke-static {p1}, Lnw;->c(Ljava/lang/Exception;)Lkw;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    invoke-virtual {p0}, Li00;->o()V

    return-object p1

    :goto_0
    invoke-virtual {p0}, Li00;->o()V

    .line 16
    throw p1
.end method

.method private k(Ll30;)V
    .locals 3

    .line 1
    new-instance v0, Li00$b;

    invoke-direct {v0, p0, p1}, Li00$b;-><init>(Li00;Ll30;)V

    .line 2
    iget-object p1, p0, Li00;->k:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 3
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v1, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    .line 4
    invoke-virtual {v0, v1}, Laz;->b(Ljava/lang/String;)V

    const-wide/16 v0, 0x4

    .line 5
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v1, "Crashlytics timed out during initialization."

    invoke-virtual {v0, v1, p1}, Laz;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 7
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v1, "Crashlytics encountered a problem during initialization."

    invoke-virtual {v0, v1, p1}, Laz;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 8
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v1, "Crashlytics was interrupted during initialization."

    invoke-virtual {v0, v1, p1}, Laz;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static l(Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Laz;->f()Laz;

    move-result-object p0

    const-string p1, "Configured not to require a build ID."

    invoke-virtual {p0, p1}, Laz;->h(Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string p0, "FirebaseCrashlytics"

    const-string p1, "."

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".     |  | "

    .line 4
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".     |  |"

    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".   \\ |  | /"

    .line 7
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".    \\    /"

    .line 8
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".     \\  /"

    .line 9
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".      \\/"

    .line 10
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app\'s build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account."

    .line 12
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".      /\\"

    .line 14
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".     /  \\"

    .line 15
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".    /    \\"

    .line 16
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".   / |  | \\"

    .line 17
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public e()Lkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkw<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li00;->g:Lzz;

    invoke-virtual {v0}, Lzz;->k()Lkw;

    move-result-object v0

    return-object v0
.end method

.method public f()Lkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkw<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li00;->g:Lzz;

    invoke-virtual {v0}, Lzz;->l()Lkw;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li00;->f:Z

    return v0
.end method

.method h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li00;->d:Lj00;

    invoke-virtual {v0}, Lj00;->c()Z

    move-result v0

    return v0
.end method

.method public j(Ll30;)Lkw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll30;",
            ")",
            "Lkw<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li00;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Li00$a;

    invoke-direct {v1, p0, p1}, Li00$a;-><init>(Li00;Ll30;)V

    invoke-static {v0, v1}, Lh10;->b(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lkw;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Li00;->c:J

    sub-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Li00;->g:Lzz;

    invoke-virtual {v2, v0, v1, p1}, Lzz;->B(JLjava/lang/String;)V

    return-void
.end method

.method public n(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li00;->g:Lzz;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lzz;->A(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method o()V
    .locals 2

    .line 1
    iget-object v0, p0, Li00;->l:Ltz;

    new-instance v1, Li00$c;

    invoke-direct {v1, p0}, Li00$c;-><init>(Li00;)V

    invoke-virtual {v0, v1}, Ltz;->d(Ljava/util/concurrent/Callable;)Lkw;

    return-void
.end method

.method p()V
    .locals 2

    .line 1
    iget-object v0, p0, Li00;->l:Ltz;

    invoke-virtual {v0}, Ltz;->b()V

    .line 2
    iget-object v0, p0, Li00;->d:Lj00;

    invoke-virtual {v0}, Lj00;->a()Z

    .line 3
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v1, "Initialization marker file was created."

    invoke-virtual {v0, v1}, Laz;->h(Ljava/lang/String;)V

    return-void
.end method

.method public q(Lmz;Ll30;)Z
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    iget-object v2, v1, Li00;->a:Landroid/content/Context;

    const-string v3, "com.crashlytics.RequireBuildId"

    const/4 v10, 0x1

    .line 2
    invoke-static {v2, v3, v10}, Lsz;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v15, p1

    .line 3
    iget-object v3, v15, Lmz;->b:Ljava/lang/String;

    invoke-static {v3, v2}, Li00;->l(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v25, 0x0

    .line 4
    :try_start_0
    new-instance v14, Lc30;

    iget-object v2, v1, Li00;->a:Landroid/content/Context;

    invoke-direct {v14, v2}, Lc30;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v2, Lj00;

    const-string v3, "crash_marker"

    invoke-direct {v2, v3, v14}, Lj00;-><init>(Ljava/lang/String;Lc30;)V

    iput-object v2, v1, Li00;->e:Lj00;

    .line 6
    new-instance v2, Lj00;

    const-string v3, "initialization_marker"

    invoke-direct {v2, v3, v14}, Lj00;-><init>(Ljava/lang/String;Lc30;)V

    iput-object v2, v1, Li00;->d:Lj00;

    .line 7
    new-instance v19, Le10;

    invoke-direct/range {v19 .. v19}, Le10;-><init>()V

    .line 8
    new-instance v13, Li00$e;

    invoke-direct {v13, v14}, Li00$e;-><init>(Lc30;)V

    .line 9
    new-instance v12, Lj10;

    iget-object v2, v1, Li00;->a:Landroid/content/Context;

    invoke-direct {v12, v2, v13}, Lj10;-><init>(Landroid/content/Context;Lj10$b;)V

    .line 10
    new-instance v8, Lw30;

    const/16 v2, 0x400

    new-array v3, v10, [Lz30;

    new-instance v4, Ly30;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ly30;-><init>(I)V

    aput-object v4, v3, v25

    invoke-direct {v8, v2, v3}, Lw30;-><init>(I[Lz30;)V

    .line 11
    iget-object v2, v1, Li00;->a:Landroid/content/Context;

    iget-object v3, v1, Li00;->h:Lt00;

    move-object v4, v14

    move-object/from16 v5, p1

    move-object v6, v12

    move-object/from16 v7, v19

    move-object/from16 v9, p2

    .line 12
    invoke-static/range {v2 .. v9}, Lc10;->b(Landroid/content/Context;Lt00;Lc30;Lmz;Lj10;Le10;Lz30;Ll30;)Lc10;

    move-result-object v22

    .line 13
    new-instance v2, Lzz;

    iget-object v3, v1, Li00;->a:Landroid/content/Context;

    iget-object v4, v1, Li00;->l:Ltz;

    iget-object v5, v1, Li00;->h:Lt00;

    iget-object v6, v1, Li00;->b:Ln00;

    iget-object v7, v1, Li00;->e:Lj00;

    iget-object v8, v1, Li00;->m:Lzy;

    iget-object v9, v1, Li00;->j:Ldz;

    move-object v11, v2

    move-object/from16 v20, v12

    move-object v12, v3

    move-object v3, v13

    move-object v13, v4

    move-object v4, v14

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v4

    move-object/from16 v17, v7

    move-object/from16 v18, p1

    move-object/from16 v21, v3

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    invoke-direct/range {v11 .. v24}, Lzz;-><init>(Landroid/content/Context;Ltz;Lt00;Ln00;Lc30;Lj00;Lmz;Le10;Lj10;Lj10$b;Lc10;Lzy;Ldz;)V

    iput-object v2, v1, Li00;->g:Lzz;

    .line 14
    invoke-virtual/range {p0 .. p0}, Li00;->h()Z

    move-result v2

    .line 15
    invoke-direct/range {p0 .. p0}, Li00;->d()V

    .line 16
    iget-object v3, v1, Li00;->g:Lzz;

    .line 17
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    .line 18
    invoke-virtual {v3, v4, v0}, Lzz;->q(Ljava/lang/Thread$UncaughtExceptionHandler;Ll30;)V

    if-eqz v2, :cond_3

    .line 19
    iget-object v2, v1, Li00;->a:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    .line 20
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    const-string v3, "connectivity"

    .line 21
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 22
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 23
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_3

    .line 24
    invoke-static {}, Laz;->f()Laz;

    move-result-object v2

    const-string v3, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    .line 25
    invoke-virtual {v2, v3}, Laz;->b(Ljava/lang/String;)V

    .line 26
    invoke-direct {v1, v0}, Li00;->k(Ll30;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v25

    .line 27
    :cond_3
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v2, "Successfully configured exception handler."

    invoke-virtual {v0, v2}, Laz;->b(Ljava/lang/String;)V

    return v10

    :catch_0
    move-exception v0

    .line 28
    invoke-static {}, Laz;->f()Laz;

    move-result-object v2

    const-string v3, "Crashlytics was not started due to an exception during initialization"

    .line 29
    invoke-virtual {v2, v3, v0}, Laz;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 30
    iput-object v0, v1, Li00;->g:Lzz;

    return v25

    .line 31
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app\'s build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r()Lkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkw<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li00;->g:Lzz;

    invoke-virtual {v0}, Lzz;->w()Lkw;

    move-result-object v0

    return-object v0
.end method

.method public s(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li00;->b:Ln00;

    invoke-virtual {v0, p1}, Ln00;->d(Ljava/lang/Boolean;)V

    return-void
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li00;->g:Lzz;

    invoke-virtual {v0, p1, p2}, Lzz;->x(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li00;->g:Lzz;

    invoke-virtual {v0, p1}, Lzz;->y(Ljava/lang/String;)V

    return-void
.end method
