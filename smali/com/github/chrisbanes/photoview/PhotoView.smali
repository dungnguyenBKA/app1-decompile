.class public Lcom/github/chrisbanes/photoview/PhotoView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private b:Lcom/github/chrisbanes/photoview/c;

.field private c:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/github/chrisbanes/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Lcom/github/chrisbanes/photoview/c;

    invoke-direct {p1, p0}, Lcom/github/chrisbanes/photoview/c;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->b:Lcom/github/chrisbanes/photoview/c;

    .line 4
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Landroid/widget/ImageView$ScaleType;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/github/chrisbanes/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Landroid/widget/ImageView$ScaleType;

    :cond_0
    return-void
.end method


# virtual methods
.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->b:Lcom/github/chrisbanes/photoview/c;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/c;->x()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->b:Lcom/github/chrisbanes/photoview/c;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/c;->E()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/github/chrisbanes/photoview/PhotoView;->b:Lcom/github/chrisbanes/photoview/c;

    invoke-virtual {p2}, Lcom/github/chrisbanes/photoview/c;->K()V

    :cond_0
    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->b:Lcom/github/chrisbanes/photoview/c;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/c;->K()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->b:Lcom/github/chrisbanes/photoview/c;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/c;->K()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->b:Lcom/github/chrisbanes/photoview/c;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/c;->K()V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->b:Lcom/github/chrisbanes/photoview/c;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/c;->G(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->b:Lcom/github/chrisbanes/photoview/c;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/c;->H(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->b:Lcom/github/chrisbanes/photoview/c;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->c:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/c;->J(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method
