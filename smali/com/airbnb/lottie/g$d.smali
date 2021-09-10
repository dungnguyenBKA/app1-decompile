.class Lcom/airbnb/lottie/g$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/g;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/g$d;->a:Lcom/airbnb/lottie/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/airbnb/lottie/g$d;->a:Lcom/airbnb/lottie/g;

    invoke-static {p1}, Lcom/airbnb/lottie/g;->a(Lcom/airbnb/lottie/g;)Laa;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/airbnb/lottie/g$d;->a:Lcom/airbnb/lottie/g;

    invoke-static {p1}, Lcom/airbnb/lottie/g;->a(Lcom/airbnb/lottie/g;)Laa;

    move-result-object p1

    iget-object v0, p0, Lcom/airbnb/lottie/g$d;->a:Lcom/airbnb/lottie/g;

    invoke-static {v0}, Lcom/airbnb/lottie/g;->b(Lcom/airbnb/lottie/g;)Lac;

    move-result-object v0

    invoke-virtual {v0}, Lac;->h()F

    move-result v0

    invoke-virtual {p1, v0}, Laa;->s(F)V

    :cond_0
    return-void
.end method
