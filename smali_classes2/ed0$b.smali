.class Led0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/StarCheckView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Led0;->g(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroidx/appcompat/widget/StarCheckView;

.field final synthetic c:Led0;


# direct methods
.method constructor <init>(Led0;ZLandroidx/appcompat/widget/StarCheckView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Led0$b;->c:Led0;

    iput-boolean p2, p0, Led0$b;->a:Z

    iput-object p3, p0, Led0$b;->b:Landroidx/appcompat/widget/StarCheckView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Led0$b;->c:Led0;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean p1, p0, Led0$b;->a:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Led0$b;->c:Led0;

    invoke-static {p1}, Led0;->b(Led0;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Led0$b;->c:Led0;

    invoke-static {p1}, Led0;->c(Led0;)V

    .line 5
    iget-object p1, p0, Led0$b;->c:Led0;

    iget-object v0, p0, Led0$b;->b:Landroidx/appcompat/widget/StarCheckView;

    const/4 v1, 0x5

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {p1, v0}, Led0;->e(Led0;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 6
    iget-object p1, p0, Led0$b;->c:Led0;

    invoke-static {p1}, Led0;->d(Led0;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7
    iget-object p1, p0, Led0$b;->c:Led0;

    invoke-static {p1}, Led0;->d(Led0;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v0, Led0$b$a;

    invoke-direct {v0, p0}, Led0$b$a;-><init>(Led0$b;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    iget-object p1, p0, Led0$b;->c:Led0;

    invoke-static {p1}, Led0;->d(Led0;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x41a00000    # 20.0f
        -0x3e600000    # -20.0f
        0x41a00000    # 20.0f
        -0x3e600000    # -20.0f
        0x0
    .end array-data
.end method
