.class public abstract Lkw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Executor;Lfw;)Lkw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lfw;",
            ")",
            "Lkw<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addOnCanceledListener is not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract b(Lgw;)Lkw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgw;",
            ")",
            "Lkw<",
            "TTResult;>;"
        }
    .end annotation
.end method

.method public abstract c(Ljava/util/concurrent/Executor;Lgw;)Lkw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lgw;",
            ")",
            "Lkw<",
            "TTResult;>;"
        }
    .end annotation
.end method

.method public abstract d(Lhw;)Lkw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhw<",
            "-TTResult;>;)",
            "Lkw<",
            "TTResult;>;"
        }
    .end annotation
.end method

.method public abstract e(Ljava/util/concurrent/Executor;Lhw;)Lkw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lhw<",
            "-TTResult;>;)",
            "Lkw<",
            "TTResult;>;"
        }
    .end annotation
.end method

.method public f(Ldw;)Lkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ldw<",
            "TTResult;TTContinuationResult;>;)",
            "Lkw<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "continueWith is not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Ljava/util/concurrent/Executor;Ldw;)Lkw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ldw<",
            "TTResult;TTContinuationResult;>;)",
            "Lkw<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "continueWith is not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Ljava/util/concurrent/Executor;Ldw;)Lkw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ldw<",
            "TTResult;",
            "Lkw<",
            "TTContinuationResult;>;>;)",
            "Lkw<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "continueWithTask is not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract i()Ljava/lang/Exception;
.end method

.method public abstract j()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation
.end method

.method public abstract k()Z
.end method

.method public abstract l()Z
.end method

.method public abstract m()Z
.end method

.method public n(Ljw;)Lkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljw<",
            "TTResult;TTContinuationResult;>;)",
            "Lkw<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "onSuccessTask is not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o(Ljava/util/concurrent/Executor;Ljw;)Lkw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljw<",
            "TTResult;TTContinuationResult;>;)",
            "Lkw<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "onSuccessTask is not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
