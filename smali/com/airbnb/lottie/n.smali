.class Lcom/airbnb/lottie/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/airbnb/lottie/o;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/n;->b:Lcom/airbnb/lottie/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->b:Lcom/airbnb/lottie/o;

    invoke-static {v0}, Lcom/airbnb/lottie/o;->a(Lcom/airbnb/lottie/o;)Lcom/airbnb/lottie/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/n;->b:Lcom/airbnb/lottie/o;

    invoke-static {v0}, Lcom/airbnb/lottie/o;->a(Lcom/airbnb/lottie/o;)Lcom/airbnb/lottie/m;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/m;->b()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/airbnb/lottie/n;->b:Lcom/airbnb/lottie/o;

    invoke-virtual {v0}, Lcom/airbnb/lottie/m;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/airbnb/lottie/o;->b(Lcom/airbnb/lottie/o;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/n;->b:Lcom/airbnb/lottie/o;

    invoke-virtual {v0}, Lcom/airbnb/lottie/m;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/airbnb/lottie/o;->c(Lcom/airbnb/lottie/o;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
