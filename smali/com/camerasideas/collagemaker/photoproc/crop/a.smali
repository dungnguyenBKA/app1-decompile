.class public final synthetic Lcom/camerasideas/collagemaker/photoproc/crop/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/a;->a:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/a;->a:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->F(Landroid/animation/ValueAnimator;)V

    return-void
.end method
