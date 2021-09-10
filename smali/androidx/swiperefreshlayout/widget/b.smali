.class Landroidx/swiperefreshlayout/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Landroidx/swiperefreshlayout/widget/d$a;

.field final synthetic b:Landroidx/swiperefreshlayout/widget/d;


# direct methods
.method constructor <init>(Landroidx/swiperefreshlayout/widget/d;Landroidx/swiperefreshlayout/widget/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/b;->b:Landroidx/swiperefreshlayout/widget/d;

    iput-object p2, p0, Landroidx/swiperefreshlayout/widget/b;->a:Landroidx/swiperefreshlayout/widget/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b;->b:Landroidx/swiperefreshlayout/widget/d;

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/b;->a:Landroidx/swiperefreshlayout/widget/d$a;

    invoke-virtual {v0, p1, v1}, Landroidx/swiperefreshlayout/widget/d;->h(FLandroidx/swiperefreshlayout/widget/d$a;)V

    .line 3
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b;->b:Landroidx/swiperefreshlayout/widget/d;

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/b;->a:Landroidx/swiperefreshlayout/widget/d$a;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroidx/swiperefreshlayout/widget/d;->a(FLandroidx/swiperefreshlayout/widget/d$a;Z)V

    .line 4
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/b;->b:Landroidx/swiperefreshlayout/widget/d;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
