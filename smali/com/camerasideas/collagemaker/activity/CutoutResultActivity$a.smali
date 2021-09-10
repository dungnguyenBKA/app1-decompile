.class Lcom/camerasideas/collagemaker/activity/CutoutResultActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbk<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity$a;->a:Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lce;Ljava/lang/Object;Lnk;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lce;",
            "Ljava/lang/Object;",
            "Lnk<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;Lnk;Lcom/bumptech/glide/load/a;Z)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity$a;->a:Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;

    iget-object p2, p1, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mImageThumbnail:Landroid/widget/ImageView;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mPreViewProgressbar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Luq;->s(Landroid/view/View;I)V

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity$a;->a:Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;

    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mImagePreview:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, p3}, Luq;->s(Landroid/view/View;I)V

    .line 5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity$a;->a:Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;

    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mImageThumbnail:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity$a;->a:Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;

    const/high16 p4, 0x428c0000    # 70.0f

    invoke-static {p2, p4}, Landroidx/core/app/b;->v(Landroid/content/Context;F)I

    move-result p2

    .line 7
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    iget-object p4, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity$a;->a:Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;

    iget-object p4, p4, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mImageThumbnail:Landroid/widget/ImageView;

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity$a;->a:Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;

    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mImageThumbnail:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p4, 0x7f07006f

    invoke-static {p1, p4, p2, p2}, Lwq;->j(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity$a;->a:Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->t(Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 12
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity$a;->a:Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;

    iget-object p2, p2, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mImageThumbnail:Landroid/widget/ImageView;

    new-instance p4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p5, p0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity$a;->a:Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;

    iget-object p5, p5, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;->mImageThumbnail:Landroid/widget/ImageView;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-direct {p4, p5, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return p3
.end method
