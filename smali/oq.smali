.class public final synthetic Loq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loq;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Loq;->b:Landroid/content/Context;

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/firebase/remoteconfig/f;->e()Lcom/google/firebase/remoteconfig/f;

    move-result-object v1

    .line 2
    new-instance v2, Lnq;

    invoke-direct {v2, v1, v0}, Lnq;-><init>(Lcom/google/firebase/remoteconfig/f;Landroid/content/Context;)V

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/f;->c()Lkw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lkw;->d(Lhw;)Lkw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
