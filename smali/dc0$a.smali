.class Ldc0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc0;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ldc0;


# direct methods
.method constructor <init>(Ldc0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldc0$a;->b:Ldc0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Ldc0$a;->b:Ldc0;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ldc0$a;->b:Ldc0;

    invoke-static {v0}, Ldc0;->a(Ldc0;)Ldc0$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ldc0$a;->b:Ldc0;

    invoke-static {v0}, Ldc0;->a(Ldc0;)Ldc0$b;

    move-result-object v0

    invoke-interface {v0}, Ldc0$b;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Ldc0$a;->b:Ldc0;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lec0;

    invoke-direct {v2, v0}, Lec0;-><init>(Ldc0;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
