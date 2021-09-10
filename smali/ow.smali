.class final Low;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
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
        "Lbx<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ldw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldw<",
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
.method public constructor <init>(Ljava/util/concurrent/Executor;Ldw;Ldx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ldw<",
            "TTResult;TTContinuationResult;>;",
            "Ldx<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Low;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Low;->b:Ldw;

    .line 4
    iput-object p3, p0, Low;->c:Ldx;

    return-void
.end method

.method static synthetic b(Low;)Ldx;
    .locals 0

    .line 1
    iget-object p0, p0, Low;->c:Ldx;

    return-object p0
.end method

.method static synthetic c(Low;)Ldw;
    .locals 0

    .line 1
    iget-object p0, p0, Low;->b:Ldw;

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
    iget-object v0, p0, Low;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lqw;

    invoke-direct {v1, p0, p1}, Lqw;-><init>(Low;Lkw;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
