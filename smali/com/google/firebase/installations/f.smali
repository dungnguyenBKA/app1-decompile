.class public Lcom/google/firebase/installations/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/installations/g;


# static fields
.field private static final m:Ljava/lang/Object;

.field private static final n:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final a:Lcom/google/firebase/c;

.field private final b:Ll50;

.field private final c:Lh50;

.field private final d:Lcom/google/firebase/installations/o;

.field private final e:Lg50;

.field private final f:Lcom/google/firebase/installations/m;

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/util/concurrent/ExecutorService;

.field private final i:Ljava/util/concurrent/ExecutorService;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le50;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/installations/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/f;->m:Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/firebase/installations/f$a;

    invoke-direct {v0}, Lcom/google/firebase/installations/f$a;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/f;->n:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/c;Ld50;Ld50;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/c;",
            "Ld50<",
            "Ly50;",
            ">;",
            "Ld50<",
            "La50;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v10, Lcom/google/firebase/installations/f;->n:Ljava/util/concurrent/ThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    move-object v0, v8

    move-object v5, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v0, Ll50;

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/c;->g()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Ll50;-><init>(Landroid/content/Context;Ld50;Ld50;)V

    new-instance p2, Lh50;

    invoke-direct {p2, p1}, Lh50;-><init>(Lcom/google/firebase/c;)V

    .line 3
    invoke-static {}, Lcom/google/firebase/installations/o;->c()Lcom/google/firebase/installations/o;

    move-result-object p3

    new-instance v1, Lg50;

    invoke-direct {v1, p1}, Lg50;-><init>(Lcom/google/firebase/c;)V

    new-instance v2, Lcom/google/firebase/installations/m;

    invoke-direct {v2}, Lcom/google/firebase/installations/m;-><init>()V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/google/firebase/installations/f;->g:Ljava/lang/Object;

    .line 6
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/google/firebase/installations/f;->k:Ljava/util/Set;

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/firebase/installations/f;->l:Ljava/util/List;

    .line 8
    iput-object p1, p0, Lcom/google/firebase/installations/f;->a:Lcom/google/firebase/c;

    .line 9
    iput-object v0, p0, Lcom/google/firebase/installations/f;->b:Ll50;

    .line 10
    iput-object p2, p0, Lcom/google/firebase/installations/f;->c:Lh50;

    .line 11
    iput-object p3, p0, Lcom/google/firebase/installations/f;->d:Lcom/google/firebase/installations/o;

    .line 12
    iput-object v1, p0, Lcom/google/firebase/installations/f;->e:Lg50;

    .line 13
    iput-object v2, p0, Lcom/google/firebase/installations/f;->f:Lcom/google/firebase/installations/m;

    .line 14
    iput-object v8, p0, Lcom/google/firebase/installations/f;->h:Ljava/util/concurrent/ExecutorService;

    .line 15
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    move-object v0, p1

    move-object v5, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lcom/google/firebase/installations/f;->i:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private final b(Z)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/firebase/installations/f;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/f;->a:Lcom/google/firebase/c;

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/c;->g()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lcom/google/firebase/installations/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/b;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/installations/f;->c:Lh50;

    .line 5
    invoke-virtual {v2}, Lh50;->b()Li50;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Li50;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-direct {p0, v2}, Lcom/google/firebase/installations/f;->l(Li50;)Ljava/lang/String;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lcom/google/firebase/installations/f;->c:Lh50;

    .line 9
    invoke-virtual {v2}, Li50;->k()Li50$a;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v3}, Li50$a;->d(Ljava/lang/String;)Li50$a;

    sget-object v3, Lh50$a;->d:Lh50$a;

    .line 11
    invoke-virtual {v2, v3}, Li50$a;->g(Lh50$a;)Li50$a;

    .line 12
    invoke-virtual {v2}, Li50$a;->a()Li50;

    move-result-object v2

    .line 13
    invoke-virtual {v4, v2}, Lh50;->a(Li50;)Li50;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    .line 14
    :try_start_2
    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->b()V

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {v2}, Li50;->k()Li50$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li50$a;->b(Ljava/lang/String;)Li50$a;

    invoke-virtual {v0}, Li50$a;->a()Li50;

    move-result-object v2

    .line 16
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/firebase/installations/f;->o(Li50;)V

    .line 17
    iget-object v0, p0, Lcom/google/firebase/installations/f;->i:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, p1}, Lcom/google/firebase/installations/e;->a(Lcom/google/firebase/installations/f;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_3

    .line 18
    :try_start_3
    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->b()V

    .line 19
    :cond_3
    throw p1

    :catchall_1
    move-exception p1

    .line 20
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private c(Li50;)Li50;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/f;->b:Ll50;

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/installations/f;->d()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Li50;->c()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/google/firebase/installations/f;->g()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Li50;->e()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v0, v1, v2, v3, v4}, Ll50;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo50;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lo50;->b()Lo50$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iput-object v0, p0, Lcom/google/firebase/installations/f;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    invoke-virtual {p1}, Li50;->k()Li50$a;

    move-result-object p1

    sget-object v0, Lh50$a;->c:Lh50$a;

    invoke-virtual {p1, v0}, Li50$a;->g(Lh50$a;)Li50$a;

    invoke-virtual {p1}, Li50$a;->a()Li50;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0

    throw p1

    .line 13
    :cond_0
    new-instance p1, Lcom/google/firebase/installations/h;

    const-string v0, "Firebase Installations Service is unavailable. Please try again later."

    sget-object v1, Lcom/google/firebase/installations/h$a;->c:Lcom/google/firebase/installations/h$a;

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/installations/h;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/h$a;)V

    throw p1

    :cond_1
    const-string v0, "BAD CONFIG"

    .line 14
    invoke-virtual {p1}, Li50;->k()Li50$a;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v0}, Li50$a;->e(Ljava/lang/String;)Li50$a;

    sget-object v0, Lh50$a;->f:Lh50$a;

    .line 16
    invoke-virtual {p1, v0}, Li50$a;->g(Lh50$a;)Li50$a;

    .line 17
    invoke-virtual {p1}, Li50$a;->a()Li50;

    move-result-object p1

    return-object p1

    .line 18
    :cond_2
    invoke-virtual {v0}, Lo50;->c()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v0}, Lo50;->d()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/firebase/installations/f;->d:Lcom/google/firebase/installations/o;

    .line 20
    invoke-virtual {v0}, Lcom/google/firebase/installations/o;->b()J

    move-result-wide v4

    .line 21
    invoke-virtual {p1}, Li50;->k()Li50$a;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v1}, Li50$a;->b(Ljava/lang/String;)Li50$a;

    .line 23
    invoke-virtual {p1, v2, v3}, Li50$a;->c(J)Li50$a;

    .line 24
    invoke-virtual {p1, v4, v5}, Li50$a;->h(J)Li50$a;

    .line 25
    invoke-virtual {p1}, Li50$a;->a()Li50;

    move-result-object p1

    return-object p1
