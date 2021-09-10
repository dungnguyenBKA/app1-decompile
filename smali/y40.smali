.class public Ly40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La50;


# static fields
.field private static final b:Ljava/util/concurrent/ThreadFactory;

.field public static final synthetic c:I


# instance fields
.field private a:Ld50;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld50<",
            "Lb50;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lx40;->a()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Ly40;->b:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lz40;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/google/firebase/components/w;

    invoke-static {p1}, Lv40;->a(Landroid/content/Context;)Ld50;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/firebase/components/w;-><init>(Ld50;)V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v7, Ly40;->b:Ljava/util/concurrent/ThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Ly40;->a:Ld50;

    return-void
.end method

.method public static b()Lcom/google/firebase/components/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/d<",
            "La50;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, La50;

    invoke-static {v0}, Lcom/google/firebase/components/d;->a(Ljava/lang/Class;)Lcom/google/firebase/components/d$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 2
    invoke-static {v1}, Lcom/google/firebase/components/q;->h(Ljava/lang/Class;)Lcom/google/firebase/components/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/d$b;->b(Lcom/google/firebase/components/q;)Lcom/google/firebase/components/d$b;

    const-class v1, Lz40;

    .line 3
    invoke-static {v1}, Lcom/google/firebase/components/q;->i(Ljava/lang/Class;)Lcom/google/firebase/components/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/d$b;->b(Lcom/google/firebase/components/q;)Lcom/google/firebase/components/d$b;

    invoke-static {}, Lw40;->b()Lcom/google/firebase/components/h;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/d$b;->e(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/d$b;

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/components/d$b;->c()Lcom/google/firebase/components/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/firebase/components/e;)La50;
    .locals 3

    .line 1
    new-instance v0, Ly40;

    const-class v1, Landroid/content/Context;

    invoke-interface {p0, v1}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lz40;

    invoke-interface {p0, v2}, Lcom/google/firebase/components/e;->c(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ly40;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)La50$a;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Ly40;->a:Ld50;

    .line 3
    invoke-interface {v2}, Ld50;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb50;

    invoke-virtual {v2, p1, v0, v1}, Lb50;->b(Ljava/lang/String;J)Z

    move-result p1

    .line 4
    iget-object v2, p0, Ly40;->a:Ld50;

    invoke-interface {v2}, Ld50;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb50;

    .line 5
    monitor-enter v2

    :try_start_0
    const-string v3, "fire-global"

    .line 6
    invoke-virtual {v2, v3, v0, v1}, Lb50;->b(Ljava/lang/String;J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 7
    sget-object p1, La50$a;->f:La50$a;

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    .line 8
    sget-object p1, La50$a;->e:La50$a;

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 9
    sget-object p1, La50$a;->d:La50$a;

    return-object p1

    .line 10
    :cond_2
    sget-object p1, La50$a;->c:La50$a;

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v2

    throw p1
.end method
