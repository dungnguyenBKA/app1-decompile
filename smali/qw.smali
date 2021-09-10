.class final Lqw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lkw;

.field private final synthetic c:Low;


# direct methods
.method constructor <init>(Low;Lkw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqw;->c:Low;

    iput-object p2, p0, Lqw;->b:Lkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lqw;->b:Lkw;

    invoke-virtual {v0}, Lkw;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lqw;->c:Low;

    invoke-static {v0}, Low;->b(Low;)Ldx;

    move-result-object v0

    invoke-virtual {v0}, Ldx;->r()Z

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lqw;->c:Low;

    invoke-static {v0}, Low;->c(Low;)Ldw;

    move-result-object v0

    iget-object v1, p0, Lqw;->b:Lkw;

    invoke-interface {v0, v1}, Ldw;->then(Lkw;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Liw; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    iget-object v1, p0, Lqw;->c:Low;

    invoke-static {v1}, Low;->b(Low;)Ldx;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldx;->q(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lqw;->c:Low;

    invoke-static {v1}, Low;->b(Low;)Ldx;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldx;->p(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lqw;->c:Low;

    invoke-static {v1}, Low;->b(Low;)Ldx;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Ldx;->p(Ljava/lang/Exception;)V

    return-void

    .line 8
    :cond_1
    iget-object v1, p0, Lqw;->c:Low;

    invoke-static {v1}, Low;->b(Low;)Ldx;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldx;->p(Ljava/lang/Exception;)V

    return-void
.end method
