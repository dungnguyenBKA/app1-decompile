.class Lh10$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh10;->b(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lkw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/concurrent/Callable;

.field final synthetic c:Llw;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Llw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh10$a;->b:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lh10$a;->c:Llw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lh10$a;->b:Ljava/util/concurrent/Callable;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    new-instance v1, Lh10$a$a;

    invoke-direct {v1, p0}, Lh10$a$a;-><init>(Lh10$a;)V

    .line 3
    invoke-virtual {v0, v1}, Lkw;->f(Ldw;)Lkw;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lh10$a;->c:Llw;

    invoke-virtual {v1, v0}, Llw;->b(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
