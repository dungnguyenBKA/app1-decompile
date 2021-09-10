.class public final synthetic Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

.field public final synthetic c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;


# direct methods
.method public synthetic constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/g0;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/g0;->c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/g0;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/g0;->c:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;

    .line 1
    iget-object v2, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;->H()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->a(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 2
    iget-object v2, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v2, v1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->G(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;)V

    .line 3
    iget-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mTextSizeBar:Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;

    iget-object v0, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->mEditText:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    int-to-float v0, v0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->d(I)V

    return-void
.end method
