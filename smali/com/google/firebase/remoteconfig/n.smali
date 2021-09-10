.class public Lcom/google/firebase/remoteconfig/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final j:Lcom/google/android/gms/common/util/d;

.field private static final k:Ljava/util/Random;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Lcom/google/firebase/c;

.field private final e:Lcom/google/firebase/installations/g;

.field private final f:Lcom/google/firebase/abt/c;

.field private final g:Lvy;

.field private final h:Ljava/lang/String;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/f;->d()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/remoteconfig/n;->j:Lcom/google/android/gms/common/util/d;

    .line 2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/firebase/remoteconfig/n;->k:Ljava/util/Random;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/c;Lcom/google/firebase/installations/g;Lcom/google/firebase/abt/c;Lvy;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/remoteconfig/n;->a:Ljava/util/Map;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/remoteconfig/n;->i:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/n;->b:Landroid/content/Context;

    .line 6
    iput-object v0, p0, Lcom/google/firebase/remoteconfig/n;->c:Ljava/util/concurrent/ExecutorService;

    .line 7
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/n;->d:Lcom/google/firebase/c;

    .line 8
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/n;->e:Lcom/google/firebase/installations/g;

    .line 9
    iput-object p4, p0, Lcom/google/firebase/remoteconfig/n;->f:Lcom/google/firebase/abt/c;

    .line 10
    iput-object p5, p0, Lcom/google/firebase/remoteconfig/n;->g:Lvy;

    .line 11
    invoke-virtual {p2}, Lcom/google/firebase/c;->j()Lcom/google/firebase/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/i;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/n;->h:Ljava/lang/String;

    .line 12
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/l;->a(Lcom/google/firebase/remoteconfig/n;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-static {v0, p1}, Lnw;->b(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lkw;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/e;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "frc"

    aput-object v2, v0, v1

    .line 1
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/n;->h:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const-string p1, "%s_%s_%s_%s.json"

    .line 2
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/n;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/o;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/o;

    move-result-object p1

    .line 4
    invoke-static {p2, p1}, Lcom/google/firebase/remoteconfig/internal/e;->e(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/remoteconfig/internal/o;)Lcom/google/firebase/remoteconfig/internal/e;

    move-result-object p1

    return-object p1
.end method

.method private static e(Lcom/google/firebase/c;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/c;->i()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[DEFAULT]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method declared-synchronized a(Lcom/google/firebase/c;Ljava/lang/String;Lcom/google/firebase/installations/g;Lcom/google/firebase/abt/c;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/k;Lcom/google/firebase/remoteconfig/internal/m;Lcom/google/firebase/remoteconfig/internal/n;)Lcom/google/firebase/remoteconfig/f;
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v2, v1, Lcom/google/firebase/remoteconfig/n;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2
    new-instance v2, Lcom/google/firebase/remoteconfig/f;

    iget-object v4, v1, Lcom/google/firebase/remoteconfig/n;->b:Landroid/content/Context;

    const-string v3, "firebase"

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/c;->i()Ljava/lang/String;

    move-result-object v3

    const-string v5, "[DEFAULT]"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    move-object/from16 v7, p4

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    move-object v7, v3

    :goto_1
    move-object v3, v2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    .line 5
    invoke-direct/range {v3 .. v14}, Lcom/google/firebase/remoteconfig/f;-><init>(Landroid/content/Context;Lcom/google/firebase/c;Lcom/google/firebase/installations/g;Lcom/google/firebase/abt/c;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/k;Lcom/google/firebase/remoteconfig/internal/m;Lcom/google/firebase/remoteconfig/internal/n;)V

    .line 6
    invoke-virtual {v2}, Lcom/google/firebase/remoteconfig/f;->k()V

    .line 7
    iget-object v3, v1, Lcom/google/firebase/remoteconfig/n;->a:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    iget-object v2, v1, Lcom/google/firebase/remoteconfig/n;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()Lcom/google/firebase/remoteconfig/f;
    .locals 12

    const-string v2, "firebase"

    .line 1
    monitor-enter p0

    :try_start_0
    const-string v0, "fetch"

    .line 2
    invoke-direct {p0, v2, v0}, Lcom/google/firebase/remoteconfig/n;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/e;

    move-result-object v6

    const-string v0, "activate"

    .line 3
    invoke-direct {p0, v2, v0}, Lcom/google/firebase/remoteconfig/n;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/e;

    move-result-object v7

    const-string v0, "defaults"

    .line 4
    invoke-direct {p0, v2, v0}, Lcom/google/firebase/remoteconfig/n;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/e;

    move-result-object v8

    .line 5
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/n;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/n;->h:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "frc"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v4, "settings"

    aput-object v4, v3, v1

    const-string v1, "%s_%s_%s_%s"

    .line 6
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 8
    new-instance v11, Lcom/google/firebase/remoteconfig/internal/n;

    invoke-direct {v11, v0}, Lcom/google/firebase/remoteconfig/internal/n;-><init>(Landroid/content/SharedPreferences;)V

    .line 9
    new-instance v10, Lcom/google/firebase/remoteconfig/internal/m;

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/n;->c:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v10, v0, v7, v8}, Lcom/google/firebase/remoteconfig/internal/m;-><init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;)V

    .line 10
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/n;->d:Lcom/google/firebase/c;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/n;->g:Lvy;

    .line 11
    invoke-virtual {v0}, Lcom/google/firebase/c;->i()Ljava/lang/String;

    move-result-object v0

    const-string v3, "[DEFAULT]"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 12
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/q;

    invoke-direct {v0, v1}, Lcom/google/firebase/remoteconfig/internal/q;-><init>(Lvy;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 13
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/m;->b(Lcom/google/firebase/remoteconfig/internal/q;)Lcom/google/android/gms/common/util/b;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/firebase/remoteconfig/internal/m;->a(Lcom/google/android/gms/common/util/b;)V

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/n;->d:Lcom/google/firebase/c;

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/n;->e:Lcom/google/firebase/installations/g;

    iget-object v4, p0, Lcom/google/firebase/remoteconfig/n;->f:Lcom/google/firebase/abt/c;

    iget-object v5, p0, Lcom/google/firebase/remoteconfig/n;->c:Ljava/util/concurrent/ExecutorService;

    .line 15
    invoke-virtual {p0, v2, v6, v11}, Lcom/google/firebase/remoteconfig/n;->d(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/n;)Lcom/google/firebase/remoteconfig/internal/k;

    move-result-object v9

    move-object v0, p0

    .line 16
    invoke-virtual/range {v0 .. v11}, Lcom/google/firebase/remoteconfig/n;->a(Lcom/google/firebase/c;Ljava/lang/String;Lcom/google/firebase/installations/g;Lcom/google/firebase/abt/c;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/k;Lcom/google/firebase/remoteconfig/internal/m;Lcom/google/firebase/remoteconfig/internal/n;)Lcom/google/firebase/remoteconfig/f;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/n;)Lcom/google/firebase/remoteconfig/internal/k;
    .locals 18

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/k;

    iget-object v3, v1, Lcom/google/firebase/remoteconfig/n;->e:Lcom/google/firebase/installations/g;

    .line 2
    iget-object v2, v1, Lcom/google/firebase/remoteconfig/n;->d:Lcom/google/firebase/c;

    invoke-static {v2}, Lcom/google/firebase/remoteconfig/n;->e(Lcom/google/firebase/c;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/firebase/remoteconfig/n;->g:Lvy;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v4, v2

    iget-object v5, v1, Lcom/google/firebase/remoteconfig/n;->c:Ljava/util/concurrent/ExecutorService;

    sget-object v6, Lcom/google/firebase/remoteconfig/n;->j:Lcom/google/android/gms/common/util/d;

    sget-object v7, Lcom/google/firebase/remoteconfig/n;->k:Ljava/util/Random;

    iget-object v2, v1, Lcom/google/firebase/remoteconfig/n;->d:Lcom/google/firebase/c;

    .line 3
    invoke-virtual {v2}, Lcom/google/firebase/c;->j()Lcom/google/firebase/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/i;->b()Ljava/lang/String;

    move-result-object v11

    .line 4
    iget-object v2, v1, Lcom/google/firebase/remoteconfig/n;->d:Lcom/google/firebase/c;

    invoke-virtual {v2}, Lcom/google/firebase/c;->j()Lcom/google/firebase/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/i;->c()Ljava/lang/String;

    move-result-object v10

    .line 5
    new-instance v17, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    iget-object v9, v1, Lcom/google/firebase/remoteconfig/n;->b:Landroid/content/Context;

    .line 6
    invoke-virtual/range {p3 .. p3}, Lcom/google/firebase/remoteconfig/internal/n;->b()J

    move-result-wide v13

    .line 7
    invoke-virtual/range {p3 .. p3}, Lcom/google/firebase/remoteconfig/internal/n;->b()J

    move-result-wide v15

    move-object/from16 v8, v17

    move-object/from16 v12, p1

    invoke-direct/range {v8 .. v16}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 8
    iget-object v11, v1, Lcom/google/firebase/remoteconfig/n;->i:Ljava/util/Map;

    move-object v2, v0

    move-object/from16 v8, p2

    move-object/from16 v9, v17

    move-object/from16 v10, p3

    invoke-direct/range {v2 .. v11}, Lcom/google/firebase/remoteconfig/internal/k;-><init>(Lcom/google/firebase/installations/g;Lvy;Ljava/util/concurrent/Executor;Lcom/google/android/gms/common/util/d;Ljava/util/Random;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;Lcom/google/firebase/remoteconfig/internal/n;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
