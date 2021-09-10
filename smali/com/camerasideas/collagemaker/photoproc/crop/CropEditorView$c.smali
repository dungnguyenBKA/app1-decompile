.class Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$c;
.super Lcom/camerasideas/collagemaker/photoproc/crop/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->C(FFZ)V
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
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$c;->a:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/photoproc/crop/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$c;->a:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->v(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Landroid/graphics/RectF;Z)V

    return-void
.end method
