.class Lcom/camerasideas/collagemaker/activity/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/i;->a:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/i;->a:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/i;->a:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    iget-object v0, v0, Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;->c:Lcom/camerasideas/collagemaker/activity/widget/DampLayout;

    float-to-int p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->scrollTo(II)V

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/i;->a:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;->c:Lcom/camerasideas/collagemaker/activity/widget/DampLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p1

    const/16 v0, 0xc8

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/i;->a:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;->b(Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;)Landroid/view/View;

    move-result-object p1

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/i;->a:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;->c:Lcom/camerasideas/collagemaker/activity/widget/DampLayout;

    invoke-virtual {p1, v1, v0}, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->scrollTo(II)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/i;->a:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;->c:Lcom/camerasideas/collagemaker/activity/widget/DampLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p1

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/i;->a:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;->b(Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;)Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/i;->a:Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;

    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/widget/DampLayout$b;->c:Lcom/camerasideas/collagemaker/activity/widget/DampLayout;

    invoke-virtual {p1, v1, v0}, Lcom/camerasideas/collagemaker/activity/widget/DampLayout;->scrollTo(II)V

    :cond_1
    return-void
.end method
