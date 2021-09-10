.class public Lcom/google/android/gms/common/api/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/b$b;,
        Lcom/google/android/gms/common/api/internal/b$a;
    }
.end annotation


# static fields
.field public static final k:Lcom/google/android/gms/common/api/Status;

.field private static final l:Lcom/google/android/gms/common/api/Status;

.field private static final m:Ljava/lang/Object;

.field private static n:Lcom/google/android/gms/common/api/internal/b;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# instance fields
.field private b:J

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/common/c;

.field private final e:Lcom/google/android/gms/common/internal/g;

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/j<",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/b$a<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/j<",
            "*>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/j<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final j:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/b;->k:Lcom/google/android/gms/common/api/Status;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/b;->l:Lcom/google/android/gms/common/api/Status;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/b;->m:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/c;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/b;->b:J

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x5

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v0, v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->g:Ljava/util/Map;

    .line 6
    new-instance v0, Lz;

    .line 7
    invoke-direct {v0, v2}, Lz;-><init>(I)V

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->h:Ljava/util/Set;

    .line 9
    new-instance v0, Lz;

    .line 10
    invoke-direct {v0, v2}, Lz;-><init>(I)V

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->i:Ljava/util/Set;

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->c:Landroid/content/Context;

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/base/zap;

    invoke-direct {p1, p2, p0}, Lcom/google/android/gms/internal/base/zap;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->j:Landroid/os/Handler;

    .line 14
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/b;->d:Lcom/google/android/gms/common/c;

    .line 15
    new-instance p2, Lcom/google/android/gms/common/internal/g;

    invoke-direct {p2, p3}, Lcom/google/android/gms/common/internal/g;-><init>(Lcom/google/android/gms/common/d;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/b;->e:Lcom/google/android/gms/common/internal/g;

    const/4 p2, 0x6

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/b;->j:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/internal/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/b;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/b;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/b;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/b;->n:Lcom/google/android/gms/common/api/internal/b;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/google/android/gms/common/api/internal/b;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/common/c;->g()Lcom/google/android/gms/common/c;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lcom/google/android/gms/common/api/internal/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/c;)V

    sput-object v2, Lcom/google/android/gms/common/api/internal/b;->n:Lcom/google/android/gms/common/api/internal/b;

    .line 8
    :cond_0
    sget-object p0, Lcom/google/android/gms/common/api/internal/b;->n:Lcom/google/android/gms/common/api/internal/b;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final e(Lcom/google/android/gms/common/api/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->g:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b$a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/b$a;-><init>(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/api/a;)V

    throw v1

    .line 4
    :cond_0
    throw v1
.end method

.method static synthetic f(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/b;->d:Lcom/google/android/gms/common/c;

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->d:Lcom/google/android/gms/common/c;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/c;->m(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->j:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->j:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-wide/32 v2, 0x493e0

    const-string v4, "GoogleApiManager"

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x1f

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown message id: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 3
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/b$b;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->g:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/b$b;->a(Lcom/google/android/gms/common/api/internal/b$b;)Lcom/google/android/gms/common/api/internal/j;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->g:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/b$b;->a(Lcom/google/android/gms/common/api/internal/b$b;)Lcom/google/android/gms/common/api/internal/j;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/b$a;->e(Lcom/google/android/gms/common/api/internal/b$a;Lcom/google/android/gms/common/api/internal/b$b;)V

    goto/16 :goto_1

    .line 6
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/b$b;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->g:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/b$b;->a(Lcom/google/android/gms/common/api/internal/b$b;)Lcom/google/android/gms/common/api/internal/j;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->g:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/b$b;->a(Lcom/google/android/gms/common/api/internal/b$b;)Lcom/google/android/gms/common/api/internal/j;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/b$a;->c(Lcom/google/android/gms/common/api/internal/b$a;Lcom/google/android/gms/common/api/internal/b$b;)V

    goto/16 :goto_1

    .line 9
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/e;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->g:Ljava/util/Map;

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 12
    throw v5

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->g:Ljava/util/Map;

    .line 14
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/b$a;

    .line 15
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/b$a;->g:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/b;->a(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/n;->c(Landroid/os/Handler;)V

    .line 16
    throw v5

    .line 17
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->g:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->g:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/b$a;

    .line 19
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/b$a;->g:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/b;->a(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/n;->c(Landroid/os/Handler;)V

    .line 20
    throw v5

    .line 21
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->g:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->g:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/b$a;->d()V

    goto/16 :goto_1

    .line 23
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->i:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->i:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto/16 :goto_1

    .line 25
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/j;

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/b$a;

    .line 27
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/b$a;->g:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->a(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->c(Landroid/os/Handler;)V

    .line 28
    sget-object v0, Lcom/google/android/gms/common/api/internal/b;->k:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/b$a;->h(Lcom/google/android/gms/common/api/Status;)V

    .line 29
    throw v5

    .line 30
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->g:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->g:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/b$a;->b()V

    goto/16 :goto_1

    .line 32
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/a;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/b;->e(Lcom/google/android/gms/common/api/a;)V

    throw v5

    .line 33
    :pswitch_8
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_8

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 35
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/a;->c(Landroid/app/Application;)V

    .line 36
    invoke-static {}, Lcom/google/android/gms/common/api/internal/a;->b()Lcom/google/android/gms/common/api/internal/a;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/common/api/internal/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/g;-><init>(Lcom/google/android/gms/common/api/internal/b;)V

    .line 37
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/a;->a(Lcom/google/android/gms/common/api/internal/a$a;)V

    .line 38
    invoke-static {}, Lcom/google/android/gms/common/api/internal/a;->b()Lcom/google/android/gms/common/api/internal/a;

    move-result-object p1

    .line 39
    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/internal/a;->d(Z)Z

    move-result p1

    if-nez p1, :cond_8

    .line 40
    iput-wide v2, p0, Lcom/google/android/gms/common/api/internal/b;->b:J

    goto/16 :goto_1

    .line 41
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 42
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/b$a;

    .line 43
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_3

    move-object v5, v3

    :cond_4
    if-eqz v5, :cond_5

    .line 44
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/b;->d:Lcom/google/android/gms/common/c;

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->o()I

    move-result v4

    .line 46
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {v4}, Lcom/google/android/gms/common/g;->getErrorString(I)Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->i0()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x45

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 49
    invoke-virtual {v5, v0}, Lcom/google/android/gms/common/api/internal/b$a;->h(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_1

    :cond_5
    const/16 p1, 0x4c

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Could not find API instance "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " while trying to fail enqueued calls."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 51
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/h;

    .line 52
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw v5

    .line 53
    :pswitch_b
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->g:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/b$a;

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/b$a;->f()V

    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/b$a;->a()V

    throw v5

    .line 56
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/k;

    .line 57
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    throw v5

    .line 59
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    const-wide/16 v2, 0x2710

    .line 60
    :cond_7
    iput-wide v2, p0, Lcom/google/android/gms/common/api/internal/b;->b:J

    .line 61
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->j:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->g:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/j;

    .line 63
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/b;->j:Landroid/os/Handler;

    .line 64
    invoke-virtual {v3, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/gms/common/api/internal/b;->b:J

    .line 65
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_8
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
