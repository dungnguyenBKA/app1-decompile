.class final Ltw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbx<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/lang/Object;

.field private c:Lfw;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lfw;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltw;->b:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ltw;->a:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p2, p0, Ltw;->c:Lfw;

    return-void
.end method

.method static synthetic b(Ltw;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ltw;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Ltw;)Lfw;
    .locals 0

    .line 1
    iget-object p0, p0, Ltw;->c:Lfw;

    return-object p0
.end method


# virtual methods
.method public final a(Lkw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkw<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lkw;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Ltw;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Ltw;->c:Lfw;

    if-nez v0, :cond_0

    .line 4
    monitor-exit p1

    return-void

    .line 5
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Ltw;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lsw;

    invoke-direct {v0, p0}, Lsw;-><init>(Ltw;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
