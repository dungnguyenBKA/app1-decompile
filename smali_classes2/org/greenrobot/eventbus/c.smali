.class public Lorg/greenrobot/eventbus/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/eventbus/c$b;
    }
.end annotation


# static fields
.field private static final o:Lorg/greenrobot/eventbus/d;

.field private static final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/greenrobot/eventbus/n;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/greenrobot/eventbus/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lorg/greenrobot/eventbus/f;

.field private final f:Lorg/greenrobot/eventbus/b;

.field private final g:Lorg/greenrobot/eventbus/a;

.field private final h:Lorg/greenrobot/eventbus/m;

.field private final i:Ljava/util/concurrent/ExecutorService;

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private final m:Z

.field private final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/greenrobot/eventbus/d;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/d;-><init>()V

    sput-object v0, Lorg/greenrobot/eventbus/c;->o:Lorg/greenrobot/eventbus/d;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/greenrobot/eventbus/c;->p:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lorg/greenrobot/eventbus/c;->o:Lorg/greenrobot/eventbus/d;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Lorg/greenrobot/eventbus/c$a;

    invoke-direct {v1, p0}, Lorg/greenrobot/eventbus/c$a;-><init>(Lorg/greenrobot/eventbus/c;)V

    iput-object v1, p0, Lorg/greenrobot/eventbus/c;->d:Ljava/lang/ThreadLocal;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/greenrobot/eventbus/c;->a:Ljava/util/Map;

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/greenrobot/eventbus/c;->b:Ljava/util/Map;

    .line 6
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/greenrobot/eventbus/c;->c:Ljava/util/Map;

    .line 7
    new-instance v1, Lorg/greenrobot/eventbus/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v1, p0, v2, v3}, Lorg/greenrobot/eventbus/f;-><init>(Lorg/greenrobot/eventbus/c;Landroid/os/Looper;I)V

    iput-object v1, p0, Lorg/greenrobot/eventbus/c;->e:Lorg/greenrobot/eventbus/f;

    .line 8
    new-instance v1, Lorg/greenrobot/eventbus/b;

    invoke-direct {v1, p0}, Lorg/greenrobot/eventbus/b;-><init>(Lorg/greenrobot/eventbus/c;)V

    iput-object v1, p0, Lorg/greenrobot/eventbus/c;->f:Lorg/greenrobot/eventbus/b;

    .line 9
    new-instance v1, Lorg/greenrobot/eventbus/a;

    invoke-direct {v1, p0}, Lorg/greenrobot/eventbus/a;-><init>(Lorg/greenrobot/eventbus/c;)V

    iput-object v1, p0, Lorg/greenrobot/eventbus/c;->g:Lorg/greenrobot/eventbus/a;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Lorg/greenrobot/eventbus/m;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lorg/greenrobot/eventbus/m;-><init>(Ljava/util/List;ZZ)V

    iput-object v1, p0, Lorg/greenrobot/eventbus/c;->h:Lorg/greenrobot/eventbus/m;

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lorg/greenrobot/eventbus/c;->j:Z

    .line 13
    iput-boolean v1, p0, Lorg/greenrobot/eventbus/c;->k:Z

    .line 14
    iput-boolean v1, p0, Lorg/greenrobot/eventbus/c;->l:Z

    .line 15
    iput-boolean v1, p0, Lorg/greenrobot/eventbus/c;->m:Z

    .line 16
    iput-boolean v1, p0, Lorg/greenrobot/eventbus/c;->n:Z

    .line 17
    iget-object v0, v0, Lorg/greenrobot/eventbus/d;->a:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lorg/greenrobot/eventbus/c;->i:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static a(Ljava/util/List;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/greenrobot/eventbus/c;->a(Ljava/util/List;[Ljava/lang/Class;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Lorg/greenrobot/eventbus/n;Ljava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lorg/greenrobot/eventbus/c;->j(Lorg/greenrobot/eventbus/n;Ljava/lang/Object;Z)V

    :cond_1
    return-void
.end method

.method private h(Ljava/lang/Object;Lorg/greenrobot/eventbus/c$b;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lorg/greenrobot/eventbus/c;->n:Z

    if-eqz v1, :cond_2

    .line 3
    sget-object v1, Lorg/greenrobot/eventbus/c;->p:Ljava/util/Map;

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/greenrobot/eventbus/c;->a(Ljava/util/List;[Ljava/lang/Class;)V

    .line 8
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    .line 9
    :cond_0
    sget-object v3, Lorg/greenrobot/eventbus/c;->p:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 12
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 13
    invoke-direct {p0, p1, p2, v5}, Lorg/greenrobot/eventbus/c;->i(Ljava/lang/Object;Lorg/greenrobot/eventbus/c$b;Ljava/lang/Class;)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 15
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lorg/greenrobot/eventbus/c;->i(Ljava/lang/Object;Lorg/greenrobot/eventbus/c$b;Ljava/lang/Class;)Z

    move-result v4

    :cond_3
    if-nez v4, :cond_5

    .line 16
    iget-boolean p2, p0, Lorg/greenrobot/eventbus/c;->k:Z

    if-eqz p2, :cond_4

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No subscribers registered for event "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    :cond_4
    iget-boolean p2, p0, Lorg/greenrobot/eventbus/c;->m:Z

    if-eqz p2, :cond_5

    const-class p2, Lorg/greenrobot/eventbus/g;

    if-eq v0, p2, :cond_5

    const-class p2, Lorg/greenrobot/eventbus/k;

    if-eq v0, p2, :cond_5

    .line 19
    new-instance p2, Lorg/greenrobot/eventbus/g;

    invoke-direct {p2, p0, p1}, Lorg/greenrobot/eventbus/g;-><init>(Lorg/greenrobot/eventbus/c;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lorg/greenrobot/eventbus/c;->g(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private i(Ljava/lang/Object;Lorg/greenrobot/eventbus/c$b;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/greenrobot/eventbus/c$b;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/c;->a:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/n;

    .line 6
    iput-object p1, p2, Lorg/greenrobot/eventbus/c$b;->d:Ljava/lang/Object;

    .line 7
    :try_start_1
    iget-boolean v1, p2, Lorg/greenrobot/eventbus/c$b;->c:Z

    invoke-direct {p0, v0, p1, v1}, Lorg/greenrobot/eventbus/c;->j(Lorg/greenrobot/eventbus/n;Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    throw p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :catchall_1
    move-exception p1

    .line 9
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private j(Lorg/greenrobot/eventbus/n;Ljava/lang/Object;Z)V
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/greenrobot/eventbus/n;->b:Lorg/greenrobot/eventbus/l;

    iget-object v0, v0, Lorg/greenrobot/eventbus/l;->b:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p3, 0x3

    if-ne v0, p3, :cond_0

    .line 2
    iget-object p3, p0, Lorg/greenrobot/eventbus/c;->g:Lorg/greenrobot/eventbus/a;

    invoke-virtual {p3, p1, p2}, Lorg/greenrobot/eventbus/a;->a(Lorg/greenrobot/eventbus/n;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Unknown thread mode: "

    invoke-static {p3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p1, p1, Lorg/greenrobot/eventbus/n;->b:Lorg/greenrobot/eventbus/l;

    iget-object p1, p1, Lorg/greenrobot/eventbus/l;->b:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-eqz p3, :cond_2

    .line 4
    iget-object p3, p0, Lorg/greenrobot/eventbus/c;->f:Lorg/greenrobot/eventbus/b;

    invoke-virtual {p3, p1, p2}, Lorg/greenrobot/eventbus/b;->a(Lorg/greenrobot/eventbus/n;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/c;->e(Lorg/greenrobot/eventbus/n;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/c;->e(Lorg/greenrobot/eventbus/n;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_4
    iget-object p3, p0, Lorg/greenrobot/eventbus/c;->e:Lorg/greenrobot/eventbus/f;

    invoke-virtual {p3, p1, p2}, Lorg/greenrobot/eventbus/f;->a(Lorg/greenrobot/eventbus/n;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/c;->e(Lorg/greenrobot/eventbus/n;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private l(Ljava/lang/Object;Lorg/greenrobot/eventbus/l;)V
    .locals 7

    .line 1
    iget-object v0, p2, Lorg/greenrobot/eventbus/l;->c:Ljava/lang/Class;

    .line 2
    new-instance v1, Lorg/greenrobot/eventbus/n;

    invoke-direct {v1, p1, p2}, Lorg/greenrobot/eventbus/n;-><init>(Ljava/lang/Object;Lorg/greenrobot/eventbus/l;)V

    .line 3
    iget-object v2, p0, Lorg/greenrobot/eventbus/c;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 5
    iget-object v3, p0, Lorg/greenrobot/eventbus/c;->a:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 7
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-gt v4, v3, :cond_3

    if-eq v4, v3, :cond_2

    .line 8
    iget v5, p2, Lorg/greenrobot/eventbus/l;->d:I

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/greenrobot/eventbus/n;

    iget-object v6, v6, Lorg/greenrobot/eventbus/n;->b:Lorg/greenrobot/eventbus/l;

    iget v6, v6, Lorg/greenrobot/eventbus/l;->d:I

    if-le v5, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9
    :cond_2
    :goto_2
    invoke-virtual {v2, v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 10
    :cond_3
    iget-object v2, p0, Lorg/greenrobot/eventbus/c;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_4

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v3, p0, Lorg/greenrobot/eventbus/c;->b:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-boolean p1, p2, Lorg/greenrobot/eventbus/l;->e:Z

    if-eqz p1, :cond_7

    .line 15
    iget-boolean p1, p0, Lorg/greenrobot/eventbus/c;->n:Z

    if-eqz p1, :cond_6

    .line 16
    iget-object p1, p0, Lorg/greenrobot/eventbus/c;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 20
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 21
    invoke-direct {p0, v1, p2}, Lorg/greenrobot/eventbus/c;->b(Lorg/greenrobot/eventbus/n;Ljava/lang/Object;)V

    goto :goto_3

    .line 22
    :cond_6
    iget-object p1, p0, Lorg/greenrobot/eventbus/c;->c:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 23
    invoke-direct {p0, v1, p1}, Lorg/greenrobot/eventbus/c;->b(Lorg/greenrobot/eventbus/n;Ljava/lang/Object;)V

    :cond_7
    return-void

    .line 24
    :cond_8
    new-instance p2, Lorg/greenrobot/eventbus/e;

    const-string v1, "Subscriber "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already registered to event "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/greenrobot/eventbus/e;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method c()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/c;->i:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method d(Lorg/greenrobot/eventbus/h;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/greenrobot/eventbus/h;->a:Ljava/lang/Object;

    .line 2
    iget-object v1, p1, Lorg/greenrobot/eventbus/h;->b:Lorg/greenrobot/eventbus/n;

    .line 3
    invoke-static {p1}, Lorg/greenrobot/eventbus/h;->b(Lorg/greenrobot/eventbus/h;)V

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, v1, v0}, Lorg/greenrobot/eventbus/c;->e(Lorg/greenrobot/eventbus/n;Ljava/lang/Object;)V

    return-void
.end method

.method e(Lorg/greenrobot/eventbus/n;Ljava/lang/Object;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p1, Lorg/greenrobot/eventbus/n;->b:Lorg/greenrobot/eventbus/l;

    iget-object v0, v0, Lorg/greenrobot/eventbus/l;->a:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lorg/greenrobot/eventbus/n;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected exception"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 4
    instance-of v1, p2, Lorg/greenrobot/eventbus/k;

    const-string v2, "EventBus"

    if-eqz v1, :cond_0

    .line 5
    iget-boolean v1, p0, Lorg/greenrobot/eventbus/c;->j:Z

    if-eqz v1, :cond_2

    const-string v1, "SubscriberExceptionEvent subscriber "

    .line 6
    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lorg/greenrobot/eventbus/n;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " threw an exception"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    check-cast p2, Lorg/greenrobot/eventbus/k;

    const-string p1, "Initial event "

    .line 8
    invoke-static {p1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p2, Lorg/greenrobot/eventbus/k;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " caused exception in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lorg/greenrobot/eventbus/k;->c:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lorg/greenrobot/eventbus/k;->a:Ljava/lang/Throwable;

    invoke-static {v2, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 9
    :cond_0
    iget-boolean v1, p0, Lorg/greenrobot/eventbus/c;->j:Z

    if-eqz v1, :cond_1

    const-string v1, "Could not dispatch event: "

    .line 10
    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to subscribing class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/greenrobot/eventbus/n;->a:Ljava/lang/Object;

    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :cond_1
    iget-boolean v1, p0, Lorg/greenrobot/eventbus/c;->l:Z

    if-eqz v1, :cond_2

    .line 14
    new-instance v1, Lorg/greenrobot/eventbus/k;

    iget-object p1, p1, Lorg/greenrobot/eventbus/n;->a:Ljava/lang/Object;

    invoke-direct {v1, p0, v0, p2, p1}, Lorg/greenrobot/eventbus/k;-><init>(Lorg/greenrobot/eventbus/c;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p0, v1}, Lorg/greenrobot/eventbus/c;->g(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized f(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/greenrobot/eventbus/c;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/c$b;

    .line 2
    iget-object v1, v0, Lorg/greenrobot/eventbus/c$b;->a:Ljava/util/List;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-boolean p1, v0, Lorg/greenrobot/eventbus/c$b;->b:Z

    if-nez p1, :cond_2

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lorg/greenrobot/eventbus/c$b;->c:Z

    .line 6
    iput-boolean v3, v0, Lorg/greenrobot/eventbus/c$b;->b:Z

    .line 7
    :goto_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/greenrobot/eventbus/c;->h(Ljava/lang/Object;Lorg/greenrobot/eventbus/c$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 9
    :cond_1
    iput-boolean v4, v0, Lorg/greenrobot/eventbus/c$b;->b:Z

    .line 10
    iput-boolean v4, v0, Lorg/greenrobot/eventbus/c$b;->c:Z

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 11
    iput-boolean v4, v0, Lorg/greenrobot/eventbus/c$b;->b:Z

    .line 12
    iput-boolean v4, v0, Lorg/greenrobot/eventbus/c$b;->c:Z

    throw p1

    :cond_2
    :goto_2
    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/greenrobot/eventbus/c;->h:Lorg/greenrobot/eventbus/m;

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/m;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/eventbus/l;

    .line 5
    invoke-direct {p0, p1, v1}, Lorg/greenrobot/eventbus/c;->l(Ljava/lang/Object;Lorg/greenrobot/eventbus/l;)V

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventBus[indexCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventInheritance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/greenrobot/eventbus/c;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
