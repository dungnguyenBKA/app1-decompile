.class public Lcom/google/android/gms/stats/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static k:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/os/PowerManager$WakeLock;

.field private c:Landroid/os/WorkSource;

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Landroid/content/Context;

.field private g:Z

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p0, p0, Lcom/google/android/gms/stats/a;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/google/android/gms/stats/a;->g:Z

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/stats/a;->h:Ljava/util/Map;

    .line 6
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/stats/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v1, "WakeLock: context must not be null"

    .line 8
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WakeLock: wakeLockName must not be empty"

    .line 9
    invoke-static {p3, v1}, Lcom/google/android/gms/common/internal/n;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    iput p2, p0, Lcom/google/android/gms/stats/a;->d:I

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/stats/a;->f:Landroid/content/Context;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.gms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "*gcore*:"

    .line 13
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/stats/a;->e:Ljava/lang/String;

    goto :goto_1

    .line 14
    :cond_1
    iput-object p3, p0, Lcom/google/android/gms/stats/a;->e:Ljava/lang/String;

    :goto_1
    const-string v2, "power"

    .line 15
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 16
    invoke-virtual {v2, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/stats/a;->b:Landroid/os/PowerManager$WakeLock;

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/common/util/n;->c(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/common/util/m;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 20
    :cond_2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/util/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/stats/a;->c:Landroid/os/WorkSource;

    if-eqz p1, :cond_4

    .line 21
    invoke-static {v1}, Lcom/google/android/gms/common/util/n;->c(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 22
    iget-object p3, p0, Lcom/google/android/gms/stats/a;->c:Landroid/os/WorkSource;

    if-eqz p3, :cond_3

    .line 23
    invoke-virtual {p3, p1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_2

    .line 24
    :cond_3
    iput-object p1, p0, Lcom/google/android/gms/stats/a;->c:Landroid/os/WorkSource;

    .line 25
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/stats/a;->c:Landroid/os/WorkSource;

    .line 26
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 27
    :goto_3
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WakeLock"

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_4
    :goto_4
    sget-object p1, Lcom/google/android/gms/stats/a;->k:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p1, :cond_5

    .line 29
    invoke-static {}, Luv;->a()Luv$a;

    move-result-object p1

    invoke-interface {p1}, Luv$a;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    sput-object p1, Lcom/google/android/gms/stats/a;->k:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_5
    return-void
.end method

.method private final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/stats/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/stats/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/stats/a;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " was already released!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WakeLock"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/stats/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    goto :goto_1

    .line 6
    :cond_0
    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic f(Lcom/google/android/gms/stats/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/stats/a;->e()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/stats/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/stats/a;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/stats/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/stats/a;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/gms/stats/a;->i:I

    if-lez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/stats/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/stats/a;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 6
    iput v3, p0, Lcom/google/android/gms/stats/a;->i:I

    .line 7
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/gms/stats/a;->g:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/stats/a;->h:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    if-nez v2, :cond_3

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/stats/a;->h:Ljava/util/Map;

    new-array v5, v4, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    goto :goto_0

    .line 10
    :cond_3
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    :goto_0
    if-nez v3, :cond_5

    .line 11
    :cond_4
    iget-boolean v2, p0, Lcom/google/android/gms/stats/a;->g:Z

    if-nez v2, :cond_6

    iget v2, p0, Lcom/google/android/gms/stats/a;->i:I

    if-nez v2, :cond_6

    .line 12
    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/stats/a;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/stats/a;->b:Landroid/os/PowerManager$WakeLock;

    .line 13
    invoke-static {v2, v1}, Lcom/google/android/gms/common/stats/c;->a(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/android/gms/stats/a;->e:Ljava/lang/String;

    const/4 v8, 0x0

    iget v9, p0, Lcom/google/android/gms/stats/a;->d:I

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/stats/a;->c:Landroid/os/WorkSource;

    invoke-static {v1}, Lcom/google/android/gms/common/util/n;->b(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v10

    const/4 v7, 0x0

    move-wide v11, p1

    .line 15
    invoke-static/range {v3 .. v12}, Lcom/google/android/gms/common/stats/d;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    .line 16
    iget v1, p0, Lcom/google/android/gms/stats/a;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/stats/a;->i:I

    .line 17
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/stats/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_7

    .line 19
    sget-object v0, Lcom/google/android/gms/stats/a;->k:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/stats/b;

    invoke-direct {v1, p0}, Lcom/google/android/gms/stats/b;-><init>(Lcom/google/android/gms/stats/a;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/stats/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/stats/a;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "WakeLock"

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/stats/a;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " release without a matched acquire!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/stats/a;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/stats/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/stats/a;->g:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/stats/a;->h:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    const/4 v4, 0x0

    if-nez v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/stats/a;->h:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_0

    .line 9
    :cond_3
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    :goto_0
    if-nez v4, :cond_5

    .line 10
    :cond_4
    iget-boolean v2, p0, Lcom/google/android/gms/stats/a;->g:Z

    if-nez v2, :cond_6

    iget v2, p0, Lcom/google/android/gms/stats/a;->i:I

    if-ne v2, v3, :cond_6

    .line 11
    :cond_5
    iget-object v4, p0, Lcom/google/android/gms/stats/a;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/stats/a;->b:Landroid/os/PowerManager$WakeLock;

    .line 12
    invoke-static {v2, v1}, Lcom/google/android/gms/common/stats/c;->a(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    iget-object v7, p0, Lcom/google/android/gms/stats/a;->e:Ljava/lang/String;

    const/4 v9, 0x0

    iget v10, p0, Lcom/google/android/gms/stats/a;->d:I

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/stats/a;->c:Landroid/os/WorkSource;

    invoke-static {v1}, Lcom/google/android/gms/common/util/n;->b(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v11

    const-wide/16 v12, 0x0

    const/4 v8, 0x0

    .line 14
    invoke-static/range {v4 .. v13}, Lcom/google/android/gms/common/stats/d;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    .line 15
    iget v1, p0, Lcom/google/android/gms/stats/a;->i:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/stats/a;->i:I

    .line 16
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/stats/a;->e()V

    return-void

    :catchall_0
    move-exception v1

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/stats/a;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/stats/a;->g:Z

    return-void
.end method
