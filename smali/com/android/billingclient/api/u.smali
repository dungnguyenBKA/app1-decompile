.class final Lcom/android/billingclient/api/u;
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

.field private final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/android/billingclient/api/p;

.field private final synthetic e:Lcom/android/billingclient/api/d;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/u;->e:Lcom/android/billingclient/api/d;

    iput-object p2, p0, Lcom/android/billingclient/api/u;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/billingclient/api/u;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/android/billingclient/api/u;->d:Lcom/android/billingclient/api/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/u;->e:Lcom/android/billingclient/api/d;

    iget-object v1, p0, Lcom/android/billingclient/api/u;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/billingclient/api/u;->c:Ljava/util/List;

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/billingclient/api/d;->o(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/android/billingclient/api/n$a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/u;->e:Lcom/android/billingclient/api/d;

    new-instance v2, Lcom/android/billingclient/api/t;

    invoke-direct {v2, p0, v0}, Lcom/android/billingclient/api/t;-><init>(Lcom/android/billingclient/api/u;Lcom/android/billingclient/api/n$a;)V

    invoke-static {v1, v2}, Lcom/android/billingclient/api/d;->t(Lcom/android/billingclient/api/d;Ljava/lang/Runnable;)V

    return-object v3
.end method
