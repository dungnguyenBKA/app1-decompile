.class final Lcom/android/billingclient/api/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/android/billingclient/api/l;

.field private final synthetic d:Lcom/android/billingclient/api/d;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;Ljava/lang/String;Lcom/android/billingclient/api/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/p0;->d:Lcom/android/billingclient/api/d;

    iput-object p2, p0, Lcom/android/billingclient/api/p0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/billingclient/api/p0;->c:Lcom/android/billingclient/api/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/p0;->d:Lcom/android/billingclient/api/d;

    iget-object v1, p0, Lcom/android/billingclient/api/p0;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/d;->x(Lcom/android/billingclient/api/d;Ljava/lang/String;)Lcom/android/billingclient/api/d$b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/billingclient/api/p0;->d:Lcom/android/billingclient/api/d;

    new-instance v2, Lcom/android/billingclient/api/o0;

    invoke-direct {v2, p0, v0}, Lcom/android/billingclient/api/o0;-><init>(Lcom/android/billingclient/api/p0;Lcom/android/billingclient/api/d$b;)V

    invoke-static {v1, v2}, Lcom/android/billingclient/api/d;->t(Lcom/android/billingclient/api/d;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method