.end method

.method public static f()Lcom/google/firebase/installations/f;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/firebase/c;->h()Lcom/google/firebase/c;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "Null is not a valid value of FirebaseApp."

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/n;->b(ZLjava/lang/Object;)V

    .line 3
    const-class v1, Lcom/google/firebase/installations/g;

    invoke-virtual {v0, v1}, Lcom/google/firebase/c;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/installations/f;

    return-object v0
.end method

.method static h(Lcom/google/firebase/installations/f;Z)V
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/google/firebase/installations/f;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/f;->a:Lcom/google/firebase/c;

    .line 4
    invoke-virtual {v1}, Lcom/google/firebase/c;->g()Landroid/content/Context;

    move-result-object v1

    const-string v2, "generatefid.lock"

    invoke-static {v1, v2}, Lcom/google/firebase/installations/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/b;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 5
    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/installations/f;->c:Lh50;

    .line 6
    invoke-virtual {v2}, Lh50;->b()Li50;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v1, :cond_0

    .line 7
    :try_start_2
    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->b()V

    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 8
    :try_start_3
    invoke-virtual {v2}, Li50;->h()Z

    move-result v1

    if-nez v1, :cond_4

    .line 9
    invoke-virtual {v2}, Li50;->f()Lh50$a;

    move-result-object v1

    sget-object v3, Lh50$a;->d:Lh50$a;

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/google/firebase/installations/f;->d:Lcom/google/firebase/installations/o;

    invoke-virtual {p1, v2}, Lcom/google/firebase/installations/o;->d(Li50;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 11
    :cond_3
    invoke-direct {p0, v2}, Lcom/google/firebase/installations/f;->c(Li50;)Li50;

    move-result-object p1

    goto :goto_2

    .line 12
    :cond_4
    :goto_1
    invoke-direct {p0, v2}, Lcom/google/firebase/installations/f;->m(Li50;)Li50;

    move-result-object p1
    :try_end_3
    .catch Lcom/google/firebase/installations/h; {:try_start_3 .. :try_end_3} :catch_0

    .line 13
    :goto_2
    monitor-enter v0

    .line 14
    :try_start_4
    iget-object v1, p0, Lcom/google/firebase/installations/f;->a:Lcom/google/firebase/c;

    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/c;->g()Landroid/content/Context;

    move-result-object v1

    const-string v3, "generatefid.lock"

    invoke-static {v1, v3}, Lcom/google/firebase/installations/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/b;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 16
    :try_start_5
    iget-object v3, p0, Lcom/google/firebase/installations/f;->c:Lh50;

    invoke-virtual {v3, p1}, Lh50;->a(Li50;)Li50;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_5

    .line 17
    :try_start_6
    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->b()V

    .line 18
    :cond_5
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 19
    monitor-enter p0

    .line 20
    :try_start_7
    iget-object v0, p0, Lcom/google/firebase/installations/f;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    invoke-virtual {v2}, Li50;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Li50;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 22
    iget-object v0, p0, Lcom/google/firebase/installations/f;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le50;

    .line 23
    invoke-virtual {p1}, Li50;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le50;->a(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 24
    :cond_6
    monitor-exit p0

    .line 25
    invoke-virtual {p1}, Li50;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 26
    invoke-virtual {p1}, Li50;->c()Ljava/lang/String;

    move-result-object v0

    .line 27
    monitor-enter p0

    .line 28
    :try_start_8
    iput-object v0, p0, Lcom/google/firebase/installations/f;->j:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 29
    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 30
    :cond_7
    :goto_4
    invoke-virtual {p1}, Li50;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 31
    new-instance p1, Lcom/google/firebase/installations/h;

    sget-object v0, Lcom/google/firebase/installations/h$a;->b:Lcom/google/firebase/installations/h$a;

    invoke-direct {p1, v0}, Lcom/google/firebase/installations/h;-><init>(Lcom/google/firebase/installations/h$a;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/installations/f;->n(Ljava/lang/Exception;)V

    goto :goto_5

    .line 32
    :cond_8
    invoke-virtual {p1}, Li50;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 33
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/installations/f;->n(Ljava/lang/Exception;)V

    goto :goto_5

    .line 34
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/f;->o(Li50;)V

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 35
    monitor-exit p0

    throw p1

    :catchall_2
    move-exception p0

    if-eqz v1, :cond_a

    .line 36
    :try_start_9
    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->b()V

    .line 37
    :cond_a
    throw p0

    :catchall_3
    move-exception p0

    .line 38
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p0

    :catch_0
    move-exception p1

    .line 39
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/f;->n(Ljava/lang/Exception;)V

    :cond_b
    :goto_5
    return-void

    :catchall_4
    move-exception p0

    if-eqz v1, :cond_c

    .line 40
    :try_start_a
    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->b()V

    .line 41
    :cond_c
    throw p0

    :catchall_5
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method static synthetic i(Lcom/google/firebase/installations/f;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/f;->b(Z)V

    return-void
.end method

.method static synthetic j(Lcom/google/firebase/installations/f;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/f;->b(Z)V

    return-void
.end method

.method private k()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/installations/f;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/installations/f;->g()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/n;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/installations/f;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/n;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/google/firebase/installations/f;->e()Ljava/lang/String;

    move-result-object v0

    .line 5
    sget v3, Lcom/google/firebase/installations/o;->e:I

    const-string v3, ":"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->b(ZLjava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/installations/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/installations/o;->e(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/n;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method private l(Li50;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/f;->a:Lcom/google/firebase/c;

    invoke-virtual {v0}, Lcom/google/firebase/c;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHIME_ANDROID_SDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/installations/f;->a:Lcom/google/firebase/c;

    invoke-virtual {v0}, Lcom/google/firebase/c;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Li50;->f()Lh50$a;

    move-result-object p1

    sget-object v0, Lh50$a;->b:Lh50$a;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/installations/f;->f:Lcom/google/firebase/installations/m;

    invoke-virtual {p1}, Lcom/google/firebase/installations/m;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_3
    iget-object p1, p0, Lcom/google/firebase/installations/f;->e:Lg50;

    invoke-virtual {p1}, Lg50;->a()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    iget-object p1, p0, Lcom/google/firebase/installations/f;->f:Lcom/google/firebase/installations/m;

    invoke-virtual {p1}, Lcom/google/firebase/installations/m;->a()Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method private m(Li50;)Li50;
    .locals 8

    .line 1
    invoke-virtual {p1}, Li50;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Li50;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/firebase/installations/f;->e:Lg50;

    invoke-virtual {v0}, Lg50;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 4
    iget-object v1, p0, Lcom/google/firebase/installations/f;->b:Ll50;

    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/installations/f;->d()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Li50;->c()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/installations/f;->g()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/installations/f;->e()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual/range {v1 .. v6}, Ll50;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lm50;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lm50;->d()Lm50$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 11
    invoke-virtual {p1}, Li50;->k()Li50$a;

    move-result-object p1

    const-string v0, "BAD CONFIG"

    .line 12
    invoke-virtual {p1, v0}, Li50$a;->e(Ljava/lang/String;)Li50$a;

    sget-object v0, Lh50$a;->f:Lh50$a;

    .line 13
    invoke-virtual {p1, v0}, Li50$a;->g(Lh50$a;)Li50$a;

    .line 14
    invoke-virtual {p1}, Li50$a;->a()Li50;

    move-result-object p1

    return-object p1

    .line 15
    :cond_1
    new-instance p1, Lcom/google/firebase/installations/h;

    sget-object v0, Lcom/google/firebase/installations/h$a;->c:Lcom/google/firebase/installations/h$a;

    const-string v1, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {p1, v1, v0}, Lcom/google/firebase/installations/h;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/h$a;)V

    throw p1

    .line 16
    :cond_2
    invoke-virtual {v0}, Lm50;->b()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lm50;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/installations/f;->d:Lcom/google/firebase/installations/o;

    .line 18
    invoke-virtual {v3}, Lcom/google/firebase/installations/o;->b()J

    move-result-wide v3

    .line 19
    invoke-virtual {v0}, Lm50;->a()Lo50;

    move-result-object v5

    invoke-virtual {v5}, Lo50;->c()Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-virtual {v0}, Lm50;->a()Lo50;

    move-result-object v0

    invoke-virtual {v0}, Lo50;->d()J

    move-result-wide v6

    .line 21
    invoke-virtual {p1}, Li50;->k()Li50$a;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v1}, Li50$a;->d(Ljava/lang/String;)Li50$a;

    sget-object v0, Lh50$a;->e:Lh50$a;

    .line 23
    invoke-virtual {p1, v0}, Li50$a;->g(Lh50$a;)Li50$a;

    .line 24
    invoke-virtual {p1, v5}, Li50$a;->b(Ljava/lang/String;)Li50$a;

    .line 25
    invoke-virtual {p1, v2}, Li50$a;->f(Ljava/lang/String;)Li50$a;

    .line 26
    invoke-virtual {p1, v6, v7}, Li50$a;->c(J)Li50$a;

    .line 27
    invoke-virtual {p1, v3, v4}, Li50$a;->h(J)Li50$a;

    .line 28
    invoke-virtual {p1}, Li50$a;->a()Li50;

    move-result-object p1

    return-object p1
.end method

.method private n(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/f;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/f;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/installations/n;

    .line 5
    invoke-interface {v2, p1}, Lcom/google/firebase/installations/n;->a(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private o(Li50;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/f;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/f;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/installations/n;

    .line 5
    invoke-interface {v2, p1}, Lcom/google/firebase/installations/n;->b(Li50;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public a(Z)Lkw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lkw<",
            "Lcom/google/firebase/installations/l;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/installations/f;->k()V

    .line 2
    new-instance v0, Llw;

    invoke-direct {v0}, Llw;-><init>()V

    .line 3
    new-instance v1, Lcom/google/firebase/installations/j;

    iget-object v2, p0, Lcom/google/firebase/installations/f;->d:Lcom/google/firebase/installations/o;

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/installations/j;-><init>(Lcom/google/firebase/installations/o;Llw;)V

    .line 4
    iget-object v2, p0, Lcom/google/firebase/installations/f;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/installations/f;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v0}, Llw;->a()Lkw;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/google/firebase/installations/f;->h:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, p1}, Lcom/google/firebase/installations/d;->a(Lcom/google/firebase/installations/f;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/f;->a:Lcom/google/firebase/c;

    invoke-virtual {v0}, Lcom/google/firebase/c;->j()Lcom/google/firebase/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/i;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/f;->a:Lcom/google/firebase/c;

    invoke-virtual {v0}, Lcom/google/firebase/c;->j()Lcom/google/firebase/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/i;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/f;->a:Lcom/google/firebase/c;

    invoke-virtual {v0}, Lcom/google/firebase/c;->j()Lcom/google/firebase/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/i;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lkw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkw<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/installations/f;->k()V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/f;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Llw;

    invoke-direct {v0}, Llw;-><init>()V

    .line 6
    new-instance v1, Lcom/google/firebase/installations/k;

    invoke-direct {v1, v0}, Lcom/google/firebase/installations/k;-><init>(Llw;)V

    .line 7
    iget-object v2, p0, Lcom/google/firebase/installations/f;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 8
    :try_start_1
    iget-object v3, p0, Lcom/google/firebase/installations/f;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-virtual {v0}, Llw;->a()Lkw;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/firebase/installations/f;->h:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Lcom/google/firebase/installations/c;->a(Lcom/google/firebase/installations/f;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 12
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 13
    monitor-exit p0

    throw v0
.end method
