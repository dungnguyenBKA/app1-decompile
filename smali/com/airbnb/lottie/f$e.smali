.class Lcom/airbnb/lottie/f$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/f;->i(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/airbnb/lottie/m<",
        "Lcom/airbnb/lottie/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/ref/WeakReference;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/f$e;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/airbnb/lottie/f$e;->c:Landroid/content/Context;

    iput p3, p0, Lcom/airbnb/lottie/f$e;->d:I

    iput-object p4, p0, Lcom/airbnb/lottie/f$e;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/f$e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/f$e;->c:Landroid/content/Context;

    .line 3
    :goto_0
    iget v1, p0, Lcom/airbnb/lottie/f$e;->d:I

    iget-object v2, p0, Lcom/airbnb/lottie/f$e;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/f;->k(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/m;

    move-result-object v0

    return-object v0
.end method
