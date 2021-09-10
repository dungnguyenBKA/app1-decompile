.class Lcom/camerasideas/baseutils/widget/b;
.super Lu3$c;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/camerasideas/baseutils/widget/DragFrameLayout;


# direct methods
.method constructor <init>(Lcom/camerasideas/baseutils/widget/DragFrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/baseutils/widget/b;->a:Lcom/camerasideas/baseutils/widget/DragFrameLayout;

    invoke-direct {p0}, Lu3$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    return p1
.end method

.method public b(Landroid/view/View;II)I
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "clampViewPositionVertical:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DragFrameLayout"

    invoke-static {p2, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/camerasideas/baseutils/widget/b;->a:Lcom/camerasideas/baseutils/widget/DragFrameLayout;

    .line 3
    sget p2, Lcom/camerasideas/baseutils/widget/DragFrameLayout;->c:I

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public c(I)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOrderedChildIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DragFrameLayout"

    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/camerasideas/baseutils/widget/b;->a:Lcom/camerasideas/baseutils/widget/DragFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method public e(Landroid/view/View;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/baseutils/widget/b;->a:Lcom/camerasideas/baseutils/widget/DragFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v0, p1

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verticalDragRange1="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DragFrameLayout"

    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/camerasideas/baseutils/widget/b;->a:Lcom/camerasideas/baseutils/widget/DragFrameLayout;

    .line 4
    sget v1, Lcom/camerasideas/baseutils/widget/DragFrameLayout;->c:I

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "verticalDragRange2=0"

    .line 6
    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lcom/camerasideas/baseutils/widget/b;->a:Lcom/camerasideas/baseutils/widget/DragFrameLayout;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public i(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/camerasideas/baseutils/widget/b;->a:Lcom/camerasideas/baseutils/widget/DragFrameLayout;

    .line 2
    sget p2, Lcom/camerasideas/baseutils/widget/DragFrameLayout;->c:I

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public k(Landroid/view/View;IIII)V
    .locals 0

    return-void
.end method

.method public l(Landroid/view/View;FF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/camerasideas/baseutils/widget/b;->a:Lcom/camerasideas/baseutils/widget/DragFrameLayout;

    .line 2
    sget p2, Lcom/camerasideas/baseutils/widget/DragFrameLayout;->c:I

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public m(Landroid/view/View;I)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/camerasideas/baseutils/widget/b;->a:Lcom/camerasideas/baseutils/widget/DragFrameLayout;

    .line 2
    sget p2, Lcom/camerasideas/baseutils/widget/DragFrameLayout;->c:I

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method
