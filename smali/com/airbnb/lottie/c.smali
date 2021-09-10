.class Lcom/airbnb/lottie/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
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
.field final synthetic b:I

.field final synthetic c:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    iput p2, p0, Lcom/airbnb/lottie/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0}, Lcom/airbnb/lottie/LottieAnimationView;->m(Lcom/airbnb/lottie/LottieAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/airbnb/lottie/c;->b:I

    invoke-static {v0, v1}, Lcom/airbnb/lottie/f;->j(Landroid/content/Context;I)Lcom/airbnb/lottie/m;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/airbnb/lottie/c;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/f;->k(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/m;

    move-result-object v0

    :goto_0
    return-object v0
.end method
