.class final Lzw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfw;
.implements Lgw;
.implements Lhw;
.implements Lbx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lfw;",
        "Lgw;",
        "Lhw<",
        "TTContinuationResult;>;",
        "Lbx<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljw<",
            "TTResult;TTContinuationResult;>;"
        }
    .end annotation
.end field

.field private final c:Ldx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldx<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljw;Ldx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljw<",
            "TTResult;TTContinuationResult;>;",
            "Ldx<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzw;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lzw;->b:Ljw;

    .line 4
    iput-object p3, p0, Lzw;->c:Ldx;

    return-void
.end method

.method static synthetic c(Lzw;)Ljw;
    .locals 0

    .line 1
    iget-object p0, p0, Lzw;->b:Ljw;

    return-object p0
.end method


# virtual methods
.method public final a(Lkw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkw<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzw;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lyw;

    invoke-direct {v1, p0, p1}, Lyw;-><init>(Lzw;Lkw;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lzw;->c:Ldx;

    invoke-virtual {v0}, Ldx;->r()Z

    return-void
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzw;->c:Ldx;

    invoke-virtual {v0, p1}, Ldx;->p(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzw;->c:Ldx;

    invoke-virtual {v0, p1}, Ldx;->q(Ljava/lang/Object;)V

    return-void
.end method
