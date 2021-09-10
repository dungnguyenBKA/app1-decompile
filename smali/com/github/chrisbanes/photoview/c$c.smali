.class Lcom/github/chrisbanes/photoview/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/chrisbanes/photoview/c;-><init>(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/chrisbanes/photoview/c;


# direct methods
.method constructor <init>(Lcom/github/chrisbanes/photoview/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/c$c;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/c$c;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-virtual {v1}, Lcom/github/chrisbanes/photoview/c;->D()F

    move-result v1

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 4
    iget-object v3, p0, Lcom/github/chrisbanes/photoview/c$c;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-virtual {v3}, Lcom/github/chrisbanes/photoview/c;->B()F

    move-result v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    .line 5
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/c$c;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-virtual {v1}, Lcom/github/chrisbanes/photoview/c;->B()F

    move-result v3

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/github/chrisbanes/photoview/c;->I(FFFZ)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v3, p0, Lcom/github/chrisbanes/photoview/c$c;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-virtual {v3}, Lcom/github/chrisbanes/photoview/c;->B()F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/github/chrisbanes/photoview/c$c;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-virtual {v3}, Lcom/github/chrisbanes/photoview/c;->A()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/c$c;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-virtual {v1}, Lcom/github/chrisbanes/photoview/c;->A()F

    move-result v3

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/github/chrisbanes/photoview/c;->I(FFFZ)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/c$c;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-virtual {v1}, Lcom/github/chrisbanes/photoview/c;->C()F

    move-result v3

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/github/chrisbanes/photoview/c;->I(FFFZ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c$c;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/c;->f(Lcom/github/chrisbanes/photoview/c;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c$c;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/c;->f(Lcom/github/chrisbanes/photoview/c;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/c$c;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v1}, Lcom/github/chrisbanes/photoview/c;->l(Lcom/github/chrisbanes/photoview/c;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c$c;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/c;->u()Landroid/graphics/RectF;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 5
    iget-object v2, p0, Lcom/github/chrisbanes/photoview/c$c;->a:Lcom/github/chrisbanes/photoview/c;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 9
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 10
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/c$c;->a:Lcom/github/chrisbanes/photoview/c;

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/c$c;->a:Lcom/github/chrisbanes/photoview/c;

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
