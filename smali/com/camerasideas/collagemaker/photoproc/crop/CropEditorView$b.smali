.class Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$b;->a:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$b;->a:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$b;->a:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->x(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$b;->a:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
