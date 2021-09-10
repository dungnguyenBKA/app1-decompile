.class Lcom/airbnb/lottie/f$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/f;->b(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/o;
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
.field final synthetic b:Lcom/airbnb/lottie/e;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/f$f;->b:Lcom/airbnb/lottie/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/airbnb/lottie/m;

    iget-object v1, p0, Lcom/airbnb/lottie/f$f;->b:Lcom/airbnb/lottie/e;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/m;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
